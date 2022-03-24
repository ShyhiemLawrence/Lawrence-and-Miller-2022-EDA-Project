library(tidyverse)
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


birthrate <- filter(data, Year == 2018)
birthrate

ggplot(data = birthrate) +
  geom_bar(mapping = aes(x = Indicator))




