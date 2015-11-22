#First of all, set the working directory where you have the Samsung data saved.
#If you do not have the data, you can download it from the following URL:
#http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

#Step 0 - Load all the packages and data sets you will need
library(plyr)
Train.Data <- read.table("train/X_train.txt", header = FALSE, sep= "")
Train.Labels <- read.table("train/y_train.txt", header = FALSE, sep= "")
Train.Subjects <- read.table("train/subject_train.txt", header = FALSE, sep= "")
Test.Data <- read.table("test/X_test.txt", header = FALSE, sep= "")
Test.Labels <- read.table("test/y_test.txt", header = FALSE, sep= "")
Test.Subjects <- read.table("test/subject_test.txt", header = FALSE, sep= "")
Features.List <- read.table("features.txt", header = FALSE, sep= "")
Activities.Names <- read.table("activity_labels.txt", header = FALSE, sep= "")

#Step 1 - Merges the training and the test sets to create one data set.

#We can observe on the "Environment list" on RStudio that Train.Data and Test.Data
#have the same number of variables (it can also be checked using dim() of these
#objects).
#In addition, thanks of the READ.ME file explanations included in the data link,
#we know that the variables are the same. Because of that, we only need to bind
#the rows of both data sets to merge them:

full_data <- rbind(Train.Data, Test.Data)

#Step 2 - Extracts only the measurements on the mean and standard deviation for
#each measurement.

#As "Features.List" contains the variable names of all the data, the number of
#columns of both dataframes is the same. Knowing that, we can use regular expression
#to select only the columns that have "mean" and "std" on their names and then
#subset "full_data" by the columns IDs obtained. 

columnsIDs <- grep(".*mean.*|.*std.*", Features.List[, 2])
Mean.Std_data <- full_data[, columnsIDs]

#Step 3 - Uses descriptive activity names to name the activities in the data set.

#First of all, put together the activity labels of training and test data sets.
#And next, we need to assign each activity label value to each of the activity
#names, which can be found in "Activity.Names".

act_labels <- rbind(Train.Labels, Test.Labels)
act_labels[, 1] <- Activities.Names[act_labels[, 1], 2]

#Step 4 - Appropriately labels the data set with descriptive variable names.

#At this part, we can give each variable the adequate name, taking the names from
#the subsetted "Features.List" in Step 2.
#We can also give a name to the set of activities labeled in Step 3.
#And finally we can join the subjects data from training and tests data sets and
#give them a name too.

names(Mean.Std_data) <- Features.List[columnsIDs, 2]
names(act_labels) <- "Activity"
subjects <- rbind(Train.Subjects, Test.Subjects)
names(subjects) <- "Subject"

#Step 4.1 - We can put each subject, activity and feature in the same dataframe.

complete_df <- cbind(subjects, act_labels, Mean.Std_data)

#Step 5 - Create a tidy data set with the average of each variable for each activity
#and each subject.

#In this last step, creating the table with the required averages can be done in
#only one step using the "ddply" function from the "plyr" package.
#Then we can create a .txt file with all this tidy information.

TidyData_averages <- ddply(complete_df, .(Subject, Activity), function(x) colMeans(x[, 3:81]))
write.table(TidyData_averages, "TidyData_averages.txt", row.name=FALSE)

#Note that depending on the program used to open this .txt file, it might seem that
#data is not tidy. Please use R to open the .txt file and data will look fine (tidy). 
