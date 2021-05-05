
# hex map -----------------------------------------------------------------

### making a hex map of temperature observations across CONUS
#### from waterdata.usgs.gov/visualizations/temperature-prediction/index.html#/monitoring

## plotting temperature observations at the national scale
## use hex grid to spatially bin observation data

# preliminaries ----------------------------------------------------------

## load libraries
library(rmapshaper);library(sf);library(maps)
library(viridis)
library(tidyverse);library(lubridate)

proj <- "+proj=aea +lat_1=29.5 +lat_2=45.5 +lat_0=37.5 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +datum=NAD83 +units=m +no_defs"

# prep data ---------------------------------------------------------------
## temperature observation data 

sites_sf <- read.csv("temperature_counts_us_2020.csv") %>%
  filter(!is.na(longitude)) %>%
  st_as_sf(coords = c("longitude", "latitude"), crs = 4326) %>% 
  st_transform(proj)

# make hex grid -----------------------------------------------------------

## spatially summarize state polygons to make map outline of usa
usa_sf <- maps::map('usa', fill = TRUE, plot = FALSE)%>%
  st_as_sf() %>%
  st_transform(proj)

## make hex tesselation of CONUS
columns <- 90
rows <- 90
site_grid <- usa_sf %>% 
  st_make_grid(n = c(columns,rows), what = "polygons", square = FALSE)%>%
  st_as_sf() %>%
  mutate(geometry = x) %>%
  mutate(hex = as.character(seq.int(nrow(.))))

## intersect the hex grid with observation data
site_hex <- site_grid %>%
  select(-x) %>% 
  st_intersection(sites_sf) %>% 
  st_drop_geometry() %>%
  group_by(hex) %>%
  summarize(n_obs_hex = sum(n_obs), 
          n_sites = length(unique(site_id)))

# join counts back with spatial grid
hex_map <- site_grid %>% left_join(site_hex, by = 'hex')

# plot map ----------------------------------------------------------

scale_breaks <- seq(0, 275000,  by = 25000)

hex_map %>%
  ungroup() %>%
  ggplot() +
  geom_sf(aes(fill = as.numeric(n_obs_hex)), 
          color = "black", 
          size = 0.2) +
  scale_fill_viridis_c(option = 'plasma', 
                       breaks = c(1,scale_breaks, 275000),
                       direction = 1, 
                       na.value = NA)+
  theme_void() +
  theme(legend.position = "bottom",
        plot.background = element_rect(fill = "black"), 
        legend.text = element_text(color = "white"), 
        legend.title = element_text(color = "white")) + 
  guides(fill = guide_legend(title = "Observations", 
                             title.position = "top",
                             barwidth = 10,
                             barhieght = 5, 
                             show.limits = TRUE, 
                             ticks = FALSE, 
                             direction = "horizontal"))

ggsave("temp_hex_map.svg", width = 32, height = 20)
ggsave("temp_hex_map.png", width = 32, height = 20)

