library(tidyverse)
library(tidyr)
library(ggplot2)
my_data<-read.csv("Least rents.csv")
view(my_data)
str(my_data)
ggplot(my_data, aes(x = City, y = Avg.rent, fill = Region))+ 
  geom_bar(color="Black", position = "stack", stat="identity")+
  theme(axis.text.x = element_text(angle = 90))+
  labs(x = "City Names",
       y = "Average Rent", 
       title = "Average Rent in Cheapest cities",
       fill = "Region")+
  labs(title="Average Rent in Cheapest cities")+
  scale_fill_manual(values=c("red", "skyblue", rgb(.90,.90,0)), na.value = "gray30")
  
  
  
  