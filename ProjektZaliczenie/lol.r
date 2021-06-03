
data %>% group_by(Country) %>% summarise(n = length(Teaching)) %>% top_n(10, n) %>% ungroup() -> c

# teach
data %>% filter(Country %in% c$Country) %>%
    ggplot(aes(x = Country, y = Teaching, col = Country)) + guides(col = FALSE) +
    geom_boxplot() + theme_bw() + coord_flip() +
    labs(x = "x", y = "y",
      title = "T", subtitle = "s") 

# research
data %>% filter(Country %in% c$Country) %>%
    ggplot(aes(x = Country, y = Research, col = Country)) + guides(col = FALSE) +
    geom_boxplot() + theme_bw() + coord_flip() +
    labs(x = "x", y = "y",
      title = "T", subtitle = "s")

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
