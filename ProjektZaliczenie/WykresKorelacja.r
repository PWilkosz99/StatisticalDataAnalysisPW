data <- read.csv( "cwurData.csv" )
#https://www.kaggle.com/mylesoneill/world-university-rankings?select=cwurData.csv

data <- data[-(11)] # dane z NA lata 2012 - 2013

library(ggplot2)
library(GGally)
ggcorr(data, label = T)
