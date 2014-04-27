# CodeBook

## Data Source

The data presented here is sourced from the Human Activity Recognition Using Smartphones Dataset Version 1.0 found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The following files were used to access the data:

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

### Notes: 
- Features are normalized and bounded within [-1,1].

## Transformations

All training and test data have been recombined into a single set.
Data is summarised (grouped) by the Activity and Subject and average of each feature is then given.
The Activity identifier has been replaced by it's corresponding description as given in activity_labels.txt
The only features presented are features of that displayed a mean or standard deviation of a random variable in the original feature set.

## Output

The data is presented in a file summary_by_activity_and_subject.txt

## Feature names

The random variables aggregated are:
-tBodyAcc-XYZ
-tGravityAcc-XYZ
-tBodyAccJerk-XYZ
-tBodyGyro-XYZ
-tBodyGyroJerk-XYZ
-tBodyAccMag
-tGravityAccMag
-tBodyAccJerkMag
-tBodyGyroMag
-tBodyGyroJerkMag
-fBodyAcc-XYZ
-fBodyAccJerk-XYZ
-fBodyGyro-XYZ
-fBodyAccMag
-fBodyAccJerkMag
-fBodyGyroMag
-fBodyGyroJerkMag

Each feature is then presented as measurement for the X, Y or Z axis of measurement (where not a Mag measurement).
For each measurement as mean and standard deviation is then given. 

This is then named for example tBodyAcc.mean.X for the mean value
of tBodyAcc on the X axis or t.BodyAcc.sd.X for the standard deviation of BodyAcc on the X axis.

## Variables

To identify the source of a variable presented  below in the original feature set (apart from grouping variables activity and subject_id) replace "." with "-" and replace "mean" with "mean()" and "sd" with "sd()".

Each feature is the average of the feature by activity and subject_id and is a floating number between [0,1].

1.	activity - Its activity label. This is a string that can take on the values WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING or LAYING
2.	subject_id - An identifier of the subject who carried out the experiment. This is an integer from 1 through to 30.
3.	tBodyAcc.mean.X
4.	tBodyAcc.mean.Y
5.	tBodyAcc.mean.Z
6.	tBodyAcc.std.X
7.	tBodyAcc.std.Y
8.	tBodyAcc.std.Z
9.	tGravityAcc.mean.X
10.	tGravityAcc.mean.Y
11.	tGravityAcc.mean.Z
12.	tGravityAcc.std.X
13.	tGravityAcc.std.Y
14.	tGravityAcc.std.Z
15.	tBodyAccJerk.mean.X
16.	tBodyAccJerk.mean.Y
17.	tBodyAccJerk.mean.Z
18.	tBodyAccJerk.std.X
19.	tBodyAccJerk.std.Y
20.	tBodyAccJerk.std.Z
21.	tBodyGyro.mean.X
22.	tBodyGyro.mean.Y
23.	tBodyGyro.mean.Z
24.	tBodyGyro.std.X
25.	tBodyGyro.std.Y
26.	tBodyGyro.std.Z
27.	tBodyGyroJerk.mean.X
28.	tBodyGyroJerk.mean.Y
29.	tBodyGyroJerk.mean.Z
30.	tBodyGyroJerk.std.X
31.	tBodyGyroJerk.std.Y
32.	tBodyGyroJerk.std.Z
33.	tBodyAccMag.mean
34.	tBodyAccMag.std
35.	tGravityAccMag.mean
36.	tGravityAccMag.std
37.	tBodyAccJerkMag.mean
38.	tBodyAccJerkMag.std
39.	tBodyGyroMag.mean
40.	tBodyGyroMag.std
41.	tBodyGyroJerkMag.mean
42.	tBodyGyroJerkMag.std
43.	fBodyAcc.mean.X
44.	fBodyAcc.mean.Y
45.	fBodyAcc.mean.Z
46.	fBodyAcc.std.X
47.	fBodyAcc.std.Y
48.	fBodyAcc.std.Z
49.	fBodyAccJerk.mean.X
50.	fBodyAccJerk.mean.Y
51.	fBodyAccJerk.mean.Z
52.	fBodyAccJerk.std.X
53.	fBodyAccJerk.std.Y
54.	fBodyAccJerk.std.Z
55.	fBodyGyro.mean.X
56.	fBodyGyro.mean.Y
57.	fBodyGyro.mean.Z
58.	fBodyGyro.std.X
59.	fBodyGyro.std.Y
60.	fBodyGyro.std.Z
61.	fBodyAccMag.mean
62.	fBodyAccMag.std
63.	fBodyBodyAccJerkMag.mean
64.	fBodyBodyAccJerkMag.std
65.	fBodyBodyGyroMag.mean
66.	fBodyBodyGyroMag.std
67.	fBodyBodyGyroJerkMag.mean
68.	fBodyBodyGyroJerkMag.std
