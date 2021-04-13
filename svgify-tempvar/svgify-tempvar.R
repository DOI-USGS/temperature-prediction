
# prelims -----------------------------------------------------------------

## this generates a line chart of temperature observations across river reaches in the DRB during 2019
## the end product is an svg with classes assigned to each river reach based on an ID
## classes are to be used for mouseover effect on monitoring section


# svg utils ---------------------------------------------------------------


init_svg <- function(viewbox_dims) {
  # create the main "parent" svg node. This is the top-level part of the svg
  svg_root <- xml_new_root('svg', viewBox = paste(viewbox_dims, collapse=" "), 
                           preserveAspectRatio="xMidYMid meet", 
                           xmlns="http://www.w3.org/2000/svg", 
                           `xmlns:xlink`="http://www.w3.org/1999/xlink", 
                           version="1.1")
  return(svg_root)
}

scale_to_svg <- function(xy_df, connect = FALSE, svg_width, svg_height) {
  
  x <- xy_df$x
  y <- xy_df$y
  
  ## keep constant dimensions for each line
  xmin <- 1
  xmax <- 365
  ymin <- 0
  ymax <- 30
  
  x_extent <- c(xmin, xmax) 
  y_extent <- c(ymin, ymax) 
  
  # Convert data to SVG horizontal and vertical positions
  # Remember that SVG vertical position has 0 on top
  x_extent_pixels <- x_extent - xmin
  y_extent_pixels <- y_extent - ymin
  x_pixels <- x - xmin #
  y_pixels <- y - ymin 
  
  # translates data to dimensions of svg
  dat <- data.frame(
    x = round(approx(x_extent_pixels, c(0, svg_width), x_pixels)$y, 6),
    y = round(approx(y_extent_pixels, c(svg_height, 0), y_pixels)$y, 6)
  )
  
  d<-build_path(dat$x, dat$y, connect)
  return(d)
}
build_path <- function(x, y, connect) {
  # Build path
  first_pt_x <- head(x, 1)
  first_pt_y <- head(y, 1)
  
  all_other_pts_x <- tail(x, -1)
  all_other_pts_y <- tail(y, -1)
  path_ending <- ""
  if(connect) {
    # Connect path to start to make polygon
    all_other_pts_x <- c(all_other_pts_x, first_pt_x)
    all_other_pts_y <- c(all_other_pts_y, first_pt_y)
    path_ending <- " Z"
  }
  
  d <- sprintf("M%s %s %s%s", first_pt_x, first_pt_y,
               paste0("L", all_other_pts_x, " ", 
                      all_other_pts_y, collapse = " "),
               path_ending)
  return(d)
}

# run it ------------------------------------------------------------------

library(tidyverse);library(lubridate)
library(xml2)

obs <- read.csv("public/data/matrix_daily_2019_obs.csv") %>%
  mutate(jday = yday(date))%>%
  transform(date=as.Date(date))%>%
  filter(total_count > 50)

svg_root <- init_svg(viewbox_dims = c(0, 0, svg_width=600, svg_height=600))

reaches <- unique(obs$seg_id_nat)

for(r in reaches) {
  reach_coords_svg <- obs %>%
    filter(seg_id_nat == r) %>%
    select(x = jday, y = temp_c) %>%
    scale_to_svg(connect = FALSE, svg_width = 600, svg_height = 600)
  
  # Spark lines centered at GW location
  svg_root %>%
    xml_add_child("path",
                  class = sprintf('seg_%s', r),
                  style = sprintf("stroke: black"),
                  d = reach_coords_svg)
  
}

xml2::write_xml(svg_root, file = 'tempvar.svg')
