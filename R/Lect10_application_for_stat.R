#Calculating Quantiles (and Quartiles ) of a Dataset

vec = runif(1000)
quantile (vec, .05)
quantile(vec, c(0.05, 0.5))

quantile(vec)

#Converting Data to z-scores

scale(vec)

x = rnorm(100, mean=5, sd=4)
head(x)
z=scale(x)
head(z)

#another way to use scale (manual)
z_2 = (x-mean(x)) /sd(x)
head(z_2)

############################

#Testing the Mean of a sample (t test)

x = rnorm(75, mean=100, sd=15)
t.test(x, mu = 95)

#99% confidence interval 

t.test(x, mu=95, conf.level= 0.99)

######################################

#Forming a confidence interval of a mediam
wilcox.test(x, conf.int = TRUE)


###################################

#Testng a sample proportion 
?prop.test(x,n,p)

prop.test(11,20,0.5, alternative = 'greater') #95 CI is default

prop.test(11,20,0.5, alternative = 'greater', conf.level = 0.99)

##################################

#Testing for Normality

?shapiro.test(x)


#Example 
#Generate 1000 observations from from uniform and test its normality

n= runif(1000)
shapiro.test(n) 


#####################################
#Comparing the means of two samples 

x= rnorm(75, 100,15)
y= rnorm(75, 50, 10)
t.test(x,y)



x= rnorm(75, 100,15)
y= rnorm(75, 100, 10)
t.test(x,y, paired = TRUE)


##################################
#Testing a correlation for significance


cor(x,y)   

cor.test(x,y)


x= runif(1000)
y= runif(1000)
cor.test(x,y) # when p value is greater than 0.05, significantly correlated


#Testing Groups for Equal Proportions 

success = c(14,10)
trials = c(38,40)
prop.test(success, trials)


#Testing two samples for the same distrubution 
?ks.test
ks.test(x,y)
