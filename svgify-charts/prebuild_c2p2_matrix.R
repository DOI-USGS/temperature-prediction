# Prebuild the matrix SVG for temp prediction viz

# Source this file to build the SVG
# You will need to have the local file, `matrix_annual_obs.csv` (Hayley sent to me)

library(readr)
library(dplyr)
library(xml2)

build_svg <- function(svg_out_fn, obs_fn, width = 700, height = 1000, local_testing = FALSE,
                      range_obs_days = c(1,366), range_obs_years = c(1980, 2020), n_segs = 455) {

  ##### Prepare the data #####

  # From Hayley, matches hex map legend Colleen made
  color_palette <- c("#0d0887","#2f068f","#4c049a","#6101a4","#7c09a2","#96199a",
                     "#aa2692","#b93488","#c9477a","#d8596b","#e56e5d","#ed8053",
                     "#f59545","#fcad35","#f9c830","#f5e12a","#f0f821")

  stream_data <- read_csv(obs_fn) %>%
    # Don't build paths for any of the 0 category data
    filter(obs_count > 0) %>%
    # Group obs counts into color categories to make paths (include 1 in the first group & 366 in the last)
    mutate(color_cat = as.character(cut(
      obs_count,
      breaks = seq(range_obs_days[1], range_obs_days[2], length.out = length(color_palette)+1),
      labels = color_palette, include.lowest = TRUE))) %>%
    mutate(year_i = year - range_obs_years[1])

  # Define some basic configs using the data and SVG size
  max_x <- diff(range_obs_years)
  max_y <- n_segs
  rect_width <- round(width/(max_x+1),1)
  rect_height <- round(height/(max_y+1),4) # `y` precision needs to be higher or there are weird offsets with the horizontal grid

  ##### Setup the SVG #####

  svg_root <- init_svg(width, height)

  if(local_testing) {
    # If this is a test, add black rectangle to back
    xml_add_child(svg_root, "path", d = sprintf('M0,0 v%s h%s v%sZ', height, width, -height),
                  id = 'tmp-bkgrd', stroke = "black", fill = "black")
  }

  ##### Add the SVG nodes #####

  # Add different path for each "color" to a single group
  g_color_blocks <- xml_add_child(svg_root, "g", id = 'matrix-colored-boxes')

  for(col in color_palette) {

    data_col <- stream_data %>%
      filter(color_cat == col) %>%
      arrange(year_i, rank)

    add_path_per_color(g_color_blocks, col, data_col$year_i, data_col$rank, rect_width, rect_height, height)
  }

  # Add grid of black lines
  add_grids(svg_root, width, height, rect_width, rect_height)

  ##### Write out final SVG to file #####

  xml2::write_xml(svg_root, file = svg_out_fn)

}

init_svg <- function(width, height) {
  # create the main "parent" svg node. This is the top-level part of the svg
  svg_root <- xml_new_root('svg', viewbox = sprintf("0, 0, %s, %s", width, height),
                           preserveAspectRatio="xMidYMid meet", id = "matrix-svg",
                           xmlns="http://www.w3.org/2000/svg", `xmlns:xlink`="http://www.w3.org/1999/xlink")
  return(svg_root)
}

# x,y are the current boxes locations
# rh, rv are constant for all based on dims and are the horizontal and vertical dims for each box
add_path_per_color <- function(svg, color, x, y, rh, rv, full_height) {

  # Build path string
  hv_path_str <- paste(sprintf("M%s,%s h%s v%s h%s Z", x*rh, -(y-0)*rv, rh, -rv, -rh), collapse = " ") # v=vertical, h=horizontal
  d <- sprintf('M%s,%s %sZ', 0, 0, hv_path_str)

  xml_add_child(svg, "path", d = d, id = sprintf('matrix-%s-path', color), fill = color,
                # Draw from bottom left corner up
                transform = sprintf("translate(0,%s)", full_height))
}

add_grids <- function(svg, full_width, full_height, rh, rv) {

  horiz_lines <- seq(0, full_height, by = rv)
  vert_lines <- seq(0, full_width, by = rh)

  # Build path string
  horiz_d <- paste(sprintf('M0,%s H%s', horiz_lines, full_width), collapse = " ")
  vert_d <- paste(sprintf('M%s,0 V%s', vert_lines, full_height), collapse = " ")

  xml_add_child(svg, "path", d = horiz_d, id = 'matrix-grid-horizontal', stroke = "#1a1b1c", `stroke-width` = 0.5)
  xml_add_child(svg, "path", d = vert_d, id = 'matrix-grid-vertical', stroke = "#1a1b1c", `stroke-width` = 0.5)

}

##### Actually use the fxns to create the SVG #####

# This line builds a local test version
# build_svg("svgify-charts/test.svg", "svgify-charts/matrix_annual_obs.csv", 800, 1500, local_testing = TRUE)

# This line builds a version ready to inject into the full viz
build_svg("src/assets/prebuilt_c2p2_matrix.svg", "svgify-charts/matrix_annual_obs.csv", 700, 1000, local_testing = FALSE)
