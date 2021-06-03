data <- read.csv( "cwurData.csv" )

data <- data[-(11)] # dane z NA lata 2012 - 2013


## ------------- Citations ------------- ##

summary(data$citations) 

library(modeest)
mlv(data$citations, method = "mfv") #moda

library(moments)
skewness(data$citations) #skoœnoœc

sd(data$citations) #odchylenie

var(data$citations) #wariancja

quantile(data$citations) #kwantyle

rozstep <- max(data$citations) - min(data$citations)
rm(rozstep)

## ------------- Patents ------------- ##

summary(data$patents) 

library(modeest)
mlv(data$patents, method = "mfv") #moda

library(moments)
skewness(data$patents) #skoœnoœc

sd(data$patents) #odchylenie

var(data$patents) #wariancja

quantile(data$patents) #kwantyle

rozstep <- max(data$patents) - min(data$patents)
print(rozstep)
rm(rozstep)
