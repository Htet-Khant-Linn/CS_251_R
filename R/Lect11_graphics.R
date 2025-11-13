#Graphics using R 

library(tidyverse)

df = data.frame(x = 1:5, y = 1:5)
df

?ggplot
ggplot(df, aes(x, y)) +
  geom_point()

plot(df)

#adding title to plot 

ggplot(df, aes(x, y)) +
  geom_point() +
  labs(
    title = "Example",
    subtitle = "this is example",
    x = "x",
    y = "y"
  )+
  theme(panel.background = element_rect(fill= "blue", colour= "green"))



ggplot(df, aes(x, y)) +
  geom_point() +
  labs(
    title = "Simple Plot Example",
    subtitle = "with a subtitle",
    x = "x-values",
    y = "y-values"
  ) +
  theme(panel.background = element_rect(fill = "white", colour = "grey50"))

################################################################
head(mtcars)
?mtcars
g1= ggplot(mtcars, aes(hp,mpg))+ 
  geom_point()+
  labs(
    title= "Cars: Horsepower vs. Fuel Economy",
    subtitle= "subtitle",
    x= "HP",
    y= "Economy (miles per gallon)",
  )+ 
  theme(panel.background = element_rect(fill="white", colour= "red"))

g1

g2= ggplot(mtcars, aes(hp,mpg))+ 
  geom_point()+
  labs(
    title= "Cars: Horsepower vs. Fuel Economy",
    subtitle= "subtitle",
    x= "HP",
    y= "Economy (miles per gallon)",
  )+ 
  theme(panel.background = element_blank())
g2

g2 <- g1 + theme(panel.grid.major =
                   element_line(color = "black", linetype = 3)) + 
  # linetype = 3 is dash
  theme(panel.grid.minor =
          element_line(color = "darkgrey", linetype = 4)) 
# linetype = 4 is dot dash
g2

g3= g1+ 
  theme(panel.grid.major = element_line(colour= "grey"))
g3



p <- ggplot(mtcars, aes(x = disp, y = hp)) +
  geom_point() +
  labs(title = "mtcars: Displacement vs. Horsepower",
       x = "Displacement (cubic inches)",
       y = "Horsepower")
p

theme_bw()
theme_dark() 
theme_classic()
theme_gray()
theme_linedraw()
theme_light()
theme_minimal()
theme_test()
theme_void()

p+ theme_bw()
p+ theme_dark() 
p+theme_classic()
p+theme_gray()
p+theme_linedraw()
p+theme_light()
p+theme_minimal()
p+theme_test()
p+theme_void()



########################################
#Creating a Scatter Plot of Multiple Groups 

iris
head(iris)
?iris

ggplot(data = iris,
       aes(x= Petal.Length,
           y= Petal.Width))+
  geom_point()

ggplot(data = iris,
       aes(x= Petal.Length,
           y= Petal.Width,
           shape = Species,
           color = Species))+
  geom_point() + theme(legend.position = "top")



ggplot(data = iris,
       aes(x= Petal.Length,
           y= Petal.Width,
           shape = Species,
           color = Species))+
  geom_point() + theme(legend.position = c(.8, .2))





