## Getting and Cleaning Data Course Project

## 1) Merge the training and the test sets to create one data set.
## 2) Extract only the measurements on the mean and standard deviation 
##    for each measurement. 
## 3) Uses descriptive activity names to name the activities in the data set.
## 4) Appropriately labels the data set with descriptive variable names. 
## 5) From the data set in step 4, creates a second, independent tidy data set 
##    with the average of each variable for each activity and each subject.

setwd("/Users/heidi/files/Coursera/GettingAndCleaningData/CourseraCleaningData/")
library(dplyr)

## read in teh features transformation table before changing the working directory
featuresTransformation <- read.table("features_transformation.txt",
                                     header = TRUE) 

## set working directory to the directory with the dataset
setwd("./UCI\ HAR\ Dataset")

## first read in data labels
features <- read.csv("features.txt", header=FALSE, sep=" ",
                    col.names=c("index", "variables"))
activityLabels <- read.table("activity_labels.txt", 
                             col.names=c("id", "activity"))


## read in the six data set files, subject_*.txt, X_*.txt and y_train.txt
## where * = train or test

subject_train <- read.table("train/subject_train.txt", col.names="subjectid")
X_train <- read.table("train/X_train.txt", col.names=features$variables)
y_train <- read.table("train/y_train.txt", col.names="activityid")

subject_test <- read.table("test/subject_test.txt", col.names="subjectid")
X_test <- read.table("test/X_test.txt", col.names=features$variables)
y_test <- read.table("test/y_test.txt", col.names="activityid")

## combine test and training data sets
subject <- rbind(subject_train, subject_test)
Xdata <- rbind(X_train, X_test)
ydata <- rbind(y_train, y_test)

## extract only the observations of interest, the means and standard deviations
Xsummarize <- select(Xdata, contains("mean"), contains("std"))

## add descriptive name to activityid list
ydata <- merge(ydata, activityLabels, by.x="activityid", by.y="id")

## add subject and activity ids to make one table
Xsummarize <- cbind(subject, activity=ydata$activity, Xsummarize)

## clean up
rm(subject_train, subject_test, X_train, X_test, y_train, y_test)
rm(activityLabels, subject, ydata)

## make descriptive names
for (i in 1:dim(featuresTransformation)[1]){
    names(Xsummarize) <- sub(featuresTransformation[i,1],
                             featuresTransformation[i,2], names(Xsummarize))
}
names(Xsummarize) <- sub("\\.std\\.", "standarddeviation", names(Xsummarize))
names(Xsummarize) <- sub("\\.mean\\.", "mean", names(Xsummarize))
names(Xsummarize) <- gsub("\\.", "", names(Xsummarize))
names(Xsummarize) <- tolower(names(Xsummarize))

## group by subject and activity
by_subjectactivity <- group_by(Xsummarize, subjectid, activity)

## calculate averages by groups for each variable
datasummary  <- summarise_each(by_subjectactivity, funs(mean))


## set working directory back for output and write tidy data files
setwd("../")

write.table(Xsummarize, "features_mean_standarddeviations.txt", row.names=FALSE)
write.table(datasummary, "features_subject_activity_averages.txt", row.names=FALSE)




