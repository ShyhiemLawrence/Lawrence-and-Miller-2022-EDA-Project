library(tidyverse)
library(ggplot2)
library(readxl)

data<- read_excel("data/data.xlsx")
data 

rename(data, Year = ...2)


filter(data, ...2 == 2018)

birthrate <- filter(data, ...2 == 2018)
birthrate

view(birthrate)




