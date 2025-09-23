

#importing data set 
# from code
Candy_Sales_2 <- read.csv("C:/Users/User/Downloads/Candy_Sales.csv")
#otherwise import dataset from environment>import dataset>text> import

#to see data set 


head(Candy_Sales_2)
names(Candy_Sales)
summary(Candy_Sales)
table(Candy_Sales$Country.Region)
dim(Candy_Sales)

#where the directory
getwd()
#to change directory setwd()

#To remove certain column

Candy_Sales_3 = Candy_Sales[, -2] #remove second column order ID
names(Candy_Sales_3)

Candy_Sales_3 = Candy_Sales[, c(1,17)] #choose specific values
names(Candy_Sales_3)

#mean and SD of sales 
names(Candy_Sales)
Sales = Candy_Sales[,15]
mean(Sales)
sd(Sales)

mean(Candy_Sales$Sales) #easier way
sd(Candy_Sales$Sales)

#plot sales
plot(Candy_Sales$Sales)
hist(Candy_Sales$Sales)


#save the data 
write.csv("C:/Users/User/Desktop/R class")
write.csv("/Candy_Sales_3.csv")
write.csv(Candy_Sales_3, file = "Candy_Sales_3.csv")
#or write.csv(Candy_sales_3, file = "C:/Users/User/Desktop/R class/Candy_sales_2.csv")

#saving as excel file 
install.packages("openxlsx")
library(openxlsx)
write.xlsx(Candy_Sales_3, file = "Candy_Sales_3.xlsx")


#####################
#install.packages("tidyverse")
library(tidyverse)
Candy_Sales %>%
  filter(Sales > 13.90854) %>%
  head(3)

Candy_Sales %>%
  filter(Sales > 13.90854) %>%
  select(Sales, Units, Gross.Profit) %>%
  head(3)

#frequency table 
table(Candy_Sales$City) #for one frequency
table(Candy_Sales$City , Candy_Sales$Country.Region)


#practices
summary(Candy_Sales)

mean(Candy_Sales$Sales>15)

plot(Candy_Sales$Gross.Profit)
hist(Candy_Sales$Gross.Profit)

          
