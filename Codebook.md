Getting and Cleaning Data Project

Description

Code is used for the final project of Coursera's "Getting and Cleaning Data" class offered by Johns Hopkins University.

The following files have been read into seperate tables each:

features.txt
activity_labels.txt
subject_train.txt
x_train.txt
y_train.txt
subject_test.txt
x_test.txt
y_test.txt
All of the test and train datasets are merged into a single table using the rbind function in R.

Attribute Information: 
Triaxial acceleration from the accelerometerand the estimated body acceleration.
Triaxial Angular velocity from the gyroscope.
A 561-feature vector with time and frequency domain variables.
An identifier of the subject who carried out the experiment.

Code executes the five required steps for completing this project:
1) Merge the training and the test sets to create one data set.
2) Extract only the measurements on the mean and standard deviation for each measurement. 
3) Use descriptive activity names to name the activities in the data set
4) Appropriately label the data set with descriptive variable names. 
5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.





