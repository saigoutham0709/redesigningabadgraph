library(tidyr)
library(tidyverse)
library(ggplot2)
library(micromapST)
my_data<-read.csv("sai4.csv")
na.omit(my_data$Avg.rent.1)
View(my_data)
str(my_data)
my_data$zero <- rep(0, nrow(my_data))
view(my_data)

#creating micromap
type = c('maptail','id','dot','arrow')
lab1=rep("",4)
lab2=c('','','Population \n (in %)','Avg rent \n (in %)')
lab3=c('','','','')
col1=c(NA,'State','Population','zero')
col2=c(NA,NA,NA,'Avg.rent')

#storing the dataframe
panelDesc <- data.frame(type,lab1,lab2,lab3,col1,col2, colSize=c(NA,NA,0.6,0.15))
View(panelDesc)
fname="RedesignProject"
pdf(file=fname, width = 10,height = 12)

#Micromap Creation
micromapST(my_data,panelDesc,rowNamesCol = 'State',rowNames = 'full',
           plotNames ='full', sortVar = 'Population', ascend = FALSE, 
           title=c("changes in Avg rent wrt population wise"),
           ignoreNoMatches = TRUE)
dev.off()