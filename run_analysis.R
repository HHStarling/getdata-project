# ----------------------------------------------------------------------
# 1. Merges the training and the test sets to create one data set.
# ----------------------------------------------------------------------

# 1.1 Read train and test feature data
print("Reading X_train.txt...")
xTrain <- read.table("UCI HAR Dataset/train/X_train.txt")
print("Reading X_test.txt...")
xTest <- read.table("UCI HAR Dataset/test/X_test.txt")

# 1.2. Read activities
print("Reading y_train.txt...")
yTrain <- read.table("UCI HAR Dataset/train/y_train.txt")
print("Reading y_test.txt...")
yTest <- read.table("UCI HAR Dataset/test/y_test.txt")

# 1.3. Read subjects
print("Reading subject_train.txt...")
subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
print("Reading subject_test.txt...")
subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt")

# 1.4. Merge datasets by appending rows from the test dataset to the train dataset
print("Merging training data columns...")
train <- cbind(xTrain, subjectTrain, yTrain)
print("Merging testing data columns...")
test <- cbind(xTest, subjectTest, yTest)

# 1.5. Append testing data to training data
print("Consolidating training and test data into a single dataset...")
dataset <- rbind(train, test)


# ----------------------------------------------------------------------
# 2. Extracts only the measurements on the mean and standard deviation
#    for each measurement.
# ----------------------------------------------------------------------

# 2.1. Load feature labels
featureLabels <- read.table("UCI HAR Dataset/features.txt")

# 2.2. Find indices that contain the word mean or std (i.e. the standard deviation)
columnIndices <- grep("mean|std", featureLabels$V2)  # checks feature lables containing mean or std
columnIndices <- c(columnIndices, 562:563)
smallerDataset <- dataset[columnIndices]


# ----------------------------------------------------------------------
# 3. Uses descriptive activity names to name the activities in the data
#    set
# ----------------------------------------------------------------------

# 3.1. Read the activity file
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
smallerDataset$V1.2 <- activityLabels$V2[smallerDataset$V1.2]

# ----------------------------------------------------------------------
# 4. Appropriately labels the data set with descriptive variable names. 
# ----------------------------------------------------------------------

charFeatureLabels <- as.character(featureLabels$V2[columnIndices])

# ***IMPORTANT: Need to rename column headings to be in a nicer format
# (i.e. no white spaces, dashes, brackets, etc.)
charFeatureLabels[80] <- "subject"
charFeatureLabels[81] <- "activity"
library(data.table) # needed for setnames()
setnames(smallerDataset,colnames(smallerDataset),charFeatureLabels)

# Saving result of Step 4.
write.table(smallerDataset, "submission/tidyDataset.txt")

# ----------------------------------------------------------------------
# 5. From the data set in step 4, creates a second, independent tidy
#    data set with the average of each variable for each activity and
#    each subject.
# ----------------------------------------------------------------------

# compute mean for each variable, grouped by activity and subject
# E.g. AVG1,  AVG2,  AVG3, ..., AVG79, subject, activity
#      0.123, 0.341, 0.546, ..., .125, 1,       WALKING
#      0.123, 0.341, 0.546, ..., .125, 1,       STANDING
#      ....., ....., ....., ..., ...., .,       ........
#      ....., ....., ....., ..., ...., .,       ........ 
#      0.123, 0.341, 0.546, ..., .125, 2,       WALKING
#      0.123, 0.341, 0.546, ..., .125, 2,       STANDING

library(dplyr)
# google search: "r stackoverflow mean of columns grouped in data frame""
# ref: http://stackoverflow.com/questions/21982987/mean-per-group-in-a-data-frame
result <- smallerDataset %>%
  group_by(activity, subject) %>%
  summarise_each(funs(mean(., na.rm=TRUE)), -activity, -subject)

# Saving result of Step 5.
write.table(result, "submission/tidyDatasetSummary.txt")