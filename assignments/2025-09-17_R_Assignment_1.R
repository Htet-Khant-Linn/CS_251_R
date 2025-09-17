# Htet Khant Linn - Assignment 1

# ----------- Part 1: Getting Started with R --------------

# ----------- 1. Basic Arithmetic -------------

a <- c(1, 2, 3, 4)
b <- c(5, 6, 7, 8)

print("Addition")
a+b

print("Subtraction")
a-b

print("Multiplication")
a*b

print("Division")
a/b



# ----------- 2. Using Variables --------------

my_name <- 'Htet Khant Linn'
my_age <- 23
my_fav_num <- 7

sentence <- paste('My name is', my_name, '. I am', my_age, ' years old. And my favorite number is ', my_fav_num, '.')

print(sentence)


# ----------- Part 2: Data Types and Structures --------------

# ----------- 1. Vectors --------------

num_vector <- c(5, 10, 15, 20, 25)

char_vector <- c("Charles", "John","Aung", "Htet", "Harry")

length(num_vector)
sum(num_vector)
mean(num_vector)


# ----------- 2. Data Frames --------------

player_dataframe <- data.frame(Name = c("Pele", "Messi", "Maradona", "Ronaldo", "Bruno"),
                                 Age = c(60, 45, 50, 70, 49),
                                 Score = c(70, 98, 97, 96, 65))
# extracting all data
player_dataframe


str(player_dataframe)
summary(player_dataframe)
head(player_dataframe)



# ----------- 3. Indexing and Subsetting --------------

#Extract the second row of your data frame.
second_row <- player_dataframe[2,]
print("Second row from dataframe")
print(second_row)

# Extract the “Score” column.
score_col <- player_dataframe$Score
print("Score column")
print(score_col)

#Filter rows where Score > 80.
score_80 <- player_dataframe[player_dataframe$Score > 80, ]
print("Score greater than 80")
print(score_80)

# ----------- End of Assignment --------------
