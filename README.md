Getting-and-Cleaning-Data-Project
=================================

# Files
The project users the following files:
* run_analysis.R
* features.txt
* activity_labels.txt
* subject_test.txt
* X_test.txt
* y_test.txt
* subject_train.txt
* X_train.txt
* y_train.txt
* summary_by_activity_and_subject.txt

It also uses the stringr and reshape2 libraries

# Importing Data
The first step is to import subject, activity and feature data for the test and training data.

# Joining Data
The test and training data are merged using row binding before any manipulation occurs.

# Combining Data Sets
Once the training and test data are combined I used column binding to join the Subject, Activity and Feature data into
a single data frame.

# Selecting columns
The columns requested all included the text mean() or std() therefore the function_info was searched and only those columns
matching the pattern were returned. Some additional data manipulation was required to clean up the headings.

#Melt and Merge
From the combined data and the list of required headings a subset of the data was pulled.

The data was then melted to accomodate the grouping required. This broke the data down into Subject, Activity and Variable rows.

They were then recombined but now each row has an average of each variable for Subject and Activity combinations.

#Lookups
A lookup was performed to replace the activity factor (1 through to 6) with an English description.

Output
Finally the data was saved to a text file in CSV format. Text is shown to allow an upload to Coursera.
