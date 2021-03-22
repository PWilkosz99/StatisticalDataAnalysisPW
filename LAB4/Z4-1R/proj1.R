placa <- read.csv("placa.csv")

summary(placa)

library(ggplot2)

ggplot(placa, aes(x=Wiek, fill=Wykszta.cenie))+
  geom_histogram(breaks=seq(15,70,5), color="red", alpha=0.7, closed="right")+
  scale_y_continuous(breaks = seq(0,250,10))+
  scale_x_continuous(breaks = seq(15,100,5))+
  labs(x="Wiek", y="Ilość osób", title="Ilość wykształcenia od wieku osób")

ggplot(placa, aes(x=Wykszta.cenie))+
  geom_bar(fill="tomato2", col="violetred3")#+
#scale_x_continuous()#+
#facet_wrap(~Plec)


ggplot(placa, aes(x=Placa.brutto))+
  geom_histogram(col="steelblue", fill="turquoise")+
  facet_wrap(~Plec)+
  labs(x="Ilość osób", y="Zarobki")+
  scale_x_continuous(breaks = seq(0,6000,1000))

ggplot(placa, aes(x=Wiek, y=Placa.brutto))+
  xlim(c(15,75))+
  geom_bar(stat="identity", fill="springgreen3", col="slategrey")#+
#scale_x_continuous(breaks = seq(5,100,5))

colors()


IQR <-IQR(dane$Placa.brutto, na.rm=TRUE)
Q1 <-quantile(dane$Placa.brutto,.25,na.rm=TRUE)
Q3 <-quantile(dane$Placa.brutto,.75,na.rm=TRUE)

dane$Placa.brutto[dane$Placa.brutto<(Q1-1.5*IQR)] <- median(dane$Placa.brutto, na.rm=TRUE)
dane$Placa.brutto[dane$Placa.brutto>(Q3+1.5*IQR)] <- median(dane$Placa.brutto, na.rm=TRUE)

ggplot(dane, aes(x=Placa.brutto))+
  geom_boxplot(fill="cornflowerblue", outlier.color = "darkred",
               outlier.shape = 7)
  #coord_flip()+
  #facet_wrap(~Wykszta.cenie)

