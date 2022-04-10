# a
p = 0.2
x = 3
dgeom(x, p)

# b
n = 10000
mean(rgeom(n, p) == 3)

# c
###

# d
library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dgeom(x = 0:10, p)) %>%
  mutate(Failures = ifelse(x == 3, 3, "lainnya")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() + 
  geom_text(aes(label = round(prob,2), 
                y = prob + 0.01),
                position = position_dodge(0.9),
                size = 3,
                vjust = 0) +
  labs(subtitle = "Geometric(0.2)",
       x = "Gagal sebelum sukses pertama (x)",
       y = "Probabilitas") 

# e
mean <- 1/p
var <- (1 - p) / p^2
mean
var
