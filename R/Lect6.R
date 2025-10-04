#5 Data Structures 

#if want to associate name with values (indexing with name)

values = c(1,2,3)
names = c("a","b","c")
lst = list()
lst[names] = values 
lst


values = -2:2
names = c("far.left", "left", "mid", "right", "far.right")
lst = list()
lst[names] = values 
lst

lst = list (far.left=-3, left= -2, .....) #otherway but not easier 
lst

#calling values from index and removing 
years <- list(Kennedy = 1960, Johnson = 1964,
              Carter = 1976, Clinton = 1994)
years

years["Johnson"] #removing values 

years[["Carter"]] = NULL
years

years = list(Kennedy = 1960, Johnson = 1964,
              Carter = 1976, Clinton = 1994)
years[c("Carter", "Clinton")] = NULL    #c means combine 
years

years = list(Kennedy = 1960, Johnson = 1964,
             Carter = 1976, Clinton = 1994)
years["Johnson"] = NULL
years

################################################
#Flatten list to a vector 


iq.scores <- list(100, 120, 103, 80, 99)
mean(iq.scores) #without un listing we can't calculate mean
mean(unlist(iq.scores))

lst <- list("Moe", NULL, "Curly")
lst

#Removing NA and NULL values 
library(purrr)

compact(lst) #removing NULL in lst

lst <- list(NA, 0, NA, 1, 2)

compact(lst) #doesnt work on NA, only on NULL

lst %>%
  discard(is.na) #removing NA

lst <- list(3, "dog", 2, "cat", 1)

lst %>%
  discard(is.character) #removing characters


#################################
#Initializing a matrix

vec <- 1:6
vec

matrix(vec, 3, 2)

matrix(0, 10, 3)

matrix(NA, 2, 3)

theData <- c(
  1.1, 1.2, 1.3,
  2.1, 2.2, 2.3
)

matrix(theData, 2, 3)

v <- c(1.1, 1.2, 1.3, 2.1, 2.2, 2.3)
dim(v) <- c(2,3)


v

##############################################

v <- c(1.1, 1.2, 1.3, 2.1, 2.2, 2.3, 4, 6, 6)

dim(v) <- c(3, 3)

v
 
t(v) #transpose = changing the rows and columns

solve(v) #inverse of the matrix
solve(v)  #matrix have to be square , not 2x3

 
v %*% v #square

#naming columns and row in matrix 
colnames(v) = c("a", "b", "c")
v

rownames(v) = c("d", "e", "f")

v[1, ] #first column
v[ ,1] # first row

v[,3] #third row
v[3,3]

#########################################


w= c(1.1,1,1,2,2.2,2.3,8,9,6)
dim(w) = c(3,3)

w
colnames(w) <- c("a", "b", "c")

rownames(w) <- c("d", "e", "f")

w


#combining data frames 

df = data.frame(v,w)   #join by column
df

df_2 = rbind(v,w) #join by row 
df_2


df_2[,-3] #removing last row 

#Renaming 
library(dplyr) #rename function is in dplyr

df <- data.frame(V1 = 1:3, V2 = 4:6, V3 = 7:9)
df %>% rename(a=V1, b=V2)
df


