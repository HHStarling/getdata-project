#Contents

This document contains information about:

1. The Study
    * Information about the experimental study design that was used
    * Information about the summary choices that were made
2. The Codebook
    * Information about the variables (including units!) in the data set not contained in the tidy data

##1. The Study

The purpose of this study is to provide a tidied and summarized version of the wearable sensor data, obtained from the University of California Irvine (UCI). This goal of which is to demonstrate an ability to collect, work with, and clean a data set so that it can be used for later analysis. 

The source data was collected from a Samsung Galaxy S smartphone, and in a further processing step, a number of features extracted for human activity recognition purposes. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data sources for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

**Study Design**

The design of this study, is outlined in the Coursera "Getting and Cleaning Data" project requirements. Namely:

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement. 
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names. 
5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

**Summary Choices**

The summary choices, are outlined in step 2 and 5. of the "Study Design" section above. More specifically, a subset of features (columns) from the orginal dataset were extracted so that only features that contained the mean and standard deviation of measurements were kept. This was achieved using the *grep()* function in R, to identify columns that contained the words "mean" or "sd".

Lastly, as in step 5. of the "Study Design" section above, the mean of each variable was extracted, for each activity and each subject. This was achieved using the *group_by()* and *summarize_each()* functions in R.

##2. The Code Book

**Measurement Units**

According to the UCI source dataset, all features were calculated from the smartphone's accelerometer and gyroscope 3-axial raw signals.

* The accelerometers were in standard gravity units 'g' ( approximately 9.8 meters per second per second (m/s^2) ).
* The gyroscopes are in radians per second.

However, the **features** extracted from the raw signals **were normalized and bounded within [-1, 1]**. Therefore, the summaries (the means) presented in the dataset are also in normalized units.

**Variable descriptions**

Each variable name contains the following pieces of information:

* Time/Frequency: A prefix 't' to denotes a time domain feature, and a prefix 'f' to denotes frequency domain feature.

* Summary Type: The variables also describe the body linear acceleration, angular velocity, and Jerk signals (derived from the linear acceleration and angular velocity). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.

* Axis: These signals were used to estimate variables of the feature vector for each pattern:  
'_XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation

**The complete list of variables are described below**

In this dataset, we present the averages (means) of each of the variables listed below, per subject, per activity:

