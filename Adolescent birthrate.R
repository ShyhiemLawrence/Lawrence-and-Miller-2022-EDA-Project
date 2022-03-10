library(readxl)
data<- read_excel("data.xlsx")
data 
Adolescent_birthrate <- data
Adolescent_birthrate
ggplot(data = Adolescent_birthrate) +
  geom_bar(mapping = aes(x = Indicator))
