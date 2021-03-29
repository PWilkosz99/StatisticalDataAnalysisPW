dane <- read.csv("cisnienie.csv",stringsAsFactors = TRUE)
head(dane)

summary(dane)




#z podstawowego pakietu
boxplot(dane$Wiek, range=1, horizontal = TRUE, col = "cornflowerblue")


#install.packages("tidyverse")
library(tidyverse)


ggplot(dane,aes(x=Wiek))+
  geom_boxplot(fill="cornflowerblue", outlier.colour = "darkred",outlier.shape =4, coef=1.5) +
  coord_flip()
#facet_wrap(~Plec)

#uzupelnianie pustych
dane$Wiek[is.na(dane$Wiek)] <- median(dane$Wiek,na.rm=TRUE)
head(dane)
summary(dane)



IQR <- IQR(dane$Wiek,na.rm=TRUE)
Q1 <- quantile(dane$Wiek,.25,na.rm=TRUE)
Q3 <- quantile(dane$Wiek,.75,na.rm=TRUE)

dane$Wiek[dane$Wiek<(Q1-1.5*IQR)]<- median(dane$Wiek,na.rm=TRUE)
dane$Wiek[dane$Wiek>(Q3+1.5*IQR)] <- median(dane$Wiek,na.rm=TRUE)

#wybieranie danych bez pustych
dane <- read.csv("cisnienie.csv",stringsAsFactors = TRUE)
head(dane)

without_na <- subset(dane,dane$Wiek!="NA")
head(without_na)