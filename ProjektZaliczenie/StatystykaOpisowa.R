data <- read.csv( "universities V1.1.csv" )

data <- data[-(11)] # dane z NA lata 2012 - 2013

summary(data)

## ------------- rank ------------- ##

summary(data$rank) 

library(modeest)
mlv(data$rank, method = "mfv") #moda

library(moments)
skewness(data$rank) #skoœnoœc

sd(data$rank) #odchylenie

var(data$rank) #wariancja

quantile(data$rank) #kwantyle

rozstep <- max(data$rank) - min(data$rank)
print(rozstep)
rm(rozstep)

## ------------- research_performance ------------- ##

summary(data$research_performance) 

library(modeest)
mlv(data$research_performance, method = "mfv") #moda

library(moments)
skewness(data$research_performance) #skoœnoœc

sd(data$research_performance) #odchylenie

var(data$research_performance) #wariancja

quantile(data$research_performance) #kwantyle

rozstep <- max(data$research_performance) - min(data$research_performance)
print(rozstep)
rm(rozstep)

#data <- data[!df$V2 == "null", ] 