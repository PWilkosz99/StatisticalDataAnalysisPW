data <- read.csv("cwurData.csv")

data <- data[-(11)] # dane z NA lata 2012 - 2013
data <- data[-(2)] 
data <- data[-(2)] 




str(data)
head(data)

summary(data)
unique(data$country)
nrow(data)

library(dplyr)

## korelacja wybranych zminennych

cor.test(data$rank, data$research_performance)
cor.test(data$rank, data$score)
cor.test(data$research_performance, data$score)



## wykres rozrzutu

plot(data$rank, data$research_performance)
plot(data$rank, data$score)
plot(data$research_performance, data$score)
abline(1, 1)

#model

model1 <- lm(data$rank~data$research_performance)
model2 <- lm(data$rank~data$score)
model3 <- lm(data$research_performance~data$score)


summary(model1)
summary(model2)
summary(model3)

# wykres obserwacji

abline(model1, col="red")
abline(model2, col = "red")
abline(model3, col = "red")

# weryfikacja
#szukanie powiazan

# jakoœæ dopasowania
#cor testy sprawdzenie p value
#14 / 44 W 9 SAD

# test fishera XD

# analiza reszt

plot(data$rank, model1$residuals, ylab = 'Rezydua')
plot(data$rank, model2$residuals, ylab = 'Rezydua')
plot(data$research_performance, model3$residuals, ylab = 'Rezydua')

abline(h = 0, lty = 2, col = "green")

# qq

qqnorm(model1$residuals)
qqline(model1$residuals,col = 'red')
qqnorm(model2$residuals)
qqline(model2$residuals, col = 'red')

qqnorm(model3$residuals)
qqline(model3$residuals, col = 'red')

# sahpiro sie nie stosuje dla takiej ilosci danych
shapiro.test(model1$residuals)shapiro.test(model2$residuals)shapiro.test(model3$residuals)
# nieobciazonosc reszt
mean(model1$residuals)mean(model2$residuals)mean(model3$residuals)


# homo homo


library(lmtest)bptest(model1)bptest(model2)bptest(model3)
model1$r.squared

##                   2222                   ###


library(dplyr)
data<- select(data, "rank", "research_performance", "score")


#install.packages("GGally")
library(GGally)

ggcorr(data, label = T)

#H1_0: r1=0,   H1_1: r1!=0,   alfa=.05

cor.test(data$rank, data$research_performance)
str(cor.test(data$rank, data$research_performance))

#p<alfa - odrzucamy H1_0 - na poziomie istotnosci alfa korelacja jest istotna statystycznie


#MODEL ALL
model_all <- lm(formula =  data$rank ~ .,data = data)
summary(model_all)


#H1_0: b0=0 - nie jest istotny statystycznie; H1_1:b0!=0 p>alfa-> nie mamy podstaw do odrzucenia h0


#H0_1: R2=0 - model nie jest ist stat, H1_1: R2!=0 - model nie jest istotny stat
#z testy F p<alfa -> odrzucamy H0


#analizy reszt
#1. losowosc
plot(data$rank, model_all$residuals)
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

