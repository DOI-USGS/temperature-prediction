# Prebuild the matrix SVG for temp prediction viz for the daily observations in 2019.

# Source this file to build the SVG
# You will need to have the local file, `matrix_daily_2019_obs.csv` (Hayley sent to me)

library(readr)
library(dplyr)
library(xml2)

build_svg <- function(svg_out_fn, obs_fn, width = 700, height = 1000, local_testing = FALSE,
                      range_obs_days = c(1,365), range_obs_temp = c(0, 30), n_segs = 455) {

  ##### Prepare the data #####

  # From Hayley, matches hex map legend Colleen made
  color_palette <- c("#0d0887","#2f068f","#4c049a","#6101a4","#7c09a2","#96199a",
                     "#aa2692","#b93488","#c9477a","#d8596b","#e56e5d","#ed8053",
                     "#f59545","#fcad35","#f9c830","#f5e12a","#f0f821")

  stream_data <- read_csv(obs_fn) %>%
    # Don't build paths for any of the segment days with 0 observations
    filter(obs_count > 0) %>%
    # Group temperatures into color categories to make paths (include 0 in the first group & 30 in the last)
    mutate(color_cat = as.character(cut(
      temp_c,
      breaks = seq(range_obs_temp[1], range_obs_temp[2], length.out = length(color_palette)+1),
      labels = color_palette, include.lowest = TRUE))) %>%
    mutate(day_i = as.numeric(format(date, "%j")))

  # Define some basic configs using the data and SVG size
  max_x <- diff(range_obs_days)
  max_y <- n_segs
  rect_width <- round(width/(max_x),1)
  rect_height <- round(height/(max_y+1),4) # `y` precision needs to be higher or there are weird offsets with the horizontal grid

  monthly_cfg <- stream_data %>%
    mutate(month_i = as.numeric(format(date, "%m")),
           month_nm = format(date, "%B")) %>%
    group_by(month_i) %>%
    summarize(month_start = min(day_i),
              month_end = max(day_i),
              month_nm = unique(month_nm))

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
      arrange(day_i, rank)

    add_path_per_color(g_color_blocks, col, data_col$day_i, data_col$rank, rect_width, rect_height, height)
  }

  add_rectangles_for_mouseover(svg_root, monthly_cfg, height, rect_width)

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
  hv_path_str <- paste(sprintf("M%s,%s h%s v%s h%s", (x-1)*rh, -(y-0)*rv, rh, -rv, -rh), collapse = " ") # start at 0
  d <- sprintf('M%s,%s %sZ', 0, 0, hv_path_str)

  xml_add_child(svg, "path", d = d, id = sprintf('matrix-%s-path', color), fill = color, stroke = "none",
                # Draw from bottom left corner up
                transform = sprintf("translate(0,%s)", full_height))
}

add_rectangles_for_mouseover <- function(svg, monthly_cfg, full_height, rh) {

  for(m in monthly_cfg$month_i) {
    m_nm <- monthly_cfg$month_nm[m]
    m_start <- monthly_cfg$month_start[m] - 1 # Start at 0
    m_width <- monthly_cfg$month_end[m] - m_start
    xml_add_child(svg, "rect", x = m_start*rh, width = m_width*rh,
                  y = 0, height = full_height,
                  class = sprintf("c2p3.matrixTemporalRect.time%s", m_nm),
                  data = m_nm)
  }

}

##### Actually use the fxns to create the SVG #####

# This line builds a local test version
# build_svg("svgify-matrix/test2.svg", "svgify-matrix/matrix_daily_2019_obs.csv", 700, 1000, local_testing = TRUE)

# This line builds a version ready to inject into the full viz
build_svg("svgify-matrix/prebuilt_c2p3_matrix.svg", "svgify-matrix/matrix_daily_2019_obs.csv", 700, 1000, local_testing = FALSE)
