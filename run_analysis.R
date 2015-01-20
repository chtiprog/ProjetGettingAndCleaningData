# 1 ---------------------------------------------------------------
# Create the data frames with the given data set
testSet <- read.table("X_test.txt")
trainSet <- read.table("X_train.txt")
features <- read.table("features.txt")
# Name the column with the names given in the features file
colonnesNames <- features$V2
colnames(testSet) <- colonnesNames
colnames(trainSet) <- colonnesNames
# Custome column's names to distinguish the test and train datasets
colnames(testSet) <- paste("test", colnames(testSet), sep = "-")
colnames(trainSet) <- paste("train", colnames(trainSet), sep = "-")
# Join the training and the test sets to create one data set
library(plyr)
mergedData <- rbind.fill(testSet, trainSet)

# 2 ----------------------------------------------------------------
# Extracts only the measurements on the mean and standard deviation for each measurement.
setWithMeanAndSdOnly <- mergedData[ , grepl("mean" , names(mergedData)) | grepl("std", names(mergedData))]

# 4 ----------------------------------------------------------------
# Make syntactically valid names
colnames(setWithMeanAndSdOnly) <- make.names(colnames(setWithMeanAndSdOnly))
# At this point I'm writing the column names in a .txt files using this command :
# write.table(colnames(setWithMeanAndSdOnly), file = "columnName.txt")
# Then I use "find and replace" to make the names more readable in the file
# Recuperate the modified column's name from the file from step 3
columnNames <- read.table("columnName.txt")
# Label the name of the variable
colnames(setWithMeanAndSdOnly) <- columnNames[ , 1]

# 3 ---------------------------------------------------------------
# Recuperate the activities from the y_test.txt and y_train.txt
activityTest <- read.table("y_test.txt")
activityTrain <- read.table("y_train.txt")
# Join the two activities tables in the same order than our setWithMeanAndSdOnly data frame
mergedActivities <- rbind.fill(activityTest, activityTrain)
colnames(mergedActivities) <- "activity"
# Label the activities according to the activity_labels.txt file
mergedActivities[mergedActivities$activity == 1, ] <- "WALKING"
mergedActivities[mergedActivities$activity == 2, ] <- "WALKING_UPSTAIRS"
mergedActivities[mergedActivities$activity == 3, ] <- "WALKING_DOWNSTAIRS"
mergedActivities[mergedActivities$activity == 4, ] <- "SITTING"
mergedActivities[mergedActivities$activity == 5, ] <- "STANDING"
mergedActivities[mergedActivities$activity == 6, ] <- "LAYING"
# Merge the activities data frame with our principal dataframe
dataSet <- cbind(mergedActivities, setWithMeanAndSdOnly)

# 5 ---------------------------------------------------------------
# Recuperate the subjects from the subject_test.txt and subject_train.txt
subjectTest <- read.table("subject_test.txt")
subjectTrain <- read.table("subject_train.txt")
# Join the two subject table in the same order than our setWithMeanAndSdOnly data frame
mergedSubject <- rbind.fill(subjectTest, subjectTrain)
colnames(mergedSubject) <- "Subject"
# Merge the subject table with our principal dataframe
dataSet <- cbind(mergedSubject, dataSet)
# transform this data frame to a data table to use the function from this package
library(data.table)
dataTable <- data.table(dataSet)
# Create two keys on our data table to sort by Subject and activity
keycols <- c("Subject", "activity")
setkeyv(dataTable, keycols)
# Create an independent tidy data set with the average of each variable for each activity and each subject.
finalTidyData <- dataTable[, lapply(.SD,mean), by = "Subject,activity"]
# Finally, write a .txt file containing our final tidy data
write.table(finalTidyData, file = "finalTidyData.txt", row.name=FALSE)

