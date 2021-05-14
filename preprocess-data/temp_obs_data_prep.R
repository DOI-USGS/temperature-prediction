# data prep for DRB viz
# create a obs-site data frame
library(dplyr)
dat <- readRDS('input_data/all_drb_temp_obs.rds')

sites <- group_by(dat, site_id, source) %>%
  summarize(n_obs = n()) %>%
  group_by(site_id) %>%
  mutate(n_sources = length(unique(source))) %>%
  summarize(site_id = site_id[which.max(n_obs)],
             source = source[which.max(n_obs)],
            n_obs = n_obs[which.max(n_obs)]) %>%
  mutate(source2 = ifelse(grepl('nwis', source, ignore.case = TRUE)|grepl('usgs', site_id, ignore.case = TRUE), 'USGS', 'Other')) %>%
  mutate(keep = TRUE) %>% select(-n_obs)

dat_r <- dat %>%
  left_join(sites) %>%
  filter(!is.na(keep)) %>%
  mutate(year = lubridate::year(date)) %>%
  group_by(year, source2) %>%
  summarize(n_obs = n()) %>% rename(source = source2) %>%
  filter(year < 2021)

cross <- readRDS('input_data/drb_filtered_sites.rds') %>%
  select(site_id, source, latitude, longitude) %>%
  mutate(source2 = ifelse(grepl('nwis', source, ignore.case = TRUE)|grepl('usgs', site_id, ignore.case = TRUE), 'USGS', 'Other')) %>%
  select(site_id, source2, latitude, longitude) %>% rename(source = source2) %>%
  distinct() %>%
  group_by(site_id, source) %>%
  slice(1)

readr::write_csv(dat_r, 'input_data/n_obs_per_year_source.csv')
readr::write_csv(cross, 'input_data/unique_drb_sites.csv')

