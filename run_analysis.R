# Set the Working Directory
setwd("C:/Users/vgupta_2002/Desktop/Personal/Coursera/DataScience/Coursera")

#Training Data
trgSubjects <- read.table( "subject_train.txt")
trgValues <- read.table("X_train.txt")
trgLabels <- read.table("y_train.txt")

#Test Data
testSubjects <- read.table( "subject_test.txt")
testValues <- read.table("X_test.txt")
testLabels <- read.table("y_test.txt")

# 1. Merges the training and the test sets to create one data set.

# bind the two datasets
completeData <- rbind(cbind(trgValues, trgSubjects, trgLabels),
                      cbind(testValues, testSubjects, testLabels))


# 2. Extracts only the measurements on the mean and standard deviation for each measurement.

#Load the features
features <- read.table("features.txt", as.is = TRUE)

# Transfer the column names to the complete dataset
colnames(completeData) <- c(features[, 2], "subject", "activity")

# extract the column names for which the measurements are needed
meanandsd <- grepl("subject|activity|mean|std", colnames(completeData))

# filter out those transactions only based on columns
completeData <- completeData[, meanandsd]

#3. Uses descriptive activity names to name the activities in the data set
# Load the activities
activities <- read.table("activity_labels.txt")

completeData$activity <- factor(completeData$activity, 
                                 levels = activities[, 1], labels = activities[, 2])


# 4. Appropriately labels the data set with descriptive variable names.
columnnames <- colnames(completeData)

# Remove Typo
columnnames <- gsub("BodyBody", "Body", columnnames)

# Change the column names with descriptive variable names
columnnames <- gsub("tBodyAccJerkMag", "body acceleration jerk signal magnitude (time)", 
                    columnnames, fixed = TRUE)
columnnames <- gsub("tBodyAccMag", "body acceleration signal magnitude (time)", 
                    columnnames, fixed = TRUE)
columnnames <- gsub("tBodyAccJerk", "body acceleration jerk signal (time)", 
                    columnnames, fixed = TRUE)
columnnames <- gsub("tBodyAcc", "body acceleration signal (time)", 
                    columnnames, fixed = TRUE)

columnnames <- gsub("tGravityAccMag", "gravity acceleration signal magnitude (time)", 
                    columnnames, fixed = TRUE)
columnnames <- gsub("tGravityAcc", "gravity acceleration signal (time)", 
                    columnnames, fixed = TRUE)

columnnames <- gsub("tBodyGyroJerkMag", "body gyroscope jerk signal magnitude (time)", 
                    columnnames, fixed = TRUE)
columnnames <- gsub("tBodyGyroJerk", "body gyroscope jerk signal (time)", 
                    columnnames, fixed = TRUE)
columnnames <- gsub("tBodyGyroMag", "body gyroscope signal magnitude (time)", 
                    columnnames, fixed = TRUE)
columnnames <- gsub("tBodyGyro", "body gyroscope signal (time)", 
                    columnnames, fixed = TRUE)

columnnames <- gsub("fBodyAccJerkMag", "body acceleration jerk signal magnitude (frequency)", 
                    columnnames, fixed = TRUE)
columnnames <- gsub("fBodyAccJerk", "body acceleration jerk signal (frequency)", 
                    columnnames, fixed = TRUE)
columnnames <- gsub("fBodyAccMag", "body acceleration signal magnitude (frequency)",
                    columnnames , fixed = TRUE)
columnnames <- gsub("fBodyAcc", "body acceleration signal (frequency)", 
                    columnnames, fixed = TRUE)

columnnames <- gsub("fBodyGyroJerkMag", "body gyroscope jerk signal magnitude (frequency)", 
                    columnnames, fixed = TRUE)
columnnames <- gsub("fBodyGyroMag", "body gyroscope signal magnitude (frequency)", 
                    columnnames, fixed = TRUE)
columnnames <- gsub("fBodyGyro", "body gyroscope signal (frequency)", 
                    columnnames, fixed = TRUE)

# Transfer the column names to original dataset
colnames(completeData) <- columnnames

# 5.From the data set in step 4, creates a second, independent tidy data set with the average of each 
#variable for each activity and each subject.

meandata <- aggregate(.~subject+activity, completeData, mean)

write.table(meandata, "tidy_data.txt", row.names = FALSE, sep = "\t" ,quote = FALSE)
