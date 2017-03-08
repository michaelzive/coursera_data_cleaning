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

### 'run_analysis.R' Script Explained

Each of the required steps was encaptulated in a function. The functions are:
* `setupEnv()`: sets up the initial environment and loads the 'dplyr' package
* `mergeData()`: loads the test and training data and merges it all into one large dataset (data frame)
* `extractMeanAndStd()`: extracts all the 'mean' and 'standard deviation' results into a new data frame
* `setDescriptiveNames()`: augments the data frame with descriptive column names and converts the 'Actvity' column into more meaningful factor names
* `getAverageActivityPerSubject()`: groups the dataset by SubjectId and Activity and returns the mean for each available column
 
At the bottom of the script is the invocation of these function to accomplish the desired results. The final resulting data-set is output to a TXT file.
