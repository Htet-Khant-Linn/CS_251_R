# Creating Scatter Plot 

head(mtcars)

plot(mtcars$wt, mtcars$mpg)

library(ggplot2)

ggplot(mtcars, aes (x = wt, y = mpg)) + geom_point()


#creating a line graph 

head(pressure)

plot(pressure$temperature, pressure$pressure, type = "l")
points(pressure$temperature, pressure$pressure)

lines(pressure$temperature, pressure$pressure/2, col= "red")
points(pressure$temperature, pressure$pressure/2, col= "red")

ggplot(pressure, aes (x = temperature, y = pressure)) + geom_line()+ geom_point()

#Creating a bar graph 

head(BOD)
barplot(BOD$demand, name.arg= BOD$Time)

ggplot(BOD, aes(x= Time, y= demand)) + geom_col()

ggplot(BOD, aes(x= factor(Time), y= demand)) + geom_col() # factor make x into discreet value 

ggplot(mtcars, aes( x= cyl)) + geom_bar()

#crating a histogram

hist(mtcars$mpg)
hist(mtcars$mpg, breaks = 7)

ggplot(mtcars, aes(x = mpg)) + geom_histogram(binwidth = 4)

#Creating box plot
head(ToothGrowth)

plot(ToothGrowth$supp, ToothGrowth$len)

boxplot(len ~ supp, data = ToothGrowth)
boxplot(len ~ supp + dose, data = ToothGrowth)                                                              

?ggplot2()
library(ggplot2)
ggplot2(ToothGrowth, aes (x = supp)) + geom_boxplot( data = NULL,
                                                     stat = "boxplot",
                                                     position = "dodge2")

?geom_boxplot
ggplot(ToothGrowth, aes(x = supp, y = len)) + 
  geom_boxplot

ggplot(ToothGrowth, aes(x = interaction(supp, dose), y = len)) + 
  geom_boxplot()


#Plotting a function curve


curve(x^3 - 5*x, from = -4, to= 4)

myfun <- function(xvar) {
  1 / (1 + exp(-xvar + 10))
}

myfun(3)

curve(myfun(x), from = 0, to = 20)
curve(1- myfun(x), add = TRUE, col = "red")




ggplot() +
  xlim(0, 20) +
  geom_function(fun = myfun, color = "blue")+
  geom_function(fun = function(x) 1 - myfun(x), color = "red") 



#making corelation matrix

head(mtcars)
cor(mtcars)

mcor = cor(mtcars)
install.packages("corrplot")
library(corrplot)

corrplot(mcor)

corrplot(mcor, method = "shade", shade.col = NA, tl.co. = "black", tl.srt= 45)

# Generate a lighter palette
col <- colorRampPalette(c("#BB4444", "#EE9988", "#FFFFFF", "#77AADD", "#4477AA"))

corrplot(mcor, method = "shade", shade.col = NA, tl.col = "black", tl.srt = 45,
         col = col(200), addCoef.col = "black", cl.pos = "n", order = "AOE")


# creating a network graph 
install.packages("igraph")
library (igraph)

gd <- graph(c(1,2, 2,3, 2,4, 1,4, 5,5, 3,6))
plot(gd)

gu <- graph(c(1,2, 2,3, 2,4, 1,4, 5,5, 3,6), directed = FALSE)
plot(gu, vertex.label = NA)

install.packages("gcookbook")
library(gcookbook)

head(madmen2)

 g = graph.data.frame(madmen2, directed=TRUE)
 

 par(mar = c(0, 0, 0, 0))
 plot(g, layout = layout.fruchterman.reingold, vertex.size = 8,
      edge.arrow.size = 0.5, vertex.label = NA)
 
 
 g <- graph.data.frame(madmen, directed = FALSE)
 par(mar = c(0, 0, 0, 0))  # Remove unnecessary margins
 plot(g, layout = layout.circle, vertex.size = 8, vertex.label = NA)
 