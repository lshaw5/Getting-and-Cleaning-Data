Getting and Cleaning Data Project

Variable Information: 
1) Triaxial acceleration from the accelerometerand the estimated body acceleration.
2) Triaxial Angular velocity from the gyroscope.
3) A 561-feature vector with time and frequency domain variables.
4) An identifier of the subject who carried out the experiment.

Step #1
The code reads the following files into separate tables: 
1) features.txt
2) activity_labels.txt
3) subject_train.txt
4) x_train.txt
5) y_train.txt
6) subject_test.txt
7) x_test.txt
8) y_test.txt

Step #2
All of the test and train datasets are merged into a single table using the rbind function in R.

Step #3
Feature names are updated to reflect mean and standard deviation

Step #4
Columns are reduced on the features table

Step #5
Last two columns are added (subject and acitivity)

Step #6
Column feature names are added to entire dataframe

Step #7 
Subject and activity are removed from columns

Step #8
Tidy data set is exported












