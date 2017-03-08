# Coursera: Cleaning Data Course Project

## Peer-graded Assignment

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The data came for the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) website and can be downloaded [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

### 'run_analysis.R' Script Explained

The script performs the following steps
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Each of the required steps is encaptulated in a function - the functions are:
* `setupEnv()`: sets up the initial environment and loads the 'dplyr' package
* `mergeData()`: loads the test and training data and merges it all into one large dataset (data frame)
* `extractMeanAndStd()`: extracts all the 'mean' and 'standard deviation' results into a new data frame
* `setDescriptiveNames()`: augments the data frame with descriptive column names and converts the 'Actvity' column into more meaningful factor names
* `getAverageActivityPerSubject()`: groups the dataset by SubjectId and Activity and returns the mean for each available column
 
At the bottom of the script is the invocation of these function to accomplish the desired results. The final resulting data-set is output to a TXT file.

### Note
The dataset came from the publication by Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
