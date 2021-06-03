#data <- read.csv( "cwurData.csv", dec = ',')
#https://www.kaggle.com/mylesoneill/world-university-rankings?select=cwurData.csv



data <- read.csv("2_Word_University_Rank_2020.csv", sep = ';')
summary(data)

me <- median(data$International_Students, na.rm = TRUE)
data$International_Students <- replace_na(data$International_Students, me  )

summary(data)




data <- data[-(11)] # dane z NA lata 2012 - 2013

filter(data, data$national_rank==229)

library(ggplot2)
library(GGally)
ggcorr(data, label = T)
