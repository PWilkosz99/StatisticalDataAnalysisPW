dane <- read.csv('placa.csv', stringsAsFactors = TRUE)

head(dane)

summary(dane)

srednia.wiek <- round(mean(dane$Wiek, na.rm = TRUE),0)

wariancja <- var(dane$Wiek, na.rm = TRUE)
wariancja
odch.st <- sd(dane$Wiek,  na.rm = TRUE)
odch.st
Me <- median(dane$Wiek, na.rm = TRUE)
Me
kwantyle <- quantile(dane$Wiek, .10, na.rm = TRUE)
kwantyle
