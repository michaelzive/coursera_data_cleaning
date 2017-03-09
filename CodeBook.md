## Code Book

### Background

The data for this dataset was collected by a group 30 volunteers who performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) while wearing a smartphone that recorded the various movements.

### Explanation of each file

* `features.txt`: Names of the features collected.
* `activity_labels.txt`: Names and IDs for each of the activities.
* `X_train.txt`: training data from 70% of the volunteers
* `subject_train.txt`: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
* `y_train.txt`: training labels
* `X_test.txt`: test data from 30% of the volunteers.
* `subject_test.txt`: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
* `y_test.txt`: test labels.

### The final variable names are

* SubjectId
* Activity
* timeBodyAcc-mean()-X
* timeBodyAcc-mean()-Y
* timeBodyAcc-mean()-Z
* timeBodyAcc-std()-X
* timeBodyAcc-std()-Y
* timeBodyAcc-std()-Z
* timeGravityAcc-mean()-X
* timeGravityAcc-mean()-Y
* timeGravityAcc-mean()-Z
* timeGravityAcc-std()-X
* timeGravityAcc-std()-Y
* timeGravityAcc-std()-Z
* timeBodyAccJerk-mean()-X
* timeBodyAccJerk-mean()-Y
* timeBodyAccJerk-mean()-Z
* timeBodyAccJerk-std()-X
* timeBodyAccJerk-std()-Y
* timeBodyAccJerk-std()-Z
* timeBodyGyro-mean()-X
* timeBodyGyro-mean()-Y
* timeBodyGyro-mean()-Z
* timeBodyGyro-std()-X
* timeBodyGyro-std()-Y
* timeBodyGyro-std()-Z
* timeBodyGyroJerk-mean()-X
* timeBodyGyroJerk-mean()-Y
* timeBodyGyroJerk-mean()-Z
* timeBodyGyroJerk-std()-X
* timeBodyGyroJerk-std()-Y
* timeBodyGyroJerk-std()-Z
* timeBodyAccMag-mean()
* timeBodyAccMag-std()
* timeGravityAccMag-mean()
* timeGravityAccMag-std()
* timeBodyAccJerkMag-mean()
* timeBodyAccJerkMag-std()
* timeBodyGyroMag-mean()
* timeBodyGyroMag-std()
* timeBodyGyroJerkMag-mean()
* timeBodyGyroJerkMag-std()
* freqBodyAcc-mean()-X
* freqBodyAcc-mean()-Y
* freqBodyAcc-mean()-Z
* freqBodyAcc-std()-X
* freqBodyAcc-std()-Y
* freqBodyAcc-std()-Z
* freqBodyAcc-meanFreq()-X
* freqBodyAcc-meanFreq()-Y
* freqBodyAcc-meanFreq()-Z
* freqBodyAccJerk-mean()-X
* freqBodyAccJerk-mean()-Y
* freqBodyAccJerk-mean()-Z
* freqBodyAccJerk-std()-X
* freqBodyAccJerk-std()-Y
* freqBodyAccJerk-std()-Z
* freqBodyAccJerk-meanFreq()-X
* freqBodyAccJerk-meanFreq()-Y
* freqBodyAccJerk-meanFreq()-Z
* freqBodyGyro-mean()-X
* freqBodyGyro-mean()-Y
* freqBodyGyro-mean()-Z
* freqBodyGyro-std()-X
* freqBodyGyro-std()-Y
* freqBodyGyro-std()-Z
* freqBodyGyro-meanFreq()-X
* freqBodyGyro-meanFreq()-Y
* freqBodyGyro-meanFreq()-Z
* freqBodyAccMag-mean()
* freqBodyAccMag-std()
* freqBodyAccMag-meanFreq()
* freqBodyBodyAccJerkMag-mean()
* freqBodyBodyAccJerkMag-std()
* freqBodyBodyAccJerkMag-meanFreq()
* freqBodyBodyGyroMag-mean()
* freqBodyBodyGyroMag-std()
* freqBodyBodyGyroMag-meanFreq()
* freqBodyBodyGyroJerkMag-mean()
* freqBodyBodyGyroJerkMag-std()
* freqBodyBodyGyroJerkMag-meanFreq()
* angle(tBodyAccMean,gravity)
* angle(tBodyAccJerkMean),gravityMean)
* angle(tBodyGyroMean,gravityMean)
* angle(tBodyGyroJerkMean,gravityMean)
* angle(X,gravityMean)
* angle(Y,gravityMean)
* angle(Z,gravityMean)