library(stringr)

# Get the data from tables provided

# Metadata
features_info = read.csv('features.txt', header=FALSE, as.is = TRUE, sep=' ')
names(activity_labels) = c('activity_number', 'activity')
activity_labels = read.csv('activity_labels.txt', sep='', header = FALSE)
names(activity_labels) = c('activity_number', 'activity_description')

# Test Data

subject_test = read.csv('test/subject_test.txt', sep='', header = FALSE, col.names=c('subject_id'))
features_test = read.csv('test/X_test.txt', sep='', header = FALSE, col.names=features_info[,2])
labels_test = read.csv('test/y_test.txt', sep='', header = FALSE, col.names=c('activity'))

# Training Data

subject_train = read.csv('train/subject_train.txt', sep='', header = FALSE, col.names=c('subject_id'))
features_train = read.csv('train/X_train.txt', sep='', header = FALSE, col.names=features_info[,2])
labels_train = read.csv('train/y_train.txt', sep='', header = FALSE, col.names=c('activity'))

# Bind the test and training data back into a single dataframe
subject = rbind(subject_train, subject_test)
features = rbind(features_train, features_test)
labels = rbind(labels_train, labels_test)


# Merge the activity labels and labels data to obtain a set
# containing their english descriptions and replace the original labels
#x = merge(labels, activity_labels, by.x = "activity", by.y ="activity_number", all.y=TRUE)
#labels = x[,2]
#x = NULL

# Merge the subject id and labels
merged = cbind(subject, labels, features)



# Obtain the list of features that are a mean or standard deviation
tidy_features = features_info$V2[str_detect(features_info$V2, "mean[(][])]") | str_detect(features_info$V2, "std[(][])]")]
tidy_features = gsub('-','.',tidy_features)
# Since "(" (hex x28) is a special character we run a fixed sub
tidy_features = gsub('\x28','.',tidy_features, fixed=TRUE)
tidy_features = gsub(')','.',tidy_features)

# Lets subset this to get out the variables we need
sub_features = subset(merged, select=c('subject_id', 'activity',tidy_features))

# Now tidy up the names
n = names(sub_features)
n = sub('..X','X',n, fixed=TRUE)
n = sub('..Y','Y',n, fixed=TRUE)
n = sub('..Z','Z',n, fixed=TRUE)
n = sub('..','',n, fixed=TRUE)
names(sub_features)= n


# According to the instructions we do not have to export this but if
# it was required we could write out the file.

# Melt this so we can remerge it grouped by subject and activity label
library(reshape2)
mergedMelt = melt(sub_features, id = c('subject_id', 'activity'), measure.vars= n[3:68])

castData = dcast(mergedMelt, activity + subject_id ~ variable, mean)

# Merge the activity labels and labels data to obtain a set
# containing their english descriptions and replace the original labels
md = merge(castData, activity_labels, by.x = "activity", by.y ="activity_number", all.y=TRUE)
md$activity = md$activity_description
md$activity_description = NULL
md$activity_number = NULL

write.csv(md,'summary_by_activity_and_subject.txt', row.names = FALSE)
 