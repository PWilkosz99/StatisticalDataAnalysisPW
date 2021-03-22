dane <- read.csv("cisnienie.csv", stringsAsFactors = TRUE)
head(dane)

summary(dane)

#z podstawowego pakietu
boxplot(dane$Wiek, range=0, horizonal = TRUE, col="cornflowerblue")

#install.packages("tidyverse")

library(tidyverse)

ggplot(dane, aes(x=Wiek))+
  geom_boxplot(fill="cornflowerblue", outlier.color = "darked",
               outlier.shape = 4, coef=1.5)+
  coord_flip()+
  facet_wrap(~Plec)

#zmiana danych
dane$Wiek(is.na(dane$wiek)) <-median(dane$Wiek,na.rm=TRUE)
head(dane)
summary(dane)

IQR <-IQR(dane$Wiek, na.rm=TRUE)
Q1 <-quantile(dane$wiek,.25,na.rm=TRUE)
Q3 <-quantile(dane$wiek,.75,na.rm=TRUE)

#Odstajace na medinae
dane$Wiek[dane$Wiek<(Q1-1.5*IQR)] <- median(dane$Wiek, na.rm=TRUE)
dane$Wiek[dane$Wiek>(Q3+1.5*IQR)] <- median(dane$Wiek, na.rm=TRUE)

#Usuwam puste
without_na <- subset(dane, dane$Wiek!="NA")
head(without_na)
