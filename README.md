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
Hasil pada b mendekati hasil pada a. Nilai pada b berubah-ubah karena data yang diambil selalu acak

### d. <br />
Histogram distribusi geometrik, peluang X = 3 gagal sebelum sukses pertama <br />

```
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
```
Hasil: <br />
![image](https://user-images.githubusercontent.com/72701806/162611451-7cb094ea-3cac-4864-b503-dbf5116c006e.png)

### e. <br />
Rataan = 1/p <br />
Varian = (1 - p) / p^2 <br />
```
mean <- 1/p
var <- (1 - p) / p^2
mean
var
```
Hasil: <br />
![image](https://user-images.githubusercontent.com/72701806/162611519-3a359b8b-a18c-4910-ba66-3f74c8349db0.png)

## 2
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



