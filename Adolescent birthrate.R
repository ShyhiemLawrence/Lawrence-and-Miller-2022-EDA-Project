library(tidyverse)
library(ggplot2)
library(readxl)



abr <- 
  read_csv("data/abr.csv") %>% 
  transmute(
    country = Location, 
    year = Period, 
    abr = Value
  ) %>% 
  print()



abr %>% 
  filter(year == 2018) %>% 
  ggplot() +
  geom_col(mapping = aes(x = country, y = abr)) +
  coord_flip()



mapdata <- map_data("world")
view(mapdata)



mapdata <- left_join(mapdata, abr, by=c("region" = "country"))
view(mapdata)










