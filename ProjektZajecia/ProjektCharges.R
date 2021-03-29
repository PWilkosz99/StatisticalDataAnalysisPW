#wczytuje dane
dane <- read.csv('insurance.csv')
head(dane)

#Miary tendencji centralnej: moda, mediana, średnia
#Rozproszenia: rozstęp, odchylenie standardowe, współczynnik zmienności.

library(moments)
library(tidyverse)

mod <- modeest::mfv(dane$charges)
modcout <- cout(dane$charges) #liczenie mody test
med <- median(dane$charges)
srednia <- mean(dane$charges)

wariancja <- var(dane$charges) 
odch <- sd(dane$charges)
kwantyle <- quantile(dane$charges)
kwantyle

mimax <- range(dane$charges)
mimax
skos <- skewness(dane$charges)
kurto <- kurtosis(dane$charges)
kurto
#rozstep to max - min // iqr- rozstep miedzykwartylowy
rozstep <- max(dane$charges)-min(dane$charges)
iqr <- IQR(dane$charges)

##b
ggplot(dane,aes(x=dane$charges))+
  geom_boxplot(fill="green", outlier.colour = "darkred", alpha=0.6,outlier.shape =4, coef=1.5) +
  coord_flip()+labs(x="Koszty leczenia", title="Wykres ramka-wasy dla kosztów leczenia")+  
  scale_x_continuous(breaks=seq(0,65000,10000))


##c
ggplot(dane,aes(x=dane$charges))+
  geom_histogram(breaks=seq(0,65000,5000), color="black",fill="green",alpha=0.5)+
  scale_x_continuous(breaks=seq(0,65000,10000))+
  labs(      
    x = "Koszty leczenia",
    y = "Licznosc",
    title="Histogram dla kosztów leczenia")
