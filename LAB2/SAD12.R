oceny.transmutacja <- c(2,2,5,5,2,4,2,2,3,4)

stat.opis <- summary(oceny.transmutacja)

srednia <- mean(oceny.transmutacja)

wariancja <- var(oceny.transmutacja)
odch.st <- sd(oceny.transmutacja)
Me <- median(oceny.transmutacja)
kwantyle <- quantile(oceny.transmutacja, .10)
kwantyle

install.packages("moments")

library(moments)

As <- skewness(oceny.transmutacja)
K <- kurtosis(oceny.transmutacja)

install.packages("modeest")

Mo <- modeest::mfv(oceny.transmutacja)

statystyki.opisowe <- cbind(srednia, odch.st, wariancja, Me, Mo, As, K)
