# Getting and Cleaning Data Course Project
## Repo content
* README.md
* run_analysis.R - R script that performs data transformation to get and clean data
* CodeBook.md - codebook describing variables, the data and transformations

## run_analysis.R
This is the main script that performs the cleaning and tidying of the dataset.
It performs the following set of steps:
1. Downloads the exercise data into a working directory [from] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
2. Unpacks the downloaded data into the working directory
3. Merges the training and the test sets to create one data set
4. Extracts only the measurements on the mean and standard deviation for each measurement
5. Uses descriptive activity names to name the activities in the data set
6. Appropriately labels the data set with descriptive variable names
7. From the data set in step 6, creates a second, independent tidy data set with the average of each variable for each activity and each subject
