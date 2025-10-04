# Strings and Dates 
#nchar (how many chars)
nchar("Khine Nwe Lin")   #return numberofchar, including spaces

s = c("Moe", "Larry", "Curly")
nchar(s) # count of each character in list
sum(nchar(s))

#Length(how many word in list)
length(s)  #3 elements in list 

length("Khine Nwe Lin")


#####################################################

#Concatenating Strings 
?paste

paste("hi", "everyone") 
paste("everybody", "hates", "Stats")
paste("everybody", "hates", "Stats", sep = '-') #separater 
paste("everybody", "hates", "Stats", sep = '')

length("everybody hates Stats")
nchar("everybody hates Stats")

paste("The square root of twice pi is approximately", sqrt(2 * pi))

s = c("Moe", "Larry", "Curly") 

paste(s, "hates", "stats")
paste(s, "hates", "stats", collapse = ', and ')
##########################

#Extracting substrings 
nchar("Statistics")
substr("Statistics", 1, 4) 

substr("Statistics", 7, 10) 

s
substr(s, 1,3) #extracting first 3 characters from list

cities <- c("New York, NY", "Los Angeles, CA", "Peoria, IL")
substr(cities, nchar(cities) -1, nchar(cities))

nchar(cities)
substr("New York, NY", 11,12) #<basically 

#Splitting a string according to delimiter

path <- "/home/mike/data/trials.csv"
strsplit(path, "/")

###################################
#Replacing substrings

str = "Curly is the smart one. Curly is funny, too"
sub("Curly", "Moe", str) #just the first occurrence  of curly

gsub("Curly", "Moe", str) #global , change all occurrences 


######################################
#Generating All Pairwise Combination of Strings 
locations <- c("NY", "LA", "CHI", "HOU")
treatments <- c("T1", "T2", "T3") 

outer(locations, treatments, paste, sep = '-')
outer(treatments, treatments, paste, sep = '-')
expand.grid(treatments, treatments)
###################################################

#Date 

Sys.Date()  #return system date
class(Sys.Date()) #check the type 

as.Date("2018-12-31")  #format str to date 

class("2018-12-31")
class(as.Date("2018-12-31"))


d= as.Date("12/31/2025") #error cus it is not US style format 

as.Date("12/31/2025", format= "%m/%d/%Y") #format

format(Sys.Date())
as.character(Sys.Date())

format(Sys.Date(), format= "%m/%d/%Y" )

?ISOdate
year = 2025 
month = 12
day = 31 

ISOdate(year, month, day)
ISOdate(year, month, day)
as.Date(ISOdate(year,month,day))


years <- c(2010, 2011, 2012, 2014)
months <- c(1, 1, 1, 1, 1)
days <- c(15, 21, 20, 18, 17)
ISOdate(years, months, days)
as.Date(ISOdate(years, months, days))


#Extracting the parts of a date 

d= as.Date("2019-03-15")
p= as.POSIXlt(d)
p$mday 
p$mon
p$year 

s <- as.Date("2019-01-01")
e <- as.Date("2019-02-01")
seq(from = s, to = e, by = 1) #sequence 
seq(from = s, by = 1, length.out = 7)  #cut at 7th
