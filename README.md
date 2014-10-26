CourseraCleaningData
====================

Class project for Coursera Getting and Cleaning Data

The script run_analysis.R will read in the UCI HAR dataset and create two tidy data sets according to the instructions:

1) Merge the training and test data sets into a single data set.
2) Extract only the measurements on the mean and standard deviation for each measurment.
3) Use descciptive activity names to name the activities in the data set.
4) Appropriately label the data set with desciptive variable names. Note that these names are consistant with the tidy data set principals that there should be only lowercase letters, no white space or other special characters. The variable names are thus long, with many words running together, but they are descriptive.
5) The last data set is the average of each variable for each activity and each subject.

The included CodeBook.md file describes the variables, data and transformations performed to clean the data.

The text file features_transformations.txt is a table that describes the transformation of variable names into descriptive names. This file is seperate from the script so it is easily added to. The first column is the regular expression in the original variable name and the second column is the descriptive name to replace it with. 
