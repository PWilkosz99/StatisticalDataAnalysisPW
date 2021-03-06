summary(data)
library(moments)
## ------------- Teaching ------------- ##

summary(data$Teaching) 

library(modeest)
mlv(data$Teaching, method = "mfv") #moda

library(moments)
skewness(data$Teaching) #sko�no�c

sd(data$Teaching) #odchylenie

var(data$Teaching) #wariancja

quantile(data$Teaching) #kwantyle

print(max(data$Teaching) - min(data$Teaching))

kurtosis(data$Teaching)

## ------------- Reseach ------------- ##

summary(data$Research) 

library(modeest)
mlv(data$Research, method = "mfv") #moda

library(moments)
skewness(data$Research) #sko�no�c

sd(data$Research) #odchylenie

var(data$Research) #wariancja

quantile(data$Research) #kwantyle

print(max(data$Research) - min(data$Research))

kurtosis(data$Research)
