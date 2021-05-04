
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

proj<-"+proj=lcc +lat_1=30.7 +lat_2=29.3 +lat_0=28.5 +lon_0=-91.33333333333333 +x_0=999999.9999898402 +y_0=0 +ellps=GRS80 +datum=NAD83 +to_meter=0.3048006096012192 +no_defs"

# prep data ---------------------------------------------------------------

## temperature observation data 
sites_sf <- read.csv("temperature_counts_us_2020.csv") %>%
  filter(!is.na(longitude))%>%
  st_as_sf(coords = c("longitude", "latitude"), crs = 4326) %>% 
  st_transform(proj)
str(counts)

# make hex grid -----------------------------------------------------------

## spatially summarize state polygons to make map outline of usa
usa_sf <- maps::map('usa', fill=TRUE)%>%
  st_as_sf() %>%
  st_transform(proj)

## make hex tesselation of CONUS
columns <- 80
rows <- 80
site_grid <- usa_sf %>% 
  st_make_grid(n=c(columns,rows), what="polygons", square = FALSE)%>%
  st_as_sf()%>%
  mutate(geometry=x) %>%
  mutate(hex  =  as.character(seq.int(nrow(.))))
glimpse(site_grid)

## intersect the hex grid with observation data
site_hex <- site_grid %>%
  select(-x) %>% 
  st_intersection(sites_sf) %>% 
  st_drop_geometry() %>%
  group_by(hex) %>%
  summarize(n_obs_hex = sum(n_obs), 
          n_sites = length(unique(site_id)))
glimpse(site_hex)

# join counts back with spatial grid
sitey <- site_grid %>% left_join(site_hex, by='hex')

# plot map ----------------------------------------------------------

scale_breaks <- c(1,25000, 50000, 75000, 100000,  125000, 150000, 175000, 200000)

sitey%>%
  ungroup()%>%
  ggplot()+
  geom_sf(aes(fill=as.numeric(n_obs_hex)), color="black", size=.2) +
  scale_fill_viridis_c(option='plasma', 
                     breaks=scale_breaks,labels=scale_breaks,
                     direction=1, na.value=NA)+
  theme_void()+
  theme(legend.position="bottom",
        plot.background = element_rect(fill="black"), 
        legend.text = element_text(color="white"), 
        legend.title=element_text(color="white"))+ 
  guides(fill=guide_legend(title="Observations", 
                             title.position="top",
                             barwidth = 10,
                             barhieght= 5, 
                             show.limits = TRUE, 
                             ticks=FALSE, 
                             direction = "horizontal"))

ggsave("temp_hex_map.svg", width=32, height = 20)
ggsave("temp_hex_map.png", width=32, height = 20)

