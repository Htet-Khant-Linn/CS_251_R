
pi
print(pi)

x <- 10
y <- 15

z <- c("three", "blind", "mice")

ls()
ls.str()

rm(x) # this clean x from global environment
rm(y, z) #removing two variables
y
ls()

#################################################

# creating a vector

c(1, 9, 7, 5, 6, 8, 6)
c("My", "FB", "Twitter")

v1 <- c(1, 6, 7)
v2 <- c(6, 7, 9)

v3 <- c("a", "b", "c")

v4 <- c(v1, v3)

mode(v1)

mode(v3)

mode(v4)

#####################################################################


x <- c(0, 1, 1, 2, 3, 5, 8, 13, 21, 34)

mean(x)
median(x)
mode(x)
sd(x)
var(x)


y = log(x+1)
y

mean(y)
median(y)
sd(y)
var(y)    
     
     
plot(x, y)

cor(x, y) # correlation

cov(x, y) # covariance

#################################################

x1 = c(0, 1, 1, 2, 3, NA)

mean(x1, na.rm = TRUE) # na.rm manage NA value
median(x1, na.rm = TRUE)
sd(x1, na.rm = TRUE)
var(x1, na.rm = TRUE)

plot(x1)


#################################################

# Creating Sequences

1:5
5:1

1:10

seq(1, 10, 2) # seq(from = , to = , by =)



#################################################

#Creating two vectors


x = 3
y = 4

x == y
x > y
y < x
x != y
x >= y
x <= y

v1 = c(1, 6, 7, 8)
v2 = c(6, 7, 9, 8)

v1 == v2
v1 != v2

v1 > v2
v1 >= v2

###############################################
# Vetor Element Selection

v1[1]
v1[3]
v1[-1] # remove the first element
v1[-4]
v1[2:4]

v <- c(3, 6, 1, 9, 11, 16, 0, 3, 1, 45, 2, 8, 9, 6, -4)

v[v > mean(v)]
v[v > median(v)]

v[ (v < quantile(v, 0.05)) | (v > quantile(v, 0.95)) ]
# element that is lower or upper 5 percent
plot(v)


years <- c(1960, 1964, 1976, 1994)
names(years) <- c("Kennedy", "Johnson", "Carter", "Clinton")


years["Carter"] # choosing vector by assigned name

years[c("Carter", "Clinton")]