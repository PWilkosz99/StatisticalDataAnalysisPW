cisnienie <- read.csv("cisnienie.csv")

summary(cisnienie)

hist(cisnienie$Wiek, breaks=10, xlab="Wiek", ylab="Ilość", border="red", col="orange", main="Ilość osób w wieku")

library(tidyverse)

ggplot(cisnienie, aes(x=Wiek, fill=Plec))+
  geom_histogram(breaks=seq(20,70,5), color="red", alpha=0.7, closed="right")+
  scale_x_continuous(breaks = seq(20,70,5))+
  labs(x="Wiek", y="Ilość", title="Ilość osób w wieku")

ggplot(cisnienie, aes(x=Wiek))+
  geom_histogram(bins = 10, color="red", fill="orange", alpha=0.7, closed="right")+
  labs(x="Wiek", y="Ilość osób", title="Zależność aktywności fizycznej od wieku oraz płci")+
  facet_wrap

ggplot(cisnienie, aes(x=Wiek))+
  geom_histogram(bins = 10, color="red", fill="orange", alpha=0.7, closed="right")+
  labs(x="Wiek", y="Ilość osób", title="Zależność palenia od wieku oraz płci")+
  facet_wrap(Plec~Palenie)

ggplot(cisnienie, aes(x=Cisnienie.skurczowe, fill=Aktywno.scfizyczna), xlab="Wiek")+
  geom_histogram(bins = 10, color="red", alpha=0.7, closed="right")+
  labs(x="Ciśnienie tętniczne", y="Ilość osób", title="Zależność ciśnienia tętniczego od aktywności fizycznej")


