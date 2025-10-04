# Combining Data Frames 

df1 <- data.frame(a = c(1,2))
df2 <- data.frame(b = c(7,8))

cbind(df1, df2)  #combine data vertically (column bind)

df1 <- data.frame(x = c("a", "a"), y = c(5, 6))
df2 <- data.frame(x = c("b", "b"), y = c(9, 10))

rbind(df1, df2) #combine data horizontally (row bind)

##############################################
#Merging Data frames by common column (merging data , when two data set has common variable 
library (dplyr)

born <- tibble(
  name = c("Moe", "Larry", "Curly", "Harry"),
  year.born = c(1887, 1902, 1903, 1964),
  place.born = c("Bensonhurst", "Philadelphia", "Brooklyn", "Moscow")
)

died <- tibble(
  name = c("Curly", "Moe", "Larry"),
  year.died = c(1952, 1975, 1975)
)

born  #can just highlight and run too
died

##1- Inner Join 
inner_join(born, died, by= "name")  #combine by relation "name", omit unmatched names

##2- Full Join  
full_join(born, died, by="name") #not omit unmatched names 

##3- Left Join 
left_join(born, died, by= "name")  #combine to born's (left's) table

##3- Right Join 
right_join(born, died, by= "name") #combine to died's table 


#remarks 

full_join(born, died) #if not specify, it will join common variable by default 

###################################################################
#what if there is no common unique value? 
df1 <- data.frame(key1 = 1:3, value=2)
df2 <- data.frame(key2 = 1:3, value=3)
#just change the name to make it common, or tell R they are = 
df1
df2
full_join(df1,df2, by = c("key1" = "key2"))

##############################################

#converting one atomic value into another 

typeof("3.14")    #checking what type is it
as.numeric("3.14")  #changing to numeric 

typeof(as.numeric("3.14"))

as.integer("3.14")
typeof(as.integer("3.14"))

as.numeric("Mo") #but obvi can't change words to num


as.character(99)
typeof(as.character(99))

as.numeric(c("1","2.718","7.389", "20.086")) #fix to the largest numeric type

as.numeric(c("1","2.718","7.389", "20.086", "etc")) #comvert everthing except words

###################################

#Data Transformations 
#applying a function to each list element (calculate 2 dfs at the same time )

library(tidyverse)

lst= list(
  a= c(1,2,3),
  b= c(4,5,6)
)

lst %>%
  map(mean)  #return bot a and b's avg

fun = function(x) {   #defining a function with condition
  if (x > 1) {
    1
  } else {
    "Less Than 1"
  }
}

fun(2)
fun(0.3)
#practice 
fun_2 = function (x) {
  if (x>1) {
    1
  } else {
    "hey loser, make it 2"
  }
}

fun_2(-1)
#############
fun <- function(x) {
  if (x > 1) {
    1
  } else {
    "Less Than 1"
  }
}

# calculating values from list at once with map
lst <- list(.5, 1.5, .9, 2)

map(lst, fun)   #1stway


lst %>%  #2ndway
  map(fun)
#########################################


df = data.frame(mn = c(1,2,3),
                mx = c(8,13,18),
                rng= c(1,2,3))

fun = function(a,b,c) {
  sum(seq(a,b,c))
}

df %>% 
  rowwise %>%  #calculate by row 
  mutate(output= fun (a=mn, b = mx, c= rng)) #mutate= attach it to data 

#ans 1 output = sum of 1 to 8 seq 


df = data.frame(mn = c(1,2,3),
                mx = c(8,13,18),
                rng= c(1,2,3)) #range (like how many to jump)

fun = function(a,b,c) {
  max(seq(a,b,c))
}

df %>% 
  rowwise %>%  #calculate by row 
  mutate(output= fun (a=mn, b = mx, c= rng))




####################################################


long = matrix (1:15, 3, 5)
long

apply (long, 1, mean) #mean for each row 
