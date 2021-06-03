library(tidyverse)

model1 <- lm(data$Teaching~data$Research)

# ---Teaching---

##Ramka wasy
ggplot(data,aes(x=Teaching))+
  geom_boxplot(fill="chartreuse4", outlier.colour = "indianred3", alpha=0.6,outlier.shape =4, coef=1.5) +
  coord_flip()+labs(x="Ocena", title="Wykres ramka-wasy dla oceny nauczania")

#Histogram
ggplot(data,aes(x=Teaching))+
  geom_histogram(breaks=seq(0,100,10), color="black",fill="chartreuse4",alpha=0.75)+
  labs(      
    x = "Ocena nauczania",
    y = "Licznoœæ",
    title="Histogram oceny nauczania")

# ---Research---

##Ramka wasy
ggplot(data,aes(x=Research))+
  geom_boxplot(fill="goldenrod1", outlier.colour = "red", alpha=0.6,outlier.shape =4, coef=1.5) +
  coord_flip()+labs(x="Ocena", title="Wykres ramka-wasy dla oceny badañ")

#Histogram
ggplot(data,aes(x=Research))+
  geom_histogram(breaks=seq(0,100,10), color="black",fill="goldenrod1",alpha=0.75)+
  labs(      
    x = "Ocena badañ",
    y = "Licznoœæ",
    title="Histogram oceny badañ")


colors()
