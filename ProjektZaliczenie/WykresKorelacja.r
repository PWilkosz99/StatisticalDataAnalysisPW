data <- read.csv( "cwurData.csv" )
#https://www.kaggle.com/mylesoneill/world-university-rankings?select=cwurData.csv



data <- read.csv("universities_V1.1.csv")


data <- data[-(11)] # dane z NA lata 2012 - 2013

filter(data, data$national_rank==229)

library(ggplot2)
library(GGally)
ggcorr(data, label = T)
