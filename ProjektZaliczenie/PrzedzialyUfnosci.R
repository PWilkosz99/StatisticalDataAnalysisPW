
data <- read.csv("cwurData.csv")
data <- read.csv("universities V1.1.csv")
colnames(data)
names(data)[1] <- "rank"

# ---Teaching---

#średnia z próby
mu<-mean(data$Teaching)
#odchylenie standardowe
sigma<-sd(data$Teaching)

#90% /chyba
round(mu+c(-1,1)*sigma/sqrt(32)*qnorm(.95),2)

#95% /chyba
round(mu+c(-1,1)*sigma/sqrt(32)*qnorm(.975),2)

# ---Research---

#średnia z próby
mu<-mean(data$Research)
#odchylenie standardowe
sigma<-sd(data$Research)

#95% /chyba
round(mu+c(-1,1)*sigma/sqrt(32)*qnorm(.95),2)

#95% /chyba
round(mu+c(-1,1)*sigma/sqrt(32)*qnorm(.975),2)


t.test(data$Teaching, conf.level = 0.95)
