# a
n = 100
mean = 5
sd = 8

z <- rnorm(n, mean, sd)
z

plot(z)

# b
hist(z, breaks = 50, 
     main = "5025201170_Neisa Hibatillah Alif_Probstat_A_DNhistogram")

# c
variance <- sd^2
variance
