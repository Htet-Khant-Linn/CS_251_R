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
 
 
 #Text Label in network graph 
 
 library(igraph)
 library(gcookbook)
 
head(madmen)

m <- madmen[1:nrow(madmen) %% 2 == 1, ]
m

g = graph.data.frame(m, directed=FALSE) 
V(g)$name

plot(g, layout=layout.fruchterman.reingold,
     vertex.size = 4,          # Smaller nodes
     vertex.label = V(g)$name, # Set the labels
     vertex.label.cex = 0.8,   # Slightly smaller font
     vertex.label.dist = 0.4,  # Offset the labels
     vertex.label.color = "red")
#######################


#Creating a Heat Map (used for 3 dimension data exploration)
?presidents
presidents
str(presidents) #check data type

pres_rating <- data.frame(
  rating = as.numeric(presidents),
  year = as.numeric(floor(time(presidents))),
  quarter = as.numeric(cycle(presidents))
) #change format of data 

pres_rating
library(ggplot2)
p <- ggplot(pres_rating, aes(x = year, y = quarter, fill = rating))
p+ geom_tile()
p+ geom_raster()

p +
  geom_tile() +
  scale_x_continuous(breaks = seq(1940, 1976, by = 4), expand = c(0, 0)) +
  scale_y_reverse(expand = c(0, 0)) +
  scale_fill_gradient2(midpoint = 50, mid = "lightblue", limits = c(0, 100))


#####################

#creating 3 D scatterplot

install.packages("rgl")
library(rgl)
head(mtcars)

plot3d(mtcars$wt, mtcars$disp, mtcars$mpg, type = "s", size = 0.75, lit = FALSE)

interleave <- function(v1, v2)  as.vector(rbind(v1,v2))

# Plot the points
plot3d(mtcars$wt, mtcars$disp, mtcars$mpg,
       xlab = "Weight", ylab = "Displacement", zlab = "MPG",
       size = .75, type = "s", lit = FALSE)

# Add the segments
segments3d(interleave(mtcars$wt,   mtcars$wt),
           interleave(mtcars$disp, mtcars$disp),
           interleave(mtcars$mpg,  min(mtcars$mpg)),
           alpha = 0.4, col = "blue")


plot3d(mtcars$wt, mtcars$disp, mtcars$mpg,
       xlab = "", ylab = "", zlab = "",
       axes = FALSE,
       size = .75, type = "s", lit = FALSE)

segments3d(interleave(mtcars$wt,   mtcars$wt),
           interleave(mtcars$disp, mtcars$disp),
           interleave(mtcars$mpg,  min(mtcars$mpg)),
           alpha = 0.4, col = "blue")

# Draw the box.
rgl.bbox(color = "grey50",          # grey60 surface and black text
         emission = "grey50",       # emission color is grey50
         xlen = 0, ylen = 0, zlen = 0)  # Don't add tick marks

rgl.material(color = "black")

# Add axes to specific sides. Possible values are "x--", "x-+", "x+-", and "x++".
axes3d(edges = c("x--", "y+-", "z--"),
       ntick = 6,                       # Attempt 6 tick marks on each side
       cex = .75)                       # Smaller font


# Add axis labels. 'line' specifies how far to set the label from the axis.
mtext3d("Weight",       edge = "x--", line = 2)
mtext3d("Displacement", edge = "y+-", line = 3)
mtext3d("MPG",          edge = "z--", line = 3)

#########################
#adding prediction surface to 3D plot

# Given a model, predict zvar from xvar and yvar
# Defaults to range of x and y variables, and a 16x16 grid
predictgrid <- function(model, xvar, yvar, zvar, res = 16, type = NULL) {
  # Find the range of the predictor variable. This works for lm and glm
  # and some others, but may require customization for others.
  xrange <- range(model$model[[xvar]])
  yrange <- range(model$model[[yvar]])
  
  newdata <- expand.grid(x = seq(xrange[1], xrange[2], length.out = res),
                         y = seq(yrange[1], yrange[2], length.out = res))
  names(newdata) <- c(xvar, yvar)
  newdata[[zvar]] <- predict(model, newdata = newdata, type = type)
  newdata
}

