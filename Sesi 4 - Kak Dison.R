## mengenal conditional
naruto <- 200
luffy <- 300

if (naruto > luffy) {
  print("luffy baka")
} else {
  print("naruto aho")
}

## mengenal looping
for (natsu in 1:5) {
  print(natsu*2)
}

## gabungin conditional dan looping
for (goku in 1:6) {
  if (goku == 6) {
    print(paste("Nomor dadu", goku, "sudah selesai"))
  } else {
    print(paste("Nomor dadu", goku, "masih lanjut"))
  }
}

## membuat function
luas_persegi_panjang <- function(panjang,lebar) {
  print(panjang*lebar)
}
luas_persegi_panjang(4,5)

ab.testing <- function(viewerA,viewerB,buyerA,buyerB) {
  viewer = c(viewerA,viewerB)
  buyer = c(buyerA,buyerB)
  p.value = prop.test(x = buyer, 
                      n = viewer,
                      alternative = "less")
  print(p.value)
}
ab.testing(3450,3000,207,250)

## mengenal manipulasi data frame
install.packages("dplyr")
install.packages("tidyverse")
library(dplyr)
library(tidyverse)

# data
data("starwars")
summary(starwars)
glimpse(starwars)

# select
View(starwars %>% select(homeworld,name,mass))

# filter
filter(starwars, species == "Human")
filter(starwars, mass > 150)

# mutate
starwars %>% 
  select(name,mass) %>%
  mutate(mass2 = mass * 2,
         mass3 = mass ^ 2)

## Grafik
install.packages("ggplot2")
library(ggplot2)

data("mtcars")
View(mtcars)
glimpse(mtcars)
mtcars$cyl <- as.factor(mtcars$cyl)

# Grafik 1
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point()

# Grafik 2
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point(aes(size = qsec))

# Grafik 3
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_text(label = rownames(mtcars))

# Grafik 4
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth()

# Grafik 5
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth(method = lm)

# Grafik 6
ggplot(mtcars, aes(x = wt, y = mpg, shape = cyl, color = cyl)) +
  geom_point() +
  geom_smooth(method = lm, aes(fill = cyl))

# Grafik 7
ggplot(mtcars, aes(x = wt, y = mpg, shape = cyl, color = cyl)) +
  labs(title = "Grafik MTCARS") +
  labs(subtitle = "Perbandingan Tiga Model") +
  labs(caption = "copyright: skillacademy") +
  geom_point() +
  geom_smooth(method = lm, aes(fill = cyl))

## cara upload data
sasuke <- read.csv("/Users/agit/Documents/dataset.csv")


