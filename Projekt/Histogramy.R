wczytuje plik z danymi
dane <- read.csv('cisnienie.csv')
head(dane)

summary(dane)

#histpgram z podstawowego pakietu
hist(dane$Wiek)
hist(dane$Wiek,breaks=10)
hist(dane$Wiek,breaks=seq(20,70,10))
hist(dane$Wiek,breaks=seq(min(dane$Wiek,na.rm=TRUE),70,5))
hist(dane$Wiek,breaks=seq(min(dane$Wiek,na.rm=TRUE),70,5),las=2)
hist(dane$Wiek,breaks=seq(20,70,10), xlab='Wiek',ylab='Czestosc',main='hist wiek', col="chocolate",
     border="brown")


#biblioteka tidyverse - zawiera pakiet GGplot
#install.packages("tidyverse")
library(tidyverse)


#"pusty" histogram
ggplot(dane,aes(x=Wiek))+
  geom_histogram(bins = 10)

#ggplot histogram z kolorami
ggplot(dane,aes(x=Wiek))+
  geom_histogram(bins = 10, color="black",fill="red",alpha=0.5)

#ggplot, modyfikacja osi OX
ggplot(dane,aes(x=Wiek))+
  geom_histogram(bins = 10, color="black",fill="red",alpha=0.5)+
  scale_x_continuous(breaks=seq(20,70,5))


ggplot(dane,aes(x=Wiek))+
  geom_histogram(breaks=seq(20,70,5), color="black",fill="red",alpha=0.5)+
  scale_x_continuous(breaks=seq(20,70,5))

#ggplot domykanie od prawej/lewej
ggplot(dane,aes(x=Wiek))+
  geom_histogram(breaks=seq(20,70,5), color="black",fill="red",alpha=0.5, closed="right")+
  scale_x_continuous(breaks=seq(20,70,5))

#pkolor w zale¿noœci od plci
ggplot(dane,aes(x=Wiek, fill=Plec))+
  geom_histogram(breaks=seq(20,70,5), color="black", closed="right")+
  scale_x_continuous(breaks=seq(20,70,5))



#wykrs skategoryzowany
ggplot(dane,aes(x=Wiek, fill=Plec))+
  geom_histogram(breaks=seq(20,70,5), color="black", closed="right")+
  scale_x_continuous(breaks=seq(20,70,5))+
  facet_wrap(~Plec)

#wykrs skategoryzowany w zale¿noœci od plci i palenia
ggplot(dane,aes(x=Wiek, fill=Plec))+
  geom_histogram(breaks=seq(20,70,5), color="black", closed="right")+
  scale_x_continuous(breaks=seq(20,70,5))+
  facet_grid(Palenie~Plec)


#opis osi + tytu³
ggplot(dane,aes(x=Wiek, fill=Plec))+
  geom_histogram(breaks=seq(20,70,5), color="black", closed="right")+
  scale_x_continuous(breaks=seq(20,70,5))+
  labs(      #tu bêd¹ podpisy i opisy
    x = "wiek",
    y = "licznosc",
    title="Tytu³")



# Wiek w zaleznosci od aktuwnosci fiz
ggplot(dane,aes(x=Wiek, fill=Aktywno.scfizyczna))+
  geom_histogram(breaks=seq(20,70,5), color="black", closed="right", alpha=.5)+
  scale_x_continuous(breaks=seq(20,70,5))+
  labs(      #tu bêd¹ podpisy i opisy
    x = "wiek",
    y = "licznosc",
    title="Tytu³")

# Cisnienie w zaleznosci od Plec
ggplot(dane,aes(x=Cisnienie.skurczowe, fill=Plec))+
  geom_histogram(breaks=seq(145,235,10), color="black", closed="right", alpha=.5)+
  scale_x_continuous(breaks=seq(145,235,10))+
  labs(      #tu bêd¹ podpisy i opisy
    x = "cisnienie",
    y = "licznosc",
    title="Tytu³")

ggplot(dane,aes(x=Cisnienie.skurczowe, fill=Plec))+
  geom_histogram(breaks=seq(145,235,10), color="black", closed="right", alpha=.5)+
  scale_x_continuous(breaks=seq(145,235,10))+
  facet_wrap(~Plec)



#zmienne jakosciowe
ggplot(dane,aes(x=Aktywno.scfizyczna))+
  geom_bar(color="black",fill="red",alpha=0.5)

