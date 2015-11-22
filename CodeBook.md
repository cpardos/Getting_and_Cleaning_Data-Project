#CodeBook

##Data introduction
The data of this project is data collected from the accelerometers from different Samsung Galaxy S smartphones. While people were training with their smartphones, some variables were collected.

The whole dataset is formed by different folders of files. But, for our purposes we only need the following files:
1. "X_train.txt"
2. "y_train.txt"
3. "subject_train.txt"
4. "X_test.txt"
5. "test/y_test.txt"
6. "subject_test.txt"
7. "features.txt"
8. "activity_labels.txt"

If you have more interest on the whole Samsung project, do not hesitate to visit the following link to get more information:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Transformations (steps)
1. Load all the required data and packages
2. Merge training and test sets to create one data set.
3. Extracts only the measurements on the mean and standard deviation for each measurement. 
4. Uses descriptive activity names to name the activities in the data set
5. Appropriately labels the data set with descriptive variable names. 
6. Join subjects, activities and the other variables in a unique data set.
7. From the data set in step 6, an independent tidy data set have been created with the average of each variable for each activity and each subject. It is called "TidyData_averages.txt" and it could be found in this repository.

##Variables
The 6 activities of the data are:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

There are 30 different subjects.

And for each activity in the "TidyData_averages", you will find the averages of the following variables for each subject:
*tBodyAcc-mean()-X
*tBodyAcc-mean()-Y
*tBodyAcc-mean()-Z
*tBodyAcc-std()-X
*tBodyAcc-std()-Y
*tBodyAcc-std()-Z
*tGravityAcc-mean()-X
*tGravityAcc-mean()-Y
*tGravityAcc-mean()-Z 
*tGravityAcc-std()-X
*tGravityAcc-std()-Y 
*tGravityAcc-std()-Z 
*tBodyAccJerk-mean()-X
*tBodyAccJerk-mean()-Y 
*tBodyAccJerk-mean()-Z 
*tBodyAccJerk-std()-X 
*tBodyAccJerk-std()-Y 
*tBodyAccJerk-std()-Z 
*tBodyGyro-mean()-X 
*tBodyGyro-mean()-Y 
*tBodyGyro-mean()-Z 
*tBodyGyro-std()-X 
*tBodyGyro-std()-Y 
*tBodyGyro-std()-Z 
*tBodyGyroJerk-mean()-X 
*tBodyGyroJerk-mean()-Y 
*tBodyGyroJerk-mean()-Z 
*tBodyGyroJerk-std()-X 
*tBodyGyroJerk-std()-Y 
*tBodyGyroJerk-std()-Z 
*tBodyAccMag-mean()
*tBodyAccMag-std() 
*tGravityAccMag-mean() 
*tGravityAccMag-std() 
*tBodyAccJerkMag-mean() 
*tBodyAccJerkMag-std() 
*tBodyGyroMag-mean() 
*tBodyGyroMag-std() 
*tBodyGyroJerkMag-mean() 
*tBodyGyroJerkMag-std() 
*fBodyAcc-mean()-X 
*fBodyAcc-mean()-Y 
*fBodyAcc-mean()-Z 
*fBodyAcc-std()-X 
*fBodyAcc-std()-Y 
*fBodyAcc-std()-Z 
*fBodyAcc-meanFreq()-X 
*fBodyAcc-meanFreq()-Y 
*fBodyAcc-meanFreq()-Z 
*fBodyAccJerk-mean()-X 
*fBodyAccJerk-mean()-Y 
*fBodyAccJerk-mean()-Z 
*fBodyAccJerk-std()-X 
*fBodyAccJerk-std()-Y 
*fBodyAccJerk-std()-Z 
*fBodyAccJerk-meanFreq()-X 
*fBodyAccJerk-meanFreq()-Y 
*fBodyAccJerk-meanFreq()-Z 
*fBodyGyro-mean()-X 
*fBodyGyro-mean()-Y 
*fBodyGyro-mean()-Z 
*fBodyGyro-std()-X 
*fBodyGyro-std()-Y 
*fBodyGyro-std()-Z 
*fBodyGyro-meanFreq()-X 
*fBodyGyro-meanFreq()-Y 
*fBodyGyro-meanFreq()-Z 
*fBodyAccMag-mean() 
*fBodyAccMag-std() 
*fBodyAccMag-meanFreq() 
*fBodyBodyAccJerkMag-mean()
*fBodyBodyAccJerkMag-std() 
*fBodyBodyAccJerkMag-meanFreq() 
*fBodyBodyGyroMag-mean() 
*fBodyBodyGyroMag-std() 
*fBodyBodyGyroMag-meanFreq() 
*fBodyBodyGyroJerkMag-mean() 
*fBodyBodyGyroJerkMag-std() 
*fBodyBodyGyroJerkMag-meanFreq()
