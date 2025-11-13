#Linear Regression and ANOVA 

set.seed(42)

x= rnorm(100)
e= rnorm(100,mean=0, sd=5)

y = 5+15 * x+e

x
y

# stimulated values of x and y and believe that there is linear regression

lm(y ~ x) #x is independent

df = data.frame(x,y)
head(df)
lm(y~x , data= df)

##############################

#Performing Multiple Linear Regression 

set.seed(42)
u <- rnorm(100)
v <- rnorm(100, mean = 3,  sd = 2)
w <- rnorm(100, mean = -3, sd = 1)
e <- rnorm(100, mean = 0,  sd = 3)


y= 5+4  *u +3 *v+2 *w+e

lm (y~ u+v+w)

#another way 
df = data.frame (y,u,v,w)
head(df)

lm (y~ u+v+w)

m = lm(y~ u+v+w, data=df)
summary(m)

#r square, indicator of model good or bad> close to 0, model is bad, close to 1 , model is good 
# p-value is for the whole model 
#nidek coef (point estimates)
coef(m)
#confidence intervals of model coeffcients 
confint(m)

#model residuals 
resid(m)
head(resid(m))

lm(y~x +0)
############################
#Performing Linear Regression with Intersection Terms

lm (y~ u*v)
a=lm(y~ u*v*w)
summary(a)

