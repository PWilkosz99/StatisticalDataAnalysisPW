data <- read.csv("cwurData.csv")


head(data)

summary(data)
nrow(data)

library(dplyr)

## korelacja wybranych zminennych
# y = f(x)
# data teaching = coœ*data researching +c
cor.test(data$Teaching, data$Research)

## wykres rozrzutu
plot(data$Teaching, data$Research, ylab="Ocena badañ", xlab="Ocena nauczania", main = "Wyres rozrzutu")

plot(data$Teaching, data$Research, ylab="Ocena badañ", xlab="Ocena nauczania", main = "Model regresji liniowej")

abline(1, 1)

#model

model1 <- lm(data$Research~data$Teaching)

model1

summary(model1)


# wykres obserwacji

abline(model1, col="red")


# weryfikacja
#szukanie powiazan

# jakoœæ dopasowania
#cor testy sprawdzenie p value
#14 / 44 W 9 SAD

# test fishera XD

# analiza reszt

plot(data$Teaching, model1$residuals, ylab = 'Rezydua', xlab="Ocena nauczania")

summary(data$Teaching)
summary(data$Research)


abline(h = 0, lty = 2, col = "green")
abline(v = 50, lty = 2, col = "red")

# qq

qqnorm(model1$residuals, main="Wizualizacja rozk³adu")
qqline(model1$residuals,col = 'red')



# sahpiro sie nie stosuje dla takiej ilosci danych
shapiro.test(model1$residuals)


# nieobciazonosc reszt
mean(model1$residuals)




# homo homo


library(lmtest)
bptest(model1)


model1$r.squared

##                   2222                   ###


library(dplyr)
data<- select(data, "world_rank", "publications", "citations")


#install.packages("GGally")
library(GGally)

ggcorr(data, label = T)

#H1_0: r1=0,   H1_1: r1!=0,   alfa=.05

cor.test(data$Teaching, data$Research)
str(cor.test(data$world_rank, data$publications))

#p<alfa - odrzucamy H1_0 - na poziomie istotnosci alfa korelacja jest istotna statystycznie


#MODEL ALL
model_all <- lm(formula =  data$world_rank ~ .,data = data)
summary(model_all)


#H1_0: b0=0 - nie jest istotny statystycznie; H1_1:b0!=0 p>alfa-> nie mamy podstaw do odrzucenia h0


#H0_1: R2=0 - model nie jest ist stat, H1_1: R2!=0 - model nie jest istotny stat
#z testy F p<alfa -> odrzucamy H0


#analizy reszt
#1. losowosc
plot(data$world_rank, model_all$residuals)
abline(h = 0)

#2. normalnosc
qqnorm(model_all$residuals)
qqline(model_all$residuals)

#H0 : reszty maja rozklad normalny H: reszty nie maja rozkladu normalnego, alfa=0.05
shapiro.test(model_all$residuals)
#p<alfa-> odrzucamy h0

#3.nieobciazonosc reszt
mean(model_all$residuals)

#4. homoscedastycznosci
#H0: wystepuje stale rozproszenie reszt - homoscedastycznosci
#H1: heteroscedastycznosc
#alfa =0,05

library(lmtest)
bptest(model_all)

#2. normalnosc g³owna
qqnorm(model_all$residuals)
qqline(model_all$residuals)

