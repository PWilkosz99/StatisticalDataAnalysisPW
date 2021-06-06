library(ggplot2)
library(tidyr)
library(tidyverse)

data %>% group_by(Country) %>% summarise(n = length(Teaching)) %>% top_n(10, n) %>% ungroup() -> c

# teach
data %>% filter(Country %in% c$Country) %>%
    ggplot(aes(x = Country, y = Teaching, col = Country)) + guides(col = FALSE) +
    geom_boxplot() + theme_bw() + coord_flip() +
    labs(x = "Kraj", y = "Ocena kszta³cenia",
      title = "Wykres pude³kowy dla oceny kszta³cenia uniwersyteckiego w krajach") 

# research
data %>% filter(Country %in% c$Country) %>%
    ggplot(aes(x = Country, y = Research, col = Country)) + guides(col = FALSE) +
    geom_boxplot() + theme_bw() + coord_flip() +
    labs(x = "Kraj", y = "Ocena badañ",
      title = "Wykres pude³kowy dla oceny badañ uniwersyteckich w krajach")

data %>% filter(Country %in% c$Country) %>%
    ggplot(aes(x = Country, y = Number_students, col = Country)) + guides(col = FALSE) +
    geom_boxplot() + theme_bw() + coord_flip() +
    labs(x = "x", y = "y",
      title = "T", subtitle = "s")

data %>% filter(Country %in% c$Country) %>%
    ggplot(aes(x = Country, y = Numb_students_per_Staff, col = Country)) + guides(col = FALSE) +
    geom_boxplot() + theme_bw() + coord_flip() +
    labs(x = "x", y = "y",
      title = "T", subtitle = "s")

data %>% filter(Country %in% c$Country) %>%
    ggplot(aes(x = Country, y = Industry_Income, col = Country)) + guides(col = FALSE) +
    geom_boxplot() + theme_bw() + coord_flip() +
    labs(x = "x", y = "y",
      title = "T", subtitle = "s")
