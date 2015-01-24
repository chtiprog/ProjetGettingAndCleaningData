# About the data  

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.  

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.  

# Cleaning the data

I have only selected columns where the names contained "mean" or "standard deviation". 
So in the original merged data set (wich contain the test and train datasets), we had 954 columns and after the cleaning works we have only 158 columns, and I had one column for the subjects and one column for the activies which make a total of 160 variables.  

## Original vs Modified column's names  

Here are the original names before cleaning and the names you can find in the finalTidyDataSet with the definitions [here](https://docs.google.com/spreadsheets/d/1e5FUGIrPm51fb7yjJN-ixlDB6GgCpG0UoZqwTIz2oLo/edit#gid=0):  




| Original column's names               | Modified column's names                                     |
|---------------------------------------|-------------------------------------------------------------|
| test-tBodyAcc-mean()-X                | Test.Time.Body.Acceleration.Mean...X                        |
| test-tBodyAcc-mean()-Y                | Test.Time.Body.Acceleration.Mean...Y                        |
| test-tBodyAcc-mean()-Z                | Test.Time.Body.Acceleration.Mean...Z                        |
| test-tBodyAcc-std()-X                 | Test.Time.Body.Acceleration.std...X                         |
| test-tBodyAcc-std()-Y                 | Test.Time.Body.Acceleration.std...Y                         |
| test-tBodyAcc-std()-Z                 | Test.Time.Body.Acceleration.std...Z                         |
| test-tGravityAcc-mean()-X             | Test.Time.Gravity.Acceleration.Mean...X                     |
| test-tGravityAcc-mean()-Y             | Test.Time.Gravity.Acceleration.Mean...Y                     |
| test-tGravityAcc-mean()-Z             | Test.Time.Gravity.Acceleration.Mean...Z                     |
| test-tGravityAcc-std()-X              | Test.Time.Gravity.Acceleration.std...X                      |
| test-tGravityAcc-std()-Y              | Test.Time.Gravity.Acceleration.std...Y                      |
| test-tGravityAcc-std()-Z              | Test.Time.Gravity.Acceleration.std...Z                      |
| test-tBodyAccJerk-mean()-X            | Test.Time.Body.Acceleration.Jerk.Mean...X                   |
| test-tBodyAccJerk-mean()-Y            | Test.Time.Body.Acceleration.Jerk.Mean...Y                   |
| test-tBodyAccJerk-mean()-Z            | Test.Time.Body.Acceleration.Jerk.Mean...Z                   |
| test-tBodyAccJerk-std()-X             | Test.Time.Body.Acceleration.Jerk.std...X                    |
| test-tBodyAccJerk-std()-Y             | Test.Time.Body.Acceleration.Jerk.std...Y                    |
| test-tBodyAccJerk-std()-Z             | Test.Time.Body.Acceleration.Jerk.std...Z                    |
| test-tBodyGyro-mean()-X               | Test.Time.Body.Gyroscope.Mean...X                           |
| test-tBodyGyro-mean()-Y               | Test.Time.Body.Gyroscope.Mean...Y                           |
| test-tBodyGyro-mean()-Z               | Test.Time.Body.Gyroscope.Mean...Z                           |
| test-tBodyGyro-std()-X                | Test.Time.Body.Gyroscope.std...X                            |
| test-tBodyGyro-std()-Y                | Test.Time.Body.Gyroscope.std...Y                            |
| test-tBodyGyro-std()-Z                | Test.Time.Body.Gyroscope.std...Z                            |
| test-tBodyGyroJerk-mean()-X           | Test.Time.Body.Gyroscope.Jerk.Mean...X                      |
| test-tBodyGyroJerk-mean()-Y           | Test.Time.Body.Gyroscope.Jerk.Mean...Y                      |
| test-tBodyGyroJerk-mean()-Z           | Test.Time.Body.Gyroscope.Jerk.Mean...Z                      |
| test-tBodyGyroJerk-std()-X            | Test.Time.Body.Gyroscope.Jerk.std...X                       |
| test-tBodyGyroJerk-std()-Y            | Test.Time.Body.Gyroscope.Jerk.std...Y                       |
| test-tBodyGyroJerk-std()-Z            | Test.Time.Body.Gyroscope.Jerk.std...Z                       |
| test-tBodyAccMag-mean()               | Test.Time.Body.Acceleration.Magnitude.Mean..                |
| test-tBodyAccMag-std()                | Test.Time.Body.Acceleration.Magnitude.std..                 |
| test-tGravityAccMag-mean()            | Test.Time.Gravity.Acceleration.Magnitude.Mean..             |
| test-tGravityAccMag-std()             | Test.Time.Gravity.Acceleration.Magnitude.std..              |
| test-tBodyAccJerkMag-mean()           | Test.Time.Body.Acceleration.Jerk.Magnitude.Mean..           |
| test-tBodyAccJerkMag-std()            | Test.Time.Body.Acceleration.Jerk.Magnitude.std..            |
| test-tBodyGyroMag-mean()              | Test.Time.Body.GyroscopeMagnitude.Mean..                    |
| test-tBodyGyroMag-std()               | Test.Time.Body.GyroscopeMagnitude.std..                     |
| test-tBodyGyroJerkMag-mean()          | Test.Time.Body.Gyroscope.Jerk.Magnitude.Mean..              |
| test-tBodyGyroJerkMag-std()           | Test.Time.Body.Gyroscope.Jerk.Magnitude.std..               |
| test-fBodyAcc-mean()-X                | Test.FFT.Body.Acceleration.Mean...X                         |
| test-fBodyAcc-mean()-Y                | Test.FFT.Body.Acceleration.Mean...Y                         |
| test-fBodyAcc-mean()-Z                | Test.FFT.Body.Acceleration.Mean...Z                         |
| test-fBodyAcc-std()-X                 | Test.FFT.Body.Acceleration.std...X                          |
| test-fBodyAcc-std()-Y                 | Test.FFT.Body.Acceleration.std...Y                          |
| test-fBodyAcc-std()-Z                 | Test.FFT.Body.Acceleration.std...Z                          |
| test-fBodyAcc-meanFreq()-X            | Test.FFT.Body.Acceleration.Mean.Frequency...X               |
| test-fBodyAcc-meanFreq()-Y            | Test.FFT.Body.Acceleration.Mean.Frequency...Y               |
| test-fBodyAcc-meanFreq()-Z            | Test.FFT.Body.Acceleration.Mean.Frequency...Z               |
| test-fBodyAccJerk-mean()-X            | Test.FFT.Body.Acceleration.Jerk.Mean...X                    |
| test-fBodyAccJerk-mean()-Y            | Test.FFT.Body.Acceleration.Jerk.Mean...Y                    |
| test-fBodyAccJerk-mean()-Z            | Test.FFT.Body.Acceleration.Jerk.Mean...Z                    |
| test-fBodyAccJerk-std()-X             | Test.FFT.Body.Acceleration.Jerk.std...X                     |
| test-fBodyAccJerk-std()-Y             | Test.FFT.Body.Acceleration.Jerk.std...Y                     |
| test-fBodyAccJerk-std()-Z             | Test.FFT.Body.Acceleration.Jerk.std...Z                     |
| test-fBodyAccJerk-meanFreq()-X        | Test.FFT.Body.Acceleration.Jerk.Mean.Frequency...X          |
| test-fBodyAccJerk-meanFreq()-Y        | Test.FFT.Body.Acceleration.Jerk.Mean.Frequency...Y          |
| test-fBodyAccJerk-meanFreq()-Z        | Test.FFT.Body.Acceleration.Jerk.Mean.Frequency...Z          |
| test-fBodyGyro-mean()-X               | Test.FFT.Body.Gyroscope.Mean...X                            |
| test-fBodyGyro-mean()-Y               | Test.FFT.Body.Gyroscope.Mean...Y                            |
| test-fBodyGyro-mean()-Z               | Test.FFT.Body.Gyroscope.Mean...Z                            |
| test-fBodyGyro-std()-X                | Test.FFT.Body.Gyroscope.std...X                             |
| test-fBodyGyro-std()-Y                | Test.FFT.Body.Gyroscope.std...Y                             |
| test-fBodyGyro-std()-Z                | Test.FFT.Body.Gyroscope.std...Z                             |
| test-fBodyGyro-meanFreq()-X           | Test.FFT.Body.Gyroscope.Mean.Frequency...X                  |
| test-fBodyGyro-meanFreq()-Y           | Test.FFT.Body.Gyroscope.Mean.Frequency...Y                  |
| test-fBodyGyro-meanFreq()-Z           | Test.FFT.Body.Gyroscope.Mean.Frequency...Z                  |
| test-fBodyAccMag-mean()               | Test.FFT.Body.Acceleration.Magnitude.Mean..                 |
| test-fBodyAccMag-std()                | Test.FFT.Body.Acceleration.Magnitude.std..                  |
| test-fBodyAccMag-meanFreq()           | Test.FFT.Body.Acceleration.Magnitude.Mean.Frequency..       |
| test-fBodyBodyAccJerkMag-mean()       | Test.FFT.Body.Acceleration.Jerk.Magnitude.Mean..            |
| test-fBodyBodyAccJerkMag-std()        | Test.FFT.Body.Acceleration.Jerk.Magnitude.std..             |
| test-fBodyBodyAccJerkMag-meanFreq()   | Test.FFT.Body.Acceleration.Jerk.Magnitude.Mean.Frequency..  |
| test-fBodyBodyGyroMag-mean()          | Test.FFT.Body.Gyroscope.Magnitude.Mean..                    |
| test-fBodyBodyGyroMag-std()           | Test.FFT.Body.Gyroscope.Magnitude.std..                     |
| test-fBodyBodyGyroMag-meanFreq()      | Test.FFT.Body.Gyroscope.Magnitude.Mean.Frequency..          |
| test-fBodyBodyGyroJerkMag-mean()      | Test.FFT.Body.Gyroscope.Jerk.Magnitude.Mean..               |
| test-fBodyBodyGyroJerkMag-std()       | Test.FFT.Body.Gyroscope.Jerk.Magnitude.std..                |
| test-fBodyBodyGyroJerkMag-meanFreq()  | Test.FFT.Body.Gyroscope.Jerk.Magnitude.Mean.Frequency..     |
| train-tBodyAcc-mean()-X               | Train.Time.Body.Acceleration.Mean...X                       |
| train-tBodyAcc-mean()-Y               | Train.Time.Body.Acceleration.Mean...Y                       |
| train-tBodyAcc-mean()-Z               | Train.Time.Body.Acceleration.Mean...Z                       |
| train-tBodyAcc-std()-X                | Train.Time.Body.Acceleration.std...X                        |
| train-tBodyAcc-std()-Y                | Train.Time.Body.Acceleration.std...Y                        |
| train-tBodyAcc-std()-Z                | Train.Time.Body.Acceleration.std...Z                        |
| train-tGravityAcc-mean()-X            | Train.Time.Gravity.Acceleration.Mean...X                    |
| train-tGravityAcc-mean()-Y            | Train.Time.Gravity.Acceleration.Mean...Y                    |
| train-tGravityAcc-mean()-Z            | Train.Time.Gravity.Acceleration.Mean...Z                    |
| train-tGravityAcc-std()-X             | Train.Time.Gravity.Acceleration.std...X                     |
| train-tGravityAcc-std()-Y             | Train.Time.Gravity.Acceleration.std...Y                     |
| train-tGravityAcc-std()-Z             | Train.Time.Gravity.Acceleration.std...Z                     |
| train-tBodyAccJerk-mean()-X           | Train.Time.Body.Acceleration.Jerk.Mean...X                  |
| train-tBodyAccJerk-mean()-Y           | Train.Time.Body.Acceleration.Jerk.Mean...Y                  |
| train-tBodyAccJerk-mean()-Z           | Train.Time.Body.Acceleration.Jerk.Mean...Z                  |
| train-tBodyAccJerk-std()-X            | Train.Time.Body.Acceleration.Jerk.std...X                   |
| train-tBodyAccJerk-std()-Y            | Train.Time.Body.Acceleration.Jerk.std...Y                   |
| train-tBodyAccJerk-std()-Z            | Train.Time.Body.Acceleration.Jerk.std...Z                   |
| train-tBodyGyro-mean()-X              | Train.Time.Body.Gyroscope.Mean...X                          |
| train-tBodyGyro-mean()-Y              | Train.Time.Body.Gyroscope.Mean...Y                          |
| train-tBodyGyro-mean()-Z              | Train.Time.Body.Gyroscope.Mean...Z                          |
| train-tBodyGyro-std()-X               | Train.Time.Body.Gyroscope.std...X                           |
| train-tBodyGyro-std()-Y               | Train.Time.Body.Gyroscope.std...Y                           |
| train-tBodyGyro-std()-Z               | Train.Time.Body.Gyroscope.std...Z                           |
| train-tBodyGyroJerk-mean()-X          | Train.Time.Body.Gyroscope.Jerk.Mean...X                     |
| train-tBodyGyroJerk-mean()-Y          | Train.Time.Body.Gyroscope.Jerk.Mean...Y                     |
| train-tBodyGyroJerk-mean()-Z          | Train.Time.Body.Gyroscope.Jerk.Mean...Z                     |
| train-tBodyGyroJerk-std()-X           | Train.Time.Body.Gyroscope.Jerk.std...X                      |
| train-tBodyGyroJerk-std()-Y           | Train.Time.Body.Gyroscope.Jerk.std...Y                      |
| train-tBodyGyroJerk-std()-Z           | Train.Time.Body.Gyroscope.Jerk.std...Z                      |
| train-tBodyAccMag-mean()              | Train.Time.Body.Acceleration.Magnitude.Mean..               |
| train-tBodyAccMag-std()               | Train.Time.Body.Acceleration.Magnitude.std..                |
| train-tGravityAccMag-mean()           | Train.Time.Gravity.Acceleration.Magnitude.Mean..            |
| train-tGravityAccMag-std()            | Train.Time.Gravity.Acceleration.Magnitude.std..             |
| train-tBodyAccJerkMag-mean()          | Train.Time.Body.Acceleration.Jerk.Magnitude.Mean..          |
| train-tBodyAccJerkMag-std()           | Train.Time.Body.Acceleration.Jerk.Magnitude.std..           |
| train-tBodyGyroMag-mean()             | Train.Time.Body.Gyroscope.Magnitude.Mean..                  |
| train-tBodyGyroMag-std()              | Train.Time.Body.Gyroscope.Magnitude.std..                   |
| train-tBodyGyroJerkMag-mean()         | Train.Time.Body.Gyroscope.Jerk.Magnitude.Mean..             |
| train-tBodyGyroJerkMag-std()          | Train.Time.Body.Gyroscope.Jerk.Magnitude.std..              |
| train-fBodyAcc-mean()-X               | Train.FFT.Body.Acceleration.Mean...X                        |
| train-fBodyAcc-mean()-Y               | Train.FFT.Body.Acceleration.Mean...Y                        |
| train-fBodyAcc-mean()-Z               | Train.FFT.Body.Acceleration.Mean...Z                        |
| train-fBodyAcc-std()-X                | Train.FFT.Body.Acceleration.std...X                         |
| train-fBodyAcc-std()-Y                | Train.FFT.Body.Acceleration.std...Y                         |
| train-fBodyAcc-std()-Z                | Train.FFT.Body.Acceleration.std...Z                         |
| train-fBodyAcc-meanFreq()-X           | Train.FFT.Body.Acceleration.Mean.frequency...X              |
| train-fBodyAcc-meanFreq()-Y           | Train.FFT.Body.Acceleration.Mean.frequency...Y              |
| train-fBodyAcc-meanFreq()-Z           | Train.FFT.Body.Acceleration.Mean.frequency...Z              |
| train-fBodyAccJerk-mean()-X           | Train.FFT.Body.Acceleration.Jerk.Mean...X                   |
| train-fBodyAccJerk-mean()-Y           | Train.FFT.Body.Acceleration.Jerk.Mean...Y                   |
| train-fBodyAccJerk-mean()-Z           | Train.FFT.Body.Acceleration.Jerk.Mean...Z                   |
| train-fBodyAccJerk-std()-X            | Train.FFT.Body.Acceleration.Jerk.std...X                    |
| train-fBodyAccJerk-std()-Y            | Train.FFT.Body.Acceleration.Jerk.std...Y                    |
| train-fBodyAccJerk-std()-Z            | Train.FFT.Body.Acceleration.Jerk.std...Z                    |
| train-fBodyAccJerk-meanFreq()-X       | Train.FFT.Body.Acceleration.Jerk.Mean.Frequency...X         |
| train-fBodyAccJerk-meanFreq()-Y       | Train.FFT.Body.Acceleration.Jerk.Mean.Frequency...Y         |
| train-fBodyAccJerk-meanFreq()-Z       | Train.FFT.Body.Acceleration.Jerk.Mean.Frequency...Z         |
| train-fBodyGyro-mean()-X              | Train.FFT.Body.Gyroscope.Mean...X                           |
| train-fBodyGyro-mean()-Y              | Train.FFT.Body.Gyroscope.Mean...Y                           |
| train-fBodyGyro-mean()-Z              | Train.FFT.Body.Gyroscope.Mean...Z                           |
| train-fBodyGyro-std()-X               | Train.FFT.Body.Gyroscope.std...X                            |
| train-fBodyGyro-std()-Y               | Train.FFT.Body.Gyroscope.std...Y                            |
| train-fBodyGyro-std()-Z               | Train.FFT.Body.Gyroscope.std...Z                            |
| train-fBodyGyro-meanFreq()-X          | Train.FFT.Body.Gyroscope.Mean.Frequency...X                 |
| train-fBodyGyro-meanFreq()-Y          | Train.FFT.Body.Gyroscope.Mean.Frequency...Y                 |
| train-fBodyGyro-meanFreq()-Z          | Train.FFT.Body.Gyroscope.Mean.Frequency...Z                 |
| train-fBodyAccMag-mean()              | Train.FFT.Body.Acceleration.Magnitude.Mean..                |
| train-fBodyAccMag-std()               | Train.FFT.Body.Acceleration.Magnitude.std..                 |
| train-fBodyAccMag-meanFreq()          | Train.FFT.Body.Acceleration.Magnitude.Mean.Frequency..      |
| train-fBodyBodyAccJerkMag-mean()      | Train.FFT.Body.Acceleration.Jerk.Magnitude.Mean..           |
| train-fBodyBodyAccJerkMag-std()       | Train.FFT.Body.Acceleration.Jerk.Magnitude.std..            |
| train-fBodyBodyAccJerkMag-meanFreq()  | Train.FFT.Body.Acceleration.Jerk.Magnitude.Mean.Frequency.. |
| train-fBodyBodyGyroMag-mean()         | Train.FFT.Body.Gyroscope.Magnitude.Mean..                   |
| train-fBodyBodyGyroMag-std()          | Train.FFT.Body.Gyroscope.Magnitude.std..                    |
| train-fBodyBodyGyroMag-meanFreq()     | Train.FFT.Body.Gyroscope.Magnitude.Mean.Frequency..         |
| train-fBodyBodyGyroJerkMag-mean()     | Train.FFT.Body.Gyroscope.Jerk.Magnitude.Mean..              |
| train-fBodyBodyGyroJerkMag-std()      | Train.FFT.Body.Gyroscope.Jerk.Magnitude.std..               |
| train-fBodyBodyGyroJerkMag-meanFreq() | Train.FFT.Body.Gyroscope.Jerk.Magnitude.Mean.Frequency..    |


