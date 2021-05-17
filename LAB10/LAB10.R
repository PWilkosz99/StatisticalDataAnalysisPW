#1
sellers <- read.csv(file = 'reg_sprzedawcy.csv')
head(sellers)
cor(sellers$CzasSzkolenia,sellers$SprzedazMiesieczna)
plot(sellers$CzasSzkolenia,sellers$SprzedazMiesieczna)
#Uzyskany wykres sugeruje, że rozpatrywanie w tym przypadku zależności
#liniowej między badanymi zmiennymi, wydaje się być uzasadnione. 
model1 <- lm(sellers$CzasSzkolenia~sellers$SprzedazMiesieczna)
summary(model1)
model1$coefficients

# y = -0.02629273 + 0.98597721*x (SprzedazMiesieczna)

#Wykres obserwacji wraz z prostą regresji
plot(sellers$CzasSzkolenia,sellers$SprzedazMiesieczna)
abline(model1,col="red")

#WERYFIKACJA MODELU

#I. Jakość dopasowania
cor.test(sellers$CzasSzkolenia,sellers$SprzedazMiesieczna)
# p<α -> odrzucamy H0 na rzecz H1

#LOSOWOŚĆ ODCHYLEŃ
plot(sellers$SprzedazMiesieczna, model1$residuals, ylab='Rezydua')
abline(h=0, lty=2, col="green")
#Punkty układają sięlosowo powyżej iponiżej krzywej teoretycznej

#ANALIZA RESZT
#H0 - reszty mają rozkład normalny
#H1 - reszty nie mają rozkładu normalnego
qqnorm(model1$residuals)
qqline(model1$residuals,col='red')
shapiro.test(model1$residuals)
#p>alfa -> nie ma podstaw do odrzucenia H0 - reszty maja rozklad normalny

#nieobciążoność reszt
mean(model1$residuals)

#założenie homoscedastyczno
#H0 - występuje stale rozproszenie reszt
#H1 - występuje 
#install.packages("lmtest")
library(lmtest)
bptest(model1)

#p> alfa -> nie ma podstaw do odrzucenia H0


#2
newpred <- data.frame(CzasSzkolenia=12)
predict(model1, newpred)
