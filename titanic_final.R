setwd("C:/Users/PKumar/Desktop/R-apr01/titanic-kaggle")

# Load packages
library('ggplot2') # visualization
install.packages('ggthemes')
library('ggthemes') # visualization
library('scales') # visualization
library('dplyr') # data manipulation
install.packages('mice')
library('mice') # imputation
library('randomForest') # classification algorithm

train <- read.csv('train.csv', stringsAsFactors = F)
test  <- read.csv('test.csv', stringsAsFactors = F)

full  <- bind_rows(train, test) # bind training & test data

# check data
str(full)
# Grab title from passenger names
full$Title <- gsub('(.*, )|(\\..*)', '', full$Name)

# Show title counts by sex
table(full$Sex, full$Title)
summary(full)
table(full$Sex)

