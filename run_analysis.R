## This script does the following:
##  1) Merges the training and the test sets to create one data set.
##  2) Extracts only the measurements on the mean and standard deviation 
##     for each measurement.
##  3) Uses descriptive activity names to name the activities in the data set
##  4) Appropriately labels the data set with descriptive variable names.
##  5) From the data set in step 4, creates a second, independent tidy data set 
##     with the average of each variable for each activity and each subject.

## Setup the environment by setting the working directory and loading the
## necessary libraries
setupEnv <- function(workingDir) {
  setwd(workingDir)
  require(dplyr, quietly = TRUE)
}

## This function merges the training and test dataset to form one dataset.
## Returns the merged dataset.
mergeData <- function(subdir = "UCI HAR Dataset") {
  # setup variables
  trainDir <- file.path(subdir, "train")
  testDir <- file.path(subdir, "test")
  
  features <- read.table(file.path(subdir, "features.txt"), col.names = c("FeatureId", "FeatureName"))
  
  # merge training data
  subject_train <- read.table(file.path(trainDir, "subject_train.txt"), col.names = c("SubjectId"))
  y_train <- read.table(file.path(trainDir, "y_train.txt"), col.names = c("Activity"))
  X_train <- read.table(file.path(trainDir, "X_train.txt"))
  names(X_train) <- features$FeatureName
  trainDS <- cbind(subject_train, y_train, X_train)
  
  #merge test data
  subject_test <- read.table(file.path(testDir, "subject_test.txt"), col.names = c("SubjectId"))
  y_test <- read.table(file.path(testDir, "y_test.txt"), col.names = c("Activity"))
  X_test <- read.table(file.path(testDir, "X_test.txt"))
  names(X_test) <- features$FeatureName
  testDS <- cbind(subject_test, y_test, X_test)
  
  rbind(testDS, trainDS)
}

## This function is responsible for extracting only the measurements on the mean and standard 
## deviation for each measurement. It does this by keeping all columns that contain
extractMeanAndStd <- function(merged) {
  # keep all columns that contain mean, std - we also want to keep the subjectId and activity columns
  # because we'll be using them later
  colsToKeep <- grep("(^Activity$|[Mm]ean|std|SubjectId)", names(merged))
  merged[,colsToKeep]
}

## This function is responsible for steps 3 and 4 - it sets descriptive column names 
## as well as converting the Activity columns from numeric to descriptive factor names
setDescriptiveNames <- function(merged) {
  names(merged) <- sub("^t", "time", names(merged))
  names(merged) <- sub("^f", "freq", names(merged))
  
  merged$Activity <- factor(merged$Activity, labels = c("Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying"))
  merged
}

## Group the supplied dataset by SubjectId and Activity and then calculate the mean of each variable
getAverageActivityPerSubject <- function(merged) {
  merged %>% 
    group_by(SubjectId, Activity) %>%
    summarise_each(funs(mean))
}

## Invoke the function in order to complete steps 1 to 5 above
print("Setting up working directory and environment")
setupEnv("D:/Project/Courses/Data Science/Assignments/DataCleaningWeek4")
print("STEP 1: merging datasets")
mergedDS <- mergeData()
print("STEP 2: extracting mean and std deviation measurements")
mergedDS <- extractMeanAndStd(mergedDS)
print("STEP 3 and 4: setting descriptive names")
mergedDS <- setDescriptiveNames(mergedDS)
print("STEP 5: summarizing results and printing them out")
tidyDS <- getAverageActivityPerSubject(mergedDS)
write.table(tidyDS, file = "TidyResult.txt", row.names = FALSE)

 