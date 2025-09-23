
v <- c(11, 12, 13, 14, 15)
w <- c(1, 2, 3, 4, 5)

v + w

v - w

v * w

v / w

mean(w)

v - mean(w)

(w - mean(w)) / sd(w)

sqrt(w)

log(w)

sin(w)

#############################


n <- 10

0:n - 1
0: (n - 1)

#############################

# pipelines of function calls

# %>%


data(mpg)
head(mpg)
dim(mpg)

mpg %>%
  filter(cty > 21) %>%
  head(5)

temp1 = filter(mpg, cty > 21)
head(temp1, 5)




mpg %>%
  filter(cty > 21) %>%
  select(cty, hwy) %>%
  ggplot(aes(cty, hwy)) + geom_point()


v = 1
v == 0

x = 1:10
n <- 5
truehist(x, n)

getwd()
setwd("D:/R/Stat with R")


search()
library()
help(mpg)
