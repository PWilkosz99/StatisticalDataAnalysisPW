data <- read.csv("cwurData.csv")
data <- read.csv("universities_V1.1.csv")

library(tidyverse)

model1 <- lm(data$International_Outlook~data$International_Students)

# ---International_Outlook---

##Ramka wasy
ggplot(data,aes(x=International_Outlook))+
  geom_boxplot(fill="blue", outlier.colour = "darkred", alpha=0.6,outlier.shape =4, coef=1.5) +
  coord_flip()+labs(x="Wiek", title="Wykres ramka-wasy dla wieku")

#Histogram
ggplot(data,aes(x=data$International_Outlook))+
  geom_histogram(breaks=seq(15,250,10), color="black",fill="blue",alpha=0.5)+
  labs(      
    x = "International_Outlook",
    y = "Licznosc",
    title="Histogram dla International_Outlook")

# ---International_Students---

##Ramka wasy
ggplot(data,aes(x=International_Students))+
  geom_boxplot(fill="blue", outlier.colour = "darkred", alpha=0.6,outlier.shape =4, coef=1.5) +
  coord_flip()+labs(x="Wiek", title="Wykres ramka-wasy dla wieku")

#Histogram
ggplot(data,aes(x=data$International_Students))+
  geom_histogram(breaks=seq(0,1,0.05), color="black",fill="blue",alpha=0.5)+
  labs(      
    x = "International_Students",
    y = "Licznosc",
    title="Histogram dla International_Students")


