#Probability

# dnorm == normal density 

# pnorm == normal distribution function 

# qnorm == normal quantile function 

# rnorm == normal random variate 

#------------------------------------#

# Combinations 

choose(5,2) #choose 2 from total of 5 
choose (100, 6)
choose(50,3)

items = 2:5
k = 2

combn(items, k)

items = 1:5
k = 3

combn(items, k)

choose(5,2)

T = c("T1", "T2", "T3", "T4", "T5")
combn(T , 3)

#-----------------------------------#
#Generating Random Numbers

runif(1) #means give me one random num between 0 and 1 

runif(3) #3 random num between 0 & 1
?rnorm
rnorm(4) #generate 4 num from normal distribution 
?runif
runif (1, min = -3, max =3)
rnorm(1) #strandard normal distrubition 
rnorm (1, mean= 100, sd=14) 

#binomial 
?rbinom
rbinom(1, size=10, prob= 0.5)

rbinom(15, size = 100, prob = 1/3) 


# 10 Poisson variates, lambda=10
?rpois
rpois(10,lambda=10) 

#10 exponential variates, rate = 0.1

rexp(10, rate=0.1)

#10 gamma variates, shape= 2, rate=0.1
?rgamma
rgamma(10, shape=2, rate=0.1)

means = rnorm(30,0,0.2)
rnorm(30, mean = means, sd=1)

#-------------------------#


rbinom(1,10,0.5)

set.seed(8)
rbinom(9,10,0.5)

#-------------------#

#Generating a Random Sample 
#default is no replacement after picking 
coin = c("H", "T")
sample(coin, 10, replace = TRUE)
sample(coin, 2, replace = FALSE) 

sample(1:15, 5, replace=TRUE)

sample(1:5,2, replace = TRUE)
sample(1:5,2, replace = FALSE)

sample(1:5, size = 2, replace = TRUE)

sample(c(FALSE,TRUE), 20, replace= TRUE)


#Calculating Probabilities for Discrete Distrubution        
#P (X=x)

#binormal randm variables x over 10 trials , where each trial has a success probability of 0.5
#Then we calcluate the probability of observing x=7 by calling 


dbinom(7, size =10, prob =0.5)

#P(x <= 7)

pbinom(7, size=10, prob = 0.5, lower.tail = FALSE)
1-pbinom(7,size=10, prob =0.5)

#P (x1 < x < x2) = P (X <- x2) - P (x - x1)
