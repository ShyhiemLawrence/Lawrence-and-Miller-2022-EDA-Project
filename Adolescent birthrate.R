library(tidyverse)
library(readxl)
library(rnaturalearth)
library(rnaturalearthdata)
library(sf)


abr <- 
  read_csv("data/abr.csv") %>% 
  transmute(
    country = Location, 
    year = Period, 
    abr = Value
  ) %>% 
  print()


# Histogram
abr %>% 
  filter(year == 2018) %>% 
  ggplot() +
  geom_col(mapping = aes(x = country, y = abr), fill = "royalblue4")  +
  coord_flip() +
  theme_grey(base_size = 12)
ggsave("map.png", width = 10, height = 14, dpi = 600, units = "in")


# World Map
ne_countries(scale = "medium", returnclass = "sf") %>%
  filter(sov_a3 != "ATA") %>% 
  left_join(filter(abr, year == 2018), by = c("admin" = "country")) %>% 
  ggplot() +
  geom_sf(aes(fill = abr)) +
  scale_fill_viridis_b() +
  coord_sf(crs = st_crs("ESRI:54030")) +  # Robinson
  labs(fill = "Adolescent\nBirth\nRate") +
  theme_void(base_size = 12)
ggsave("map.png", width = 14, height = 14/2.45, dpi = 600, units = "in")






