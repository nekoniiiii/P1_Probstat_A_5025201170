# a
lambda = 4.5
x = 6
dpois(x, lambda)

# b
library(ggplot2)
library(dplyr)

set.seed(1)

histo <- data.frame('data' = rpois(365, lambda))

histo %>% ggplot() +
          geom_histogram(aes(x = data, 
                             y = stat(count / sum(count)),
                             fill = data == 6),
                         binwidth = 1,
                         color = 'black',) +
          scale_x_continuous(breaks = 0:10) + 
          labs(x = "Jumlah bayi yang lahir",
               y = "Proporsi",
               subtitle = "Poisson(0.45)") +
          theme_bw()

# c
###

# d
mean <- lambda
variance <- lambda
mean
variance
