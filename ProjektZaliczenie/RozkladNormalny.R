shapiro.test(data$Teaching)
shapiro.test(data$Research)


qqnorm(data$Teaching, main="Wykres kwantyl-kwantyl dla oceny nauczania")
qqline(data$Teaching,col = 'red')

qqnorm(data$Research, main="Wykres kwantyl-kwantyl dla oceny badań")
qqline(data$Research,col = 'red')
