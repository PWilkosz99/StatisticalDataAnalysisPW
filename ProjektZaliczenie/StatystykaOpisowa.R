summary(data)

## ------------- Teaching ------------- ##

summary(data$Teaching) 

library(modeest)
mlv(data$Teaching, method = "mfv") #moda

library(moments)
skewness(data$Teaching) #skoœnoœc

sd(data$Teaching) #odchylenie

var(data$Teaching) #wariancja

quantile(data$Teaching) #kwantyle

print(max(data$Teaching) - min(data$Teaching))

## ------------- Reseach ------------- ##

summary(data$Research) 

library(modeest)
mlv(data$Research, method = "mfv") #moda

library(moments)
skewness(data$Research) #skoœnoœc

sd(data$Research) #odchylenie

var(data$Research) #wariancja

quantile(data$Research) #kwantyle

print(max(data$Research) - min(data$Research))

