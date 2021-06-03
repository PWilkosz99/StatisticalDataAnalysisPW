data <- read.csv( "cwurData.csv" )
#https://www.kaggle.com/mylesoneill/world-university-rankings?select=cwurData.csv

<<<<<<< Updated upstream
data <- data[-(11)] # dane z NA lata 2012 - 2013
=======
summary(data$patents)

filter(data, data$national_rank==229)
>>>>>>> Stashed changes

library(ggplot2)
library(GGally)
ggcorr(data, label = T)
