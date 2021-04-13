# Build the 2019 average temperature timeseries line chart as SVG

library(dplyr)
library(xml2)

##### Prepare data from this RDS file shared in Sharepoint
# https://doimspp.sharepoint.com/:u:/r/sites/gs-wma-iidd-makerspace/Shared%20Documents/Project%20-%20Temp%20Prediction/data/obs_temp_drb.rds?csf=1&web=1&e=OCcKgv

dat19 <- readRDS('obs_temp_drb.rds') %>%
  filter(lubridate::year(date) %in% 2019) %>%
  mutate(doy = lubridate::yday(date)) %>%
  group_by(seg_id_nat) %>%
  filter(n() > 180)

av19 <- dat19 %>% group_by(doy) %>% summarize(temp_c = mean(temp_c)) # Calc avg among all segments

##### SVG Linechart configs #####

# If this is a test, it will add style so you can see, if not, no style will be added since this will be changed later anyways
is_test <- FALSE

# Special seg ids to call out:
special_seg_ids <- tibble(
  seg_id_nat = c("1697", "2338", "seg_avg"),
  svg_id = c("cold-reservoir-seg", "hot-urban-seg", "avg-seg"),
  color = c("#1e90ff", "#ff7f50", "#000000")
)

# Overall SVG
svg_width <- 500
svg_height <- 500
id_overall_svg <- "svg-linechart"
file_out_path <- "temp_timeseries.svg"

# Axes
x_chart_start_pct <- 0.10 # Leftmost chart position as percent from the left
x_chart_end_pct <- 0.90 # Rightmost chart position as percent from the left
y_chart_start_pct <- 0.90 # Bottom of the chart as percent from the top
y_chart_end_pct <- 0.10 # Top of the chart as percent from the top

x_tick_vals <- c(1, 100, 200, 300)
y_tick_vals <- c(0, 10, 20, 30)
tick_length_svg <- 7

# Lines
x_val_range <- c(1,366) # These ranges need to be the same across all segments (making it possible to use a leap year)
y_val_range <- c(0, 30) # These ranges need to be the same across all segments (deg C)

##### SVG build util fxns #####

convert_vals_to_svg_coords <- function(vals, vals_range, svg_start, svg_end) {
  approx(vals_range, c(svg_start, svg_end), vals)$y
}

build_line_from_coords <- function(x, y) {
  # Build path
  first_pt_x <- head(x, 1)
  first_pt_y <- head(y, 1)

  d <- sprintf("M%s %s %s", first_pt_x, head(y, 1),
               paste0("L", c(tail(x, -1)), " ",
                      c(tail(y, -1)), collapse = " "))
  return(d)
}

##### Create the main "parent" svg node #####

# This is the top-level part of the svg
svg_root <- xml_new_root(
  'svg', viewBox = sprintf("0 0 %s %s", svg_width, svg_height),
  preserveAspectRatio="xMidYMid meet", id = id_overall_svg,
  xmlns="http://www.w3.org/2000/svg", `xmlns:xlink`="http://www.w3.org/1999/xlink",
  version="1.1")

##### Add temperature lines #####

# Add regular background lines
bkgrd_lines_grp <- xml_add_child(svg_root, 'g', id = "bkgrd-lines-grp")
seg_ids <- dat19 %>% filter(!seg_id_nat %in% special_seg_ids$seg_id_nat) %>% pull(seg_id_nat) %>% unique()
for(s in seg_ids) {

  # Isolate data for just this segment
  current_seg_dat <- dat19 %>% filter(seg_id_nat %in% s)

  # Resize x and y values into SVG pixels
  x_vals_svg <- convert_vals_to_svg_coords(current_seg_dat$doy, x_val_range, svg_width*x_chart_start_pct, svg_width*x_chart_end_pct)
  y_vals_svg <- convert_vals_to_svg_coords(current_seg_dat$temp_c, y_val_range, svg_height*y_chart_start_pct, svg_height*y_chart_end_pct)

  # Add line to SVG
  bkgrd_lines_grp %>%
    xml_add_child('path', d = build_line_from_coords(x_vals_svg, y_vals_svg),
                  id=sprintf('bkgrd-line-%s', s),
                  style=ifelse(is_test, "stroke:black;fill:transparent;stroke-opacity:0.2", ""))

}

# Now add special lines
special_lines_grp <- xml_add_child(svg_root, 'g', id = "special-lines-grp")
for(s in special_seg_ids$seg_id_nat) {

  # Isolate data for just this segment
  current_seg_cfg <- special_seg_ids %>% filter(seg_id_nat %in% s)
  if(s == "seg_avg") {
    current_seg_dat <- av19
  } else {
    current_seg_dat <- dat19 %>% filter(seg_id_nat %in% s)
  }

  # Resize x and y values into SVG pixels
  x_vals_svg <- convert_vals_to_svg_coords(current_seg_dat$doy, x_val_range, svg_width*x_chart_start_pct, svg_width*x_chart_end_pct)
  y_vals_svg <- convert_vals_to_svg_coords(current_seg_dat$temp_c, y_val_range, svg_height*y_chart_start_pct, svg_height*y_chart_end_pct)

  # Add line to SVG
  special_lines_grp %>%
    xml_add_child('path', d = build_line_from_coords(x_vals_svg, y_vals_svg),
                  id=current_seg_cfg$svg_id,
                  style=ifelse(is_test, sprintf("stroke:%s;fill:transparent", current_seg_cfg$color), ""))

}

##### Add x and y axes #####

x_axis_pos_svg <- svg_height*y_chart_start_pct # Vertical position at which to place the x axis
y_axis_pos_svg <- svg_width*x_chart_start_pct # Horizontal position at which to place the y axis

# Resize x and y values into SVG pixels
xaxis_extent_svg <- convert_vals_to_svg_coords(x_val_range, x_val_range, y_axis_pos_svg, svg_width*x_chart_end_pct)
xaxis_tick_vals_svg <- convert_vals_to_svg_coords(x_tick_vals, x_val_range, y_axis_pos_svg, svg_width*x_chart_end_pct)
yaxis_extent_svg <- convert_vals_to_svg_coords(y_val_range, y_val_range, x_axis_pos_svg, svg_height*y_chart_end_pct)
yaxis_tick_vals_svg <- convert_vals_to_svg_coords(y_tick_vals, y_val_range, x_axis_pos_svg, svg_height*y_chart_end_pct)

svg_root %>%
  xml_add_child('g', id = "axes") %>%
  # Add axes lines
  xml_add_child('path', d = build_line_from_coords(xaxis_extent_svg, rep(x_axis_pos_svg, 2)), id="x-axis", style=ifelse(is_test, "stroke:black;", "")) %>%
  xml_add_sibling('path', d = build_line_from_coords(rep(y_axis_pos_svg, 2), yaxis_extent_svg), id="y-axis", style=ifelse(is_test, "stroke:black;", "")) %>%
  # Add tick marks
  xml_add_sibling("path", id = "x-axis-ticks", d = paste(sprintf("M%s,%s v%s", xaxis_tick_vals_svg, x_axis_pos_svg, tick_length_svg), collapse=" "), style=ifelse(is_test, "stroke:black;", "")) %>%
  xml_add_sibling("path", id = "y-axis-ticks", d = paste(sprintf("M%s,%s h-%s", y_axis_pos_svg, yaxis_tick_vals_svg, tick_length_svg), collapse=" "), style=ifelse(is_test, "stroke:black;", ""))


##### Write out the SVG as a file in the end #####

xml2::write_xml(svg_root, file = file_out_path)
