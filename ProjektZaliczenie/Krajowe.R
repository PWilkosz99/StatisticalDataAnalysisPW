cwurData <- read.csv("cwurData.csv")

head(cwurData)

install.packages("magrittr")
library(magrittr)

cwurData %>% filter(cwurData$country =="Romania") %>%
  knitr::kable(caption="Center of World University Ranking information: Romanian Universities presence")

