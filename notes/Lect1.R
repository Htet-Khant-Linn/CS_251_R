3 + 77

30/3

die = 1:6
die

a = 5

a + 2

die = 1:20 # this will overwrite die

ls()  # check the env values
# list objects

?ls() # help


die/2
die * die
die = 1:6

#############################

round(3.1415)
round(3.1415, 2)

factorial(6)

average = mean(die)
round(average)

set.seed(1)
sample(die, 2)

sample(die, 5, replace = TRUE)


#############################

die

dice = sample(die, 5, replace = TRUE)
mean(dice)
sum(dice)
sd(dice)

############################

x = c(1, 3, 6, 9, 11, 17)
y = x^2

x + y

plot(x)



z = replicate(10, 3)
z