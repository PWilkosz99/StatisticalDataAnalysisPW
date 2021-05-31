data <- read.csv( "cwurData.csv" )
#https://www.kaggle.com/mylesoneill/world-university-rankings?select=cwurData.csv


library(ggplot2)
library(GGally)
ggcorr(data, label = T)
