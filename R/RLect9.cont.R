# the value of x such that p(X ≤ x )= P

#P (X ≤ x) = 0.05

#x has N(100,15)

qnorm(0.05, mean=100, sd=15)


#P (X ≤ x) = 0.1

#x has stand normal 

?qnorm #if we don't specify mean and sd, it will default to standard normal
qnorm(0.1)
qnorm(0.1, mean=0, sd=1) #otherwise, u can add mean=0, sd=1 for standard normal
qnorm(0.1,0,1)

#95% confidence interval ( α = 0.05) of a standard normal variable

#α/2 = 0.025 and (1-α)/2 = 0.975 

qnorm(0.025)
qnorm(0.975)
qnorm(c(0.025, 0.975))

#Discrete quantile distributions
#Binominal qbinom(*p*, *size*, *prob*)
#Geometric qgenom(*p*, *prob*)
#Poisson qpois (*p*, *lambda*)

#Continuous quantile distributions
#Normal qnorm(*p*, *mean*, *sd*)
#Student's t qt(*p*, *df*)
#Exponential qexp (*p*, *rate)
#Chi-squared (χ²)) qchisq (*p*, *df*)



#Plotting density 


library(ggplot2)

x <- seq(-3, +3, 0.1)
dens <- data.frame(x = x, y = dnorm(x))

ggplot(dens, aes(x, y)) + geom_line() 

#if x has N(100,15), plot density of x 
 x = seq (0, +200, 5)
dens= data.frame (x= x, y= dnorm(x,100,15))
ggplot(dens, aes(x, y)) + geom_line() 

 #####################################################
# Define the density domains
x <- seq(from = 0, to = 6, length.out = 100) 
x 
ylim <- c(0, 0.6)
ylim

df= rbind (
  data.frame(x=x, dist_name= "Uniform", y = dunif(x, min =2,max=4)),
  data.frame(x=x, dist_name= "Normal", y = dnorm(x, mean =3,sd=1)),
  data.frame(x=x, dist_name= "Exponential", y = dexp(x, rate=1/2)),
  data.frame(x=x, dist_name= "Gamma", y = dgamma(x, shape =2,rate=1))
  
)
head(df)
summary(df)

ggplot(data = df, aes(x = x, y = y)) +
  geom_line() +
  facet_wrap(~dist_name)
########################################
x <- seq(from = -3, to = 3, length.out = 100)
df <- data.frame(x = x, y = dnorm(x, mean = 0, sd = 1))

p <- ggplot(df, aes(x, y)) +
  geom_line() +
  labs(
    title = "Standard Normal Distribution",
    y = "Density",
    x = "Quantile"
  )
px <- seq(from = -3, to = 3, length.out = 100)
df <- data.frame(x = x, y = dnorm(x, mean = 0, sd = 1))

p <- ggplot(df, aes(x, y)) +
  geom_line() +
  labs(
    title = "Standard Normal Distribution",
    y = "Density",
    x = "Quantile"
  )
p
###################
q75 <- quantile(df$x, .75)
q95 <- quantile(df$x, .95)

p +
  geom_ribbon(
    data = subset(df, x > q75 & x < q95),
    aes(ymax = y),
    ymin = 0,
    fill = "blue",
    colour = NA,
    alpha = 0.5
  )

#############################

df <- rbind(
  data.frame(x = x, dist_name = "Uniform"    , y = dunif(x, min   = 2, max = 4)),
  data.frame(x = x, dist_name = "Normal"     , y = dnorm(x, mean  = 3, sd = 1)),
  data.frame(x = x, dist_name = "Exponential", y = dexp(x, rate  = 1 / 2)),
  data.frame(x = x, dist_name = "Gamma"      , y = dgamma(x, shape = 2, rate = 1)) )


head(df)
summary(df)


table(df$dist_name) 

#################################################

initial <- factor(sample(c("Yes", "No", "Maybe"), 100, replace = TRUE))
outcome <- factor(sample(c("Pass", "Fail"), 100, replace = TRUE))

table(initial)
table(outcome)
table(initial, outcome) 
summary(table(initial, outcome))

####################################
?t.test
x <- rnorm(75, mean = 100, sd = 15)
t.test(x, mu = 95)
