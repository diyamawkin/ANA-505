# Load necessary library
#install.packages("caTools")
library(caTools)


# Define the dataset
years_experience <- c(1.1,      1.3,      1.5,      2.0,      2.2,      2.9,      3.0,      3.2,      3.2,      3.7)
salary           <- c(39343.00, 46205.00, 37731.00, 43525.00, 39891.00, 56642.00, 60150.00, 54445.00, 64445.00, 57189.00)


# Create a data frame
dataset <- data.frame( Years_Experience = years_experience, 
                       Salary = salary 
                      )

set.seed(143) # Setting seed for reproducibility


# Split the dataset into the training set and test set
split        <- sample.split(dataset$Salary, SplitRatio = 0.8)  # 80% for Train 20% for test

training_set <- subset(dataset, split == TRUE)
test_set     <- subset(dataset, split == FALSE)


# Fitting Simple Linear Regression to the Training set
regressor <- lm(formula = Salary ~ Years_Experience, data = training_set)


# Summary of the linear model
summary_data  <- summary(regressor)

summary_data
