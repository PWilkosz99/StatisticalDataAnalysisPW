#wczytuje dane
dane <- read.csv('insurance.csv')
head(dane)

#Miary tendencji centralnej: moda, mediana, średnia
#Rozproszenia: rozstęp, odchylenie standardowe, współczynnik zmienności.

library(moments)
library(tidyverse)

mod <- modeest::mfv(dane$age)
modcout <- cout(dane$age) #liczenie mody test
med <- median(dane$age)
srednia <- mean(dane$age)

wariancja <- var(dane$age) 
odch <- sd(dane$age)
kwantyle <- quantile
kwantyle

mimax <- range(dane$age)
mimax
skos <- skewness(dane$age)
kurto <- kurtosis(dane$age)
#rozstep to max - min // iqr- rozstep miedzykwartylowy
rozstep <- max(dane$age)-min(dane$age)
iqr <- IQR(dane$age)

##b
ggplot(dane,aes(x=dane$age))+
  geom_boxplot(fill="blue", outlier.colour = "darkred", alpha=0.6,outlier.shape =4, coef=1.5) +
  coord_flip()+labs(x="Wiek", title="Wykres ramka-wasy dla wieku")


##c
ggplot(dane,aes(x=dane$age))+
  geom_histogram(breaks=seq(15,65,5), color="black",fill="blue",alpha=0.5)+
  scale_x_continuous(breaks=seq(15,65,5))+
  scale_y_continuous(breaks=seq(0,200,25))+
  labs(      
    x = "Wiek",
    y = "Licznosc",
    title="Histogram dla wieku")



