# a
library("Rlab")

n = 20
p = 0.2
x = 4
dbinom(x, n, p)

# b
library(dplyr)
library(ggplot2)

data.frame(x = 0:20, prob = dbinom(x = 0:20, size = 20, p)) %>%
  mutate(Sembuh = ifelse(x == 4, "4", "lainnya")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Sembuh)) +
  geom_col() +
  geom_text(aes(label = round(prob,2), 
                y = prob + 0.01),
                position = position_dodge(0.9),
                size = 3,
                vjust = 0) +
  labs(subtitle = "Binomial(20, 0.2)",
       x = "Peluang sembuh (x)",
       y = "Probabilitas") 

# c
mean <- n*p
var <- n*p*(1 - p)
mean
var
