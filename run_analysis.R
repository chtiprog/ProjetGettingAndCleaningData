# Create the data frames with the given data set
testSet <- read.table("X_test.txt")
trainSet <- read.table("X_train.txt")
features <- read.table("features.txt")
# Name the column with the names given in the features file
colonnesNames <- features$V2
colnames(testSet) <- colonnesNames
colnames(trainSet) <- colonnesNames
# Custome column'names to distinguish the test and train datasets
colnames(testSet) <- paste("test", colnames(testSet), sep = "-")
colnames(trainSet) <- paste("train", colnames(trainSet), sep = "-")

# Extracts only the measurements on the mean and standard deviation for each measurement.
setWithMeanTestSet <- testSet[ , grepl("mean" , names(testSet))]
setWithSdTestSet <- testSet[ , grepl("std", names(testSet))]
setWithMeanTrainSet <- trainSet[ , grepl("mean" , names(trainSet))]
setWithSdTrainSet <- trainSet[ , grepl("std", names(trainSet))]

