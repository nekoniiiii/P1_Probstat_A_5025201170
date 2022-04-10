# Praktikum Modul 1 Probabilitas dan Statistik

**Nama: Neisa Hibatillah Alif <br />
NRP: 5025201170 <br />
Kelas A**

## 1
### a. <br />
Menggunakan fungsi `dgeom()`:
```
p = 0.2
x = 3
dgeom(x, p)
```
Hasil: <br />
![image](https://user-images.githubusercontent.com/72701806/162611163-2fd247e6-a2e1-47a4-b54f-78c3cc9096f9.png)

### b. <br />
Menggunakan fungsi `mean()` dan `rgeom()`:
```
n = 10000
mean(rgeom(n, p) == 3)
```
Hasil: <br />
![image](https://user-images.githubusercontent.com/72701806/162611292-aa025a6d-7b81-47e6-8d0d-5e1c67c80bca.png)

### c. <br />
Hasil pada b mendekati hasil pada a. Nilai pada b berubah-ubah karena data yang diambil selalu acak.

### d. <br />
Histogram distribusi geometrik, peluang X = 3 gagal sebelum sukses pertama. <br />

```
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
```
Hasil: <br />
![image](https://user-images.githubusercontent.com/72701806/162611451-7cb094ea-3cac-4864-b503-dbf5116c006e.png)

### e. <br />
Rataan = 1/p <br />
Varian = (1-p)/p^2 <br />
```
mean <- 1/p
var <- (1-p)/p^2
mean
var
```
Hasil: <br />
![image](https://user-images.githubusercontent.com/72701806/162616393-08a0db39-444f-4a77-b398-e0b612c9a4b1.png)

## 2
### a. <br />
Menggunakan fungsi `dbiom()`:
```
n = 20
p = 0.2
x = 4
dbinom(x, n, p)
```
Hasil: <br />
![image](https://user-images.githubusercontent.com/72701806/162616511-6fa8cb78-e192-4097-b217-c17ad6b6c6ae.png)

### b. <br />
Histogram distribusi binomial
```
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
```
Hasil: <br />
![image](https://user-images.githubusercontent.com/72701806/162616617-5a591cee-33fa-4243-9dea-afd963353424.png)

### c. <br />
Rataan = n*p <br />
Varian = n*p*(1 - p) <br />
```
mean <- n*p
var <- n*p*(1 - p)
mean
var
```
Hasil: <br />
![image](https://user-images.githubusercontent.com/72701806/162616681-6bfe0552-dbd4-4fce-acdf-9c1eb4f2e3c8.png)

## 3
### a. <br />
Menggunakan fungsi `dpois()`:
```
lambda = 4.5
x = 6
dpois(x, lambda)
```
Hasil: <br />
![image](https://user-images.githubusercontent.com/72701806/162616716-5e3a63f7-3a0a-40d4-a052-fd577a807083.png)

### b. <br />
Histogram distribusi poisson dengan 365 data random.
```
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
```
Hasil: <br />
![image](https://user-images.githubusercontent.com/72701806/162616834-39cda706-32a7-41f3-a995-3390b99a19aa.png)

### c. <br />
Hasil dari a dan b kurang lebih sama sehingga estimasi pada 365 hari masih mendekati estimasi 6 bayi yang lahir keesokan harinya.

### d. <br />
Rataan = lambda <br />
Varian = lambda <br />
```
mean <- lambda
variance <- lambda
mean
variance
```
Hasil: <br />
![image](https://user-images.githubusercontent.com/72701806/162617016-f8bed62f-c509-412e-95ef-c1facb04f230.png)

## 4
### a. <br />

```

```
Hasil: <br />


### b. <br />

```

```
Hasil: <br />


### c. <br />


### d. <br />


```

```
Hasil: <br />

