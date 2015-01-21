# ProjetGettingAndCleaningData  
The project for the course Getting and Cleaning Data

The instructions are :
You should create one R script called run_analysis.R that does the following :

 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## Prerequisite  
In my script I use a function from the data.table package, if you didn't install yet do it before running the script :
  `install.packages("data.table")`
    
## Visualize the final tidy data from the .txt file  
1. Dowload the zip with the "Download zip" button on the right
2. Extract the zip anywhere you want
3. Go to a R console or RStudio
4. Set your working directory inside the folder "ProjectGettingAndCleaningData-master" using the `setwd()` function
5. Run these commands :  


    finalFile <- read.table("finalTidyData.txt")  
    View(finalFile)  
    
    
Now you can see my wonderful tidy data !

## Resources  
Here are the original [data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) of the project

Here are a full [description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) at the website where the data was obtained

## More information  
In the code book you can find more explanations about my code, my choices and the variables names