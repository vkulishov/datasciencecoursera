## This script performs a set of steps for solving project of course "Getting and cleaning data".

require(dplyr)

## Download and extract dataset.
if (!file.exists("./data")) {dir.create("./data")}
dataFile <- "./data/dataset.zip"
if (!file.exists(dataFile)) {
        fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(url = fileUrl, destfile = dataFile, method = "curl")
        unzip(zipfile = dataFile, exdir = "./data")
}

## Check if dataset has been extracted.
dataFolder <- "./data/UCI HAR Dataset"
if (!file.exists(dataFolder)) {
        stop("Cannot find extracted dataset folder")
}

## Read data.
x_train <- read.table(file = paste(dataFolder, "train", "X_train.txt", sep = "/"))
x_test <- read.table(file = paste(dataFolder, "test", "X_test.txt", sep = "/"))

y_train <- read.table(file = paste(dataFolder, "train", "y_train.txt", sep = "/"))
y_test <- read.table(file = paste(dataFolder, "test", "y_test.txt", sep = "/"))

subject_train <- read.table(file = paste(dataFolder, "train", "subject_train.txt", sep = "/"))
subject_test <- read.table(file = paste(dataFolder, "test", "subject_test.txt", sep = "/"))

features <- read.table(file = paste(dataFolder, "features.txt", sep = "/"))
activity_labels <- read.table(file = paste(dataFolder, "activity_labels.txt", sep = "/"))
activity_labels$V2 <- sapply(activity_labels$V2, FUN = function(s) {
        s <- gsub("_", " ", s)
        paste(toupper(substring(s, 1,1)), tolower(substring(s, 2)),
              sep="", collapse=" ")
})

## Merge data.
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test) %>% rename(Activity = V1)
subject_data <- rbind(subject_train, subject_test) %>% rename(Subject = V1)

merged_data <- cbind(subject_data, y_data, x_data)

## Extract mean and std measurements.
extracted_features <- filter(features, grepl("mean\\(\\)|std\\(\\)", V2))
extracted_data <- select(merged_data, 1, 2, extracted_features$V1 + 2)

## Use descriptive activity names to name the activities in the data set.
extracted_data$Activity <- activity_labels[extracted_data$Activity, "V2"]

## Appropriately labels the data set with descriptive variable names.
updated_feature_names <- sapply(extracted_features[, 2], function(x) { 
        prefixTReplace <- gsub("^t", "time", x)
        prefixFReplace <- gsub("^f", "freq", prefixTReplace)
        meanReplace <- gsub("mean\\(\\)", "Mean", prefixFReplace)
        stdReplace <- gsub("std\\(\\)", "SD", meanReplace)
        specCharReplace <- gsub("-", " ", stdReplace)
})
names(extracted_data) <- c("Subject", "Activity", updated_feature_names)

## creates an independent tidy data set with the average of each variable for each activity and each subject.
result_data <- extracted_data %>% group_by(Activity, Subject) %>% summarise_all(mean)