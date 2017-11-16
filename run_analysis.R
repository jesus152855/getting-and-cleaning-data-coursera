## Coursera Getting and Cleaning Data Course Project
## Jesus Rodriguez
## 2017-11-17

# Script will implement the following steps on the data downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip:
# 1. If "UCI HAR Dataset" folder doesn't exist, I will unzip it
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Merges the training and the test sets to create one data set.
# 4. Uses descriptive activity names to name the activities in the data set
# 5. Appropriately labels the data set with descriptive variable names.
# 6. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(reshape2)

## Download data from the URL if file doesn't exist:
filename <- "get_data.zip"
if (!file.exists(filename)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL, filename)
}

# 2. If file doesn't exist, Unzip it  
if (!file.exists("UCI HAR Dataset")) { 
  unzip(filename) 
}

# 3. Extracts only the measurements on the mean and standard deviation

## Load activity labels and features
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
activityLabels[,2] <- as.character(activityLabels[,2])
features <- read.table("UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])

# Extract only the data on mean and standard deviation
featuresDesired <- grep(".*mean.*|.*std.*", features[,2])
featuresDesired.names <- features[featuresDesired,2]
featuresDesired.names = gsub('-mean', 'Mean', featuresDesired.names)
featuresDesired.names = gsub('-std', 'Std', featuresDesired.names)
featuresDesired.names <- gsub('[-()]', '', featuresDesired.names)
featuresDesired.names <- gsub('*Mag', 'Magnitude', featuresDesired.names)

# 4. Merge datasets and add correct labels

# Loading only featuresDesired from test data into tables
xTestSet = read.table("UCI HAR Dataset/test/X_test.txt")[featuresDesired]
subjectTest = read.table("UCI HAR Dataset/test/subject_test.txt")
ActivitiesTest = read.table("UCI HAR Dataset/test/Y_test.txt")
xTestSet <- cbind(subjectTest, ActivitiesTest, xTestSet)
  
## Loading only featuresDesired from train data into tables
xTrainSet = read.table("UCI HAR Dataset/train/X_train.txt")[featuresDesired]
subjectTrain = read.table("UCI HAR Dataset/train/subject_train.txt")
ActivitiesTrain = read.table("UCI HAR Dataset/train/Y_train.txt")
xTrainSet <- cbind(subjectTrain, ActivitiesTrain, xTrainSet)

## 5. Merge datasets and add correct labels
allData <- rbind(xTrainSet, xTestSet)
colnames(allData) <- c("subject", "activity", featuresDesired.names)

# Turn activities and subjects into factors
allData$activity <- factor(allData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
allData$subject <- as.factor(allData$subject)

allData.melted <- melt(allData, id = c("subject", "activity"))
allData.mean <- dcast(allData.melted, subject + activity ~ variable, mean)

# 6. Export the tidyData set 
write.table(allData.mean, "tidy.txt", row.names = FALSE, quote = FALSE)
