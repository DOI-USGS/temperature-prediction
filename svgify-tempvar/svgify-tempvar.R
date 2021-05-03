
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

scale_to_svg <- function(xy_df, svg_width, svg_height) {

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

  d <- split_df_by_NAs(dat, svg_width, svg_height)
  return(d)
}

# Break path into multiple paths to leave a break when there are NAs
# This assumes NAs in the `y` but not in the `x`
split_df_by_NAs <- function(df, svg_width, svg_height) {
  ## draw path if there is data
  dat <- df %>% filter(!is.na(y))

  if (nrow(dat) > 0){
    # Summarize the data.frame by grouping chunks of NAs
    data_summarized <- accelerometry::rle2(is.na(df$y), indices=TRUE)

    # Filter out the NA chunks from the summary and from the data
    data_summarized_noNA <- data_summarized[data_summarized[,'value'] == 0,]
    df_noNA <- df %>% filter(!is.na(y))

    # If there is only one row returned from `data_summarized_noNA` it will return NULL when using nrow
    if(!is.null(nrow(data_summarized_noNA))){

      # Now use the summary info to create a vector that says what group each row of the data frame is in
      data_groups <- unlist(lapply(1:nrow(data_summarized_noNA), function(grp) rep(grp, data_summarized_noNA[grp, "length"])))

      # Use this vector of groups to split the dataframe into a list of data frames broken up by NAs
      coords <- split(df_noNA, data_groups)

      # If there is only one point to draw a path, we want it to resemble
      # a point. To do that, add a small bit using "L" to make it look like a point.
      coords_fixed <- lapply(coords, apply_single_coord_fix, svg_height, svg_width)

      lapply(coords_fixed, build_path_from_coords) %>%
        str_c(collapse = ' ')
    } else {
      # If there are no NAs, or the NAs are all in sequence at the end or beginning of the string, filter them out
      dat %>%
        apply_single_coord_fix(svg_height, svg_width) %>%
        build_path_from_coords()
    }
  }
}

apply_single_coord_fix <- function(coords, svg_height, svg_width) {
  if(nrow(coords) == 1) {
    # Add a second coordinate slightly further away to
    # draw a path that looks like a single point
    coords_fix <- coords %>%
      mutate(x = x + svg_width*0.002, # 0.2% of the SVG width
             y = y + svg_height*0.002) # 0.2% of the SVG height
    coords <- bind_rows(coords, coords_fix)
  }
  return(coords)
}

build_path_from_coords <- function(coords) {
  # Build path
  first_pt_x <- head(coords$x, 1)
  first_pt_y <- head(coords$y, 1)
  d <- sprintf("M%s %s %s", first_pt_x, head(coords$y, 1),
               paste0("L", c(tail(coords$x, -1)), " ",
                      c(tail(coords$y, -1)), collapse = " "))
  return(d)
}

# run it ------------------------------------------------------------------

library(tidyverse);library(lubridate)
library(xml2)

obs <- read_csv("public/data/matrix_daily_2019_obs.csv") %>%
  mutate(jday = yday(date))%>%
  transform(date=as.Date(date))

svg_root <- init_svg(viewbox_dims = c(0, 0, svg_width=600, svg_height=600))

reaches <- unique(obs$seg_id_nat)

for(r in reaches) {
  reach_coords_svg <- obs %>%
    filter(seg_id_nat == r) %>%
    select(x = jday, y = mean_temp_c) %>%
    scale_to_svg(svg_width = 600, svg_height = 600)

  # Spark lines centered at GW location
  svg_root %>%
    xml_add_child("path",
                  class = sprintf('seg_%s', r),
                  # style = sprintf("stroke: black;fill: none"),
                  d = reach_coords_svg)

}

xml2::write_xml(svg_root, file = 'src/assets/tempvar.svg')
