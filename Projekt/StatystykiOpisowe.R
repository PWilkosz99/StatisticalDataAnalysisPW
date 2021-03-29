#wektor z ocenami
oceny.transmutacja <- c(1,3,5,5,4,4,4,2,3,4)

#pakiet podstawowy

#podstawowe statstyki
summary(oceny.transmutacja)


#na piechote ;)
sredia <- mean(oceny.transmutacja)                      #srednia
wariancja <- var(oceny.transmutacja)                       #wariancja
odch.std <- sd(oceny.transmutacja)                        #odchylenie standardowe
Me <- median(oceny.transmutacja)                    #mediana
kwantyle <- quantile(oceny.transmutacja)                  #kwantyle
quantile(oceny.transmutacja, 0.10)            #kwantyl 10-ty
quantile(oceny.transmutacja, c(0.10, 0.20))   #kwantyl 10-ty i 20-ty
range(oceny.transmutacja)                     #min i max

kwantyle

#skosnosc i kurtoza 
#install.packages("moments")
library(moments)
As <- skewness(oceny.transmutacja)
K <- kurtosis(oceny.transmutacja)




#moda
install.packages("modeest")
#nie instaluje  calej biblioteki tylko korzystam z wybranej funkcji
Mo <- modeest::mfv(oceny.transmutacja)

#laczymy w tab
statystyki.opisowe <- cbind(sredia,odch.std,wariancja,Me,Mo,As,K)

