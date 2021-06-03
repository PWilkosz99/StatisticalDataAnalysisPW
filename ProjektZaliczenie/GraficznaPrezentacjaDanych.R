data <- read.csv("cwurData.csv")
data <- read.csv("universities_V1.1.csv")

library(tidyverse)

summary(data$research_performance)
data$research_performance <- replace_na(data$research_performance, median(data$research_performance, na.rm = TRUE))
summary(data$research_performance)


# ---rank---

##Ramka wasy
ggplot(data,aes(x=rank))+
  geom_boxplot(fill="blue", outlier.colour = "darkred", alpha=0.6,outlier.shape =4, coef=1.5) +
  coord_flip()+labs(x="Wiek", title="Wykres ramka-wasy dla wieku")

#Histogram
ggplot(data,aes(x=data$rank))+
  geom_histogram(breaks=seq(15,250,10), color="black",fill="blue",alpha=0.5)+
  labs(      
    x = "rank",
    y = "Licznosc",
    title="Histogram dla rank")

# ---research_performance---

##Ramka wasy
ggplot(data,aes(x=research_performance))+
  geom_boxplot(fill="blue", outlier.colour = "darkred", alpha=0.6,outlier.shape =4, coef=1.5) +
  coord_flip()+labs(x="Wiek", title="Wykres ramka-wasy dla wieku")

#Histogram
ggplot(data,aes(x=data$research_performance))+
  geom_histogram(breaks=seq(0,100,1), color="black",fill="blue",alpha=0.5)+
  labs(      
    x = "research_performance",
    y = "Licznosc",
    title="Histogram dla research_performance")


