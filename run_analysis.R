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

# 3 ----------------------------------------------------------------
# Make syntactically valid names
colnames(setWithMeanAndSdOnly) <- make.names(colnames(setWithMeanAndSdOnly))
# At this point I'm writing the column names in a .txt files using this command :
# write.table(colnames(setWithMeanAndSdOnly), file = "columnName.txt")
# Then I use "find and replace" to make the names more readable in the file

# 4 ----------------------------------------------------------------
# Recuperate the modified column's name from the file from step 3
columnNames <- read.table("columnName.txt")
# Label the name of the variable
colnames(setWithMeanAndSdOnly) <- columnNames[ , 1]

