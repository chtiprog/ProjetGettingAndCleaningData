# Merges the training and the test sets to create one data set.
testSet <- read.table("X_test.txt")
trainSet <- read.table("X_train.txt")
features <- read.table("features.txt")
colonnesNames <- features$V2
colnames(testSet) <- colonnesNames
colnames(trainSet) <- colonnesNames