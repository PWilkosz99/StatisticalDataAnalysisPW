##1
time <- c(35.34,  36.26,  30.54,  38.2,  37.59,  39.18,  33.16,  34.23,  27.9,  36.33,  32.39,  34.89,  35.7,  31.99,  34.03)
(t.test(time, mu=35, conf.level=0.95))
#H0: μ = 35 , H1: μ =! 35
#p > a więc nie ma podstaw do odrzucenia hipotezy zerowej, 
#co oznacza, że przeciętny czas pracy w godzinach 
#baterjyki nie różni się od 35

##2
con <- c(101.1,   105.7,   102.6,  113.4,   98.1)
t.test(con, mu = 127.7, conf.level = 0.99, alternative ="less")
#p<a -> odrzucamy H0
##3
k1 <- c(3.71,   4.28,  2.95,  3.2,  3.38,  4,05,  4.07,  4.98,  3.2,  3.43,  3.09,  4.5,  3.12,  3.68,  3.9)
k2 <- c(3.1,  3.38,  4.06,  3.6,  3.81,  4.5,  4,  3.25,  4.11,  4.85,  2.8,  4.)
var.test(k1,k2)
t.test(k1, k2, var.equal=TRUE)
#H1: (𝝁𝟏≠𝝁𝟐 😞osiągnięcia klasy I i klasy II różnią się i nie można ich uznać za takie same

##4
r1 <- c(220, 185, 270, 285, 200, 295, 255, 190, 225, 230)
r2 <-  c(190, 175, 215, 260, 215, 195, 260, 150, 155, 175)
t.test(r1, r2, var.equal=TRUE)
#qqnorm(con)
#shapiro.test(con)