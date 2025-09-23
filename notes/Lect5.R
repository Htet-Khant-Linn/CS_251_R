# Data Structures

v = c (10, 20, 30) 

names(v) = c(" Moe", "Larry", "Curly") 

print(v)  #combining numerical data with str

v[2]   #selecting by index

v[["Larry"]]  #selecting by name *2 parenthesis


#checking types of data

mode(v)  #number 

mode("Moe") #str 
mode(v[["Moe"]]) #check Moe's v
length(v)  #How many elements 

####################################################

d= as.Date("2010-03-15")  #checking type of data 
mode(d)

class(d) #classification 

#metric (vector that has dimemsions)

A= 1:6
dim(A)  #Null bc no dim yet
print(A)

dim(A)= c(2,3) #give A dimensions 2 rows x 3 columns 
print(A)
dim(A)

B = list(1,2,3,4,5,6) #list give each value into 1 list, list1=1, list 2=2
B


dim(B) = c(2,3)  #put the values into correct dim , eg. 4*4 is not ok if not 8 values

dim(B)
print(B)

############################

D = 1:12
D

dim(D) = c(2,3,2)  #2seperate array, each one 3x2
D

#mix of data types

c = list(1,2,3, "X", "Y", "Z") 
c
dim(c)= c(2,3)
print(c)

#################################################

#appending Data to a Vector 

v = c(1,2,3)
newitems = c(6,7,8)
total = c(v, newitems) #append 
total


length(v)
length(newitems)

v[4] = 33 #index v's num 4 which doesnt contain value to append
v

v[length(v)+1] = 44 #this way doesn't need to count index 
v

length(v)
v

v = c(1,2,3)  #another way to append
v= c(v, 44)
v
w= c(5,6,7,8) 
v= c(v,w)


v = c(1,2,3)
v[10] = 60  #add 50 to specific position 10

v
######################################################

#Inserting data into a vector 

append(1:10, 99, after=5) #write num 1 to 10 but add 99 after 5 

append(1:20, 400, after=10)

v
append(v, 5, after=3)

append(1:20, 400, after=0) #to add in first position 


#################################################
#Cbind

v= 1:6     #bind columns v and w, should be same num of values, if not will get warning
w= 1:3
cbind(v,w)

#################################################
#Creating a factor (Categorical Variable)
?factor
f = factor(c("win", "win", "lose", "Tie", "win", "lose"))
f

wday <- c("Wed", "Thu", "Mon", "Wed", "Thu",
          "Thu", "Thu", "Tue", "Thu", "Tue")
f= factor(wday)
f

################################################]
#Combining multiple vectors into one vector and a factor (stack)

freshmen <- c(1, 2, 1, 1, 5)
sophomores <- c(3, 2, 3, 3, 5)
juniors <- c(5, 3, 4, 3, 3)

L = list(fresh=freshmen, soph=sophomores, jrs =juniors)
comb = stack (L)
print(comb)

aov (values~ ind, data = comb)

