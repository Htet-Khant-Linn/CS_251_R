library(readr)
library(dplyr)


# ================= Part 1 =====================

students_scores_txt <- read_csv("data/students_scores.txt")

str(students_scores_txt)

# saving students_scores data as .csv for .txt format

write_csv(students_scores_txt, "data/students_scores.csv")


# ================= Part 2 =====================

# A. Data Exploration:

# Reading students_scores csv file
students_scores <- read_csv("data/students_scores.csv")


# displaying the first 6 rows
head(students_scores)

# Summarizing the data set

# no. of rows
nrow(students_scores)

# checking missing values
sum(is.na(students_scores))

summary(students_scores$Score)

# ==============

# B. Data Manipulation:


# Creating new column "Pass"
students_scores_2 <- students_scores %>%
  mutate(Pass = Score >= 50)


# Filtering Passed Students
passed_students <- students_scores_2 %>%
                      filter(Pass == TRUE)

passed_students %>% select(Name)

# ==============

# C. Simple Statistics:

# Calculating the average score of all students
average_score_all <- mean(students_scores$Score)
average_score_all

# The highest and lowest scores
highest_score <- max(students_scores$Score)
highest_score
lowest_score <- min(students_scores$Score)
lowest_score

# the average score of students who passed
avarage_score_passed <- mean(passed_students$Score)
avarage_score_passed


# ==============

# D. Data Visualization:

# Creating scores hist
?hist
hist(students_scores$Score,
     main = "Histogram of Students Scores",
     xlab = "Score")

# Creating barplot showing the number of students who passed and failed
args(barplot) # checking arguemnts

pass_fail_counts <- table(students_scores_2$Pass)
names(pass_fail_counts) <- c("Failed", "Passed")

?barplot
barplot(pass_fail_counts,
        main = "Number of Students who Passed and Failed",
        xlab = "Result",
        ylab = "Number of Students")



# ==============

# E. Output:

write_csv(passed_students, "data/passed_students.csv")




