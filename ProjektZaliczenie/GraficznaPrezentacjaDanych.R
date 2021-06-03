data <- read.csv("cwurData.csv")

# ---Citations---

##Ramka wasy
ggplot(data,aes(x=citations))+
  geom_boxplot(fill="blue", outlier.colour = "darkred", alpha=0.6,outlier.shape =4, coef=1.5) +
  coord_flip()+labs(x="Wiek", title="Wykres ramka-wasy dla wieku")

#Histogram
ggplot(data,aes(x=data$citations))+
  geom_histogram(breaks=seq(15,250,10), color="black",fill="blue",alpha=0.5)+
  labs(      
    x = "citations",
    y = "Licznosc",
    title="Histogram dla citations")

# ---Publications---

##Ramka wasy
ggplot(data,aes(x=publications))+
  geom_boxplot(fill="blue", outlier.colour = "darkred", alpha=0.6,outlier.shape =4, coef=1.5) +
  coord_flip()+labs(x="Wiek", title="Wykres ramka-wasy dla wieku")

#Histogram
ggplot(data,aes(x=data$publications))+
  geom_histogram(breaks=seq(0,100,1), color="black",fill="blue",alpha=0.5)+
  labs(      
    x = "Publications",
    y = "Licznosc",
    title="Histogram dla publications")


