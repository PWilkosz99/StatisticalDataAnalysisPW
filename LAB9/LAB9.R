butelki <-c(1.36, 1.14, 1.27, 1.15, 1.20, 1.29, 1.27, 1.18, 1.23, 1.36, 1.38, 1.37, 1.30, 1.21, 1.33, 1.28, 1.32, 1.29, 1.33, 1.25)

install.packages("ggpubr")
library("ggpubr")
ggdensity(butelki)

shapiro.test(butelki)

#H0: średnia wytrzymałość wynosi 1.20 przy poziomie istotności 0,04
#H1: średnia wytrzymałość jest większa od 1.20 przy poziomie istotności 0,04