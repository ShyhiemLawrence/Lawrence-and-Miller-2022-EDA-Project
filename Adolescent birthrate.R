library(tidyverse)
library(ggplot2)
library(readxl)

data<- read_excel("data/data.xlsx")
data 


ggplot(data = data) +
  geom_bar(mapping = aes(x = Indicator))