# Convert long-style data frame with x, y, and z vars into a list
# with x and y as row/column values, and z as a matrix.
df2mat <- function(p, xvar = NULL, yvar = NULL, zvar = NULL) {
  if (is.null(xvar)) xvar <- names(p)[1]
  if (is.null(yvar)) yvar <- names(p)[2]
  if (is.null(zvar)) zvar <- names(p)[3]
  
  x <- unique(p[[xvar]])
  y <- unique(p[[yvar]])
  z <- matrix(p[[zvar]], nrow = length(y), ncol = length(x))
  
  m <- list(x, y, z)
  names(m) <- c(xvar, yvar, zvar)
  m
}

interleave = function (v1,v2) as.vector(rbind(v1,v2))

library(rgl)

# Make a copy of the data set
m <- mtcars

# Generate a linear model
mod <- lm(mpg ~ wt + disp + wt:disp, data = m)

# Get predicted values of mpg from wt and disp
m$pred_mpg <- predict(mod)

# Get predicted mpg from a grid of wt and disp
mpgrid_df <- predictgrid(mod, "wt", "disp", "mpg")
mpgrid_list <- df2mat(mpgrid_df)

# Make the plot with the data points
plot3d(m$wt, m$disp, m$mpg, type = "s", size = 0.5, lit = FALSE)

# Add the corresponding predicted points (smaller)
spheres3d(m$wt, m$disp, m$pred_mpg, alpha = 0.4, type = "s", size = 0.5, lit = FALSE)

# Add line segments showing the error
segments3d(interleave(m$wt,   m$wt),
           interleave(m$disp, m$disp),
           interleave(m$mpg,  m$pred_mpg),
           alpha = 0.4, col = "red")

# Add the mesh of predicted values
surface3d(mpgrid_list$wt, mpgrid_list$disp, mpgrid_list$mpg,
          alpha = 0.4, front = "lines", back = "lines")




plot3d(mtcars$wt, mtcars$disp, mtcars$mpg,
       xlab = "", ylab = "", zlab = "",
       axes = FALSE,
       size = .5, type = "s", lit = FALSE)

# Add the corresponding predicted points (smaller)
spheres3d(m$wt, m$disp, m$pred_mpg, alpha = 0.4, type = "s", size = 0.5, lit = FALSE)

# Add line segments showing the error
segments3d(interleave(m$wt,   m$wt),
           interleave(m$disp, m$disp),
           interleave(m$mpg,  m$pred_mpg),
           alpha = 0.4, col = "red")

# Add the mesh of predicted values
surface3d(mpgrid_list$wt, mpgrid_list$disp, mpgrid_list$mpg,
          alpha = 0.4, front = "lines", back = "lines")

# Draw the box
rgl.bbox(color = "grey50",          # grey60 surface and black text
         emission = "grey50",       # emission color is grey50
         xlen = 0, ylen = 0, zlen = 0)  # Don't add tick marks

# Set default color of future objects to black
rgl.material(color = "black")

# Add axes to specific sides. Possible values are "x--", "x-+", "x+-", and "x++".
axes3d(edges = c("x--", "y+-", "z--"),
       ntick = 6,                       # Attempt 6 tick marks on each side
       cex = .75)                       # Smaller font

# Add axis labels. 'line' specifies how far to set the label from the axis.
mtext3d("Weight",       edge = "x--", line = 2)
mtext3d("Displacement", edge = "y+-", line = 3)
mtext3d("MPG",          edge = "z--", line = 3)

library(rgl)
plot3d(mtcars$wt, mtcars$disp, mtcars$mpg, type = "s", size = 0.75, lit = FALSE)

play3d(spin3d())

# Spin on x-axis, at 4 rpm, for 20 seconds
play3d(spin3d(axis = c(1,0,0), rpm = 4), duration = 20)



##################
#Creating QQ plot 

library(gcookbook) #for data set
head(heightweight)

ggplot(heightweight, aes(sample = heightIn)) +
  geom_qq() +
  geom_qq_line()

ggplot(heightweight, aes(sample = ageYear)) +
  geom_qq() +
  geom_qq_line()


# ecdf of heightIn
ggplot(heightweight, aes(x = heightIn)) +
  stat_ecdf()

# ecdf of ageYear
ggplot(heightweight, aes(x = ageYear)) +
  stat_ecdf()