* **subject**: identifies the subject who performed the activity. Its range is from 1 to 30.
* **activity**: describes one of 6 activities the subject performed: ["WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", 
"STANDING", "LAYING"].
* **tBodyAcc_mean_X**: The mean of the body linear acceleration on the x-axis. It's range is from -1 to 1.
* **tBodyAcc_mean_Y**: The mean of the body linear acceleration on the y-axis. It's range is from -1 to 1.
* **tBodyAcc_mean_Z**: The mean of the body linear acceleration on the z-axis. It's range is from -1 to 1.
* **tBodyAcc_std_X**: The standard deviation of the body linear acceleration on the x-axis. It's range is from -1 to 1.
* **tBodyAcc_std_Y**: The standard deviation of the body linear acceleration on the y-axis. It's range is from -1 to 1.
* **tBodyAcc_std_Z**: The standard deviation of the body linear acceleration on the z-axis. It's range is from -1 to 1.
* **tGravityAcc_mean_X**: The mean of the gravity component of acceleration on the x-axis. It's range is from -1 to 1.
* **tGravityAcc_mean_Y**: The mean of the gravity component of acceleration on the y-axis. It's range is from -1 to 1.
* **tGravityAcc_mean_Z**: The mean of the gravity component of acceleration on the z-axis. It's range is from -1 to 1.
* **tGravityAcc_std_X**: The standard deviation of the gravity component of acceleration on the x-axis. It's range is from -1 to 1.
* **tGravityAcc_std_Y**: The standard deviation of the gravity component of acceleration on the y-axis. It's range is from -1 to 1.
* **tGravityAcc_std_Z**: The standard deviation of the gravity component of acceleration on the z-axis. It's range is from -1 to 1.
* **tBodyAccJerk_mean_X**: The mean of the jerk on the x-axis. It's range is from -1 to 1.
* **tBodyAccJerk_mean_Y**: The mean of the jerk on the y-axis. It's range is from -1 to 1.
* **tBodyAccJerk_mean_Z**: The mean of the jerk on the z-axis. It's range is from -1 to 1.
* **tBodyAccJerk_std_X**: The standard deviation of the jerk on the x-axis. It's range is from -1 to 1.
* **tBodyAccJerk_std_Y**: The standard deviation of the jerk on the y-axis. It's range is from -1 to 1.
* **tBodyAccJerk_std_Z**: The standard deviation of the jerk on the z-axis. It's range is from -1 to 1.
* **tBodyGyro_mean_X**: The mean of the body angular velocity on the gyroscopes x-axis. It's range is from -1 to 1.
* **tBodyGyro_mean_Y**: The mean of the body angular velocity on the gyroscopes y-axis. It's range is from -1 to 1.
* **tBodyGyro_mean_Z**: The mean of the body angular velocity on the gyroscopes z-axis. It's range is from -1 to 1.
* **tBodyGyro_std_X**: The standard deviation of the body angular velocity on the gyroscopes x-axis. It's range is from -1 to 1.
* **tBodyGyro_std_Y**: The standard deviation of the body angular velocity on the gyroscopes y-axis. It's range is from -1 to 1.
* **tBodyGyro_std_Z**: The standard deviation of the body angular velocity on the gyroscopes z-axis. It's range is from -1 to 1.
* **tBodyGyroJerk_mean_X**: The mean of the body angular jerk on the gyroscopes x-axis. It's range is from -1 to 1.
* **tBodyGyroJerk_mean_Y**: The mean of the body angular jerk on the gyroscopes y-axis. It's range is from -1 to 1.
* **tBodyGyroJerk_mean_Z**: The mean of the body angular jerk on the gyroscopes z-axis. It's range is from -1 to 1.
* **tBodyGyroJerk_std_X**: The standard deviation of the body angular jerk on the gyroscopes x-axis. It's range is from -1 to 1.
* **tBodyGyroJerk_std_Y**: The standard deviation of the body angular jerk on the gyroscopes y-axis. It's range is from -1 to 1.
* **tBodyGyroJerk_std_Z**: The standard deviation of the body angular jerk on the gyroscopes z-axis. It's range is from -1 to 1.
* **tBodyAccMag_mean**: The mean of the three-dimensional magnitude (Euclidean norm) of the body linear acceleration. It's range is from -1 to 1.
* **tBodyAccMag_std**: The standard deviation of the three-dimensional magnitude (Euclidean norm) of the body linear acceleration. It's range is from -1 to 1. 1.
* **tGravityAccMag_mean**: The mean of the three-dimensional magnitude (Euclidean norm) of the acceleration due to gravity. It's range is from -1 to
* **tGravityAccMag_std**: The standard deviation of the three-dimensional magnitude (Euclidean norm) of acceleration due to gravity. It's range is from -1.
* **tBodyAccJerkMag_mean**: The mean of the three-dimensional magnitude (Euclidean norm) of the body linear jerk. It's range is from -1 to 1.
* **tBodyAccJerkMag_std**: The standard deviation of the three-dimensional magnitude (Euclidean norm) of the body linear jerk. It's range is from -1 to 1.
* **tBodyGyroMag_mean**: The mean of the three-dimensional magnitude (Euclidean norm) of the body angular velocity. It's range is from -1 to 1.
* **tBodyGyroMag_std**: The standard deviation of the three-dimensional magnitude (Euclidean norm) of the body angular velocity. It's range is from -1 to 1.
* **tBodyGyroJerkMag_mean**: The mean of the three-dimensional magnitude (Euclidean norm) of the body angular jerk. It's range is from -1 to 1.
* **tBodyGyroJerkMag_std**: The standard deviation of the three-dimensional magnitude (Euclidean norm) of the body angular jerk. It's range is from -1 to 1.
* **fBodyAcc_mean_X**: The mean of the Fast Fourier Transform (FFT) of body linear acceleration on the x-axis. It's range is from -1 to 1.
* **fBodyAcc_mean_Y**: The mean of the Fast Fourier Transform (FFT) of body linear acceleration on the y-axis. It's range is from -1 to 1.
* **fBodyAcc_mean_Z**: The mean of the Fast Fourier Transform (FFT) of body linear acceleration on the z-axis. It's range is from -1 to 1.
* **fBodyAcc_std_X**: The standard deviation of the Fast Fourier Transform (FFT) of body linear acceleration on the x-axis. It's range is from -1 to 1.
* **fBodyAcc_std_Y**: The standard deviation of the Fast Fourier Transform (FFT) of body linear acceleration on the y-axis. It's range is from -1 to 1.
* **fBodyAcc_std_Z**: The standard deviation of the Fast Fourier Transform (FFT) of body linear acceleration on the z-axis. It's range is from -1 to 1.
* **fBodyAcc_meanFreq_X**: The mean frequency of the Fast Fourier Transform (FFT) of body linear acceleration on the x-axis. It's range is from -1 to 1.
* **fBodyAcc_meanFreq_Y**: The mean frequency of the Fast Fourier Transform (FFT) of body linear acceleration on the y-axis. It's range is from -1 to 1.
* **fBodyAcc_meanFreq_Z**: The mean frequency of the Fast Fourier Transform (FFT) of body linear acceleration on the z-axis. It's range is from -1 to 1.
* **fBodyAccJerk_mean_X**: The mean of the Fast Fourier Transform (FFT) of body linear jerk on the x-axis. It's range is from -1 to 1.
* **fBodyAccJerk_mean_Y**: The mean of the Fast Fourier Transform (FFT) of body linear jerk on the y-axis. It's range is from -1 to 1.
* **fBodyAccJerk_mean_Z**: The mean of the Fast Fourier Transform (FFT) of body linear jerk on the z-axis. It's range is from -1 to 1.
* **fBodyAccJerk_std_X**: The standard deviation of the Fast Fourier Transform (FFT) of body linear jerk on the x-axis. It's range is from -1 to 1.
* **fBodyAccJerk_std_Y**: The standard deviation of the Fast Fourier Transform (FFT) of body linear jerk on the x-axis. It's range is from -1 to 1.
* **fBodyAccJerk_std_Z**: The standard deviation of the Fast Fourier Transform (FFT) of body linear jerk on the x-axis. It's range is from -1 to 1.
* **fBodyAccJerk_meanFreq_X**: The mean frequency of the Fast Fourier Transform (FFT) of body linear jerk on the x-axis. It's range is from -1 to 1.
* **fBodyAccJerk_meanFreq_Y**: The mean frequency of the Fast Fourier Transform (FFT) of body linear jerk on the y-axis. It's range is from -1 to 1.
* **fBodyAccJerk_meanFreq_Z**: The mean frequency of the Fast Fourier Transform (FFT) of body linear jerk on the z-axis. It's range is from -1 to 1.
* **fBodyGyro_mean_X**: The mean of the Fast Fourier Transform (FFT) of body angular velocity on the gyroscopes x-axis. It's range is from -1 to 1.
* **fBodyGyro_mean_Y**: The mean of the Fast Fourier Transform (FFT) of body angular velocity on the gyroscopes y-axis. It's range is from -1 to 1.
* **fBodyGyro_mean_Z**: The mean of the Fast Fourier Transform (FFT) of body angular velocity on the gyroscopes z-axis. It's range is from -1 to 1.
* **fBodyGyro_std_X**: The standard deviation of the Fast Fourier Transform (FFT) of body angular velocity on the gyroscopes x-axis. It's range is from -1 to 1.
* **fBodyGyro_std_Y**: The standard deviation of the Fast Fourier Transform (FFT) of body angular velocity on the gyroscopes x-axis. It's range is from -1 to 1.
* **fBodyGyro_std_Z**: The standard deviation of the Fast Fourier Transform (FFT) of body angular velocity on the gyroscopes x-axis. It's range is from -1 to 1.
* **fBodyGyro_meanFreq_X**: The mean frequency of the Fast Fourier Transform (FFT) of body angular velocity on the gyroscopes x-axis. It's range is from -1 to 1.
* **fBodyGyro_meanFreq_Y**: The mean frequency of the Fast Fourier Transform (FFT) of body angular velocity on the gyroscopes y-axis. It's range is from -1 to 1.
* **fBodyGyro_meanFreq_Z**: The mean frequency of the Fast Fourier Transform (FFT) of body angular velocity on the gyroscopes z-axis. It's range is from -1 to 1.
* **fBodyAccMag_mean**: The mean of the Fast Fourier Transform (FFT) of three-dimensional magnitude (Euclidean norm) of the body linear acceleration. It's range is from -1 to 1.
* **fBodyAccMag_std**: The standard deviation of the Fast Fourier Transform (FFT) of three-dimensional magnitude (Euclidean norm) of the body linear acceleration. It's range is from -1 to 1.
* **fBodyAccMag_meanFreq:**: The mean frequency of the Fast Fourier Transform (FFT) of three-dimensional magnitude (Euclidean norm) of the body linear acceleration. It's range is from -1 to 1.
* **fBodyBodyAccJerkMag_mean**: The mean of the Fast Fourier Transform (FFT) of three-dimensional magnitude (Euclidean norm) of the body linear jerk. It's range is from -1 to 1.
* **fBodyBodyAccJerkMag_std**: The standard deviation of the Fast Fourier Transform (FFT) of three-dimensional magnitude (Euclidean norm) of the body linear jerk. It's range is from -1 to 1.
* **fBodyBodyAccJerkMag_meanFreq**: The mean frequency of the Fast Fourier Transform (FFT) of three-dimensional magnitude (Euclidean norm) of the body linear jerk. It's range is from -1 to 1.
* **fBodyBodyGyroMag_mean**: The mean of the Fast Fourier Transform (FFT) of three-dimensional magnitude (Euclidean norm) of the body angular velocity. It's range is from -1 to 1.
* **fBodyBodyGyroMag_std**: The standard deviation of the Fast Fourier Transform (FFT) of three-dimensional magnitude (Euclidean norm) of the body angular velocity. It's range is from -1 to 1.
* **fBodyBodyGyroMag_meanFreq**: The mean frequnecy of the Fast Fourier Transform (FFT) of three-dimensional magnitude (Euclidean norm) of the body angular velocity. It's range is from -1 to 1.
* **fBodyBodyGyroJerkMag_mean**: The mean of the Fast Fourier Transform (FFT) of three-dimensional magnitude (Euclidean norm) of the body angular jerk. It's range is from -1 to 1.
* **fBodyBodyGyroJerkMag_std**: The standard deviation of the Fast Fourier Transform (FFT) of three-dimensional magnitude (Euclidean norm) of the body angular jerk. It's range is from -1 to 1.
* **fBodyBodyGyroJerkMag_meanFreq**: The mean frequency of the Fast Fourier Transform (FFT) of three-dimensional magnitude (Euclidean norm) of the body angular jerk. It's range is from -1 to 1.
