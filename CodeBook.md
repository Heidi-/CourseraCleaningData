Code Book for UCI HAR data set
==============================

The original data set has the following structure:

UCI HAR Dataset/ - parent directory
    contents:
	README.txt - an information file explaining the experiment and the data
	features_info.txt - the code book for the data
        activity_labels.txt - map of activity id to activity name
        features.txt - map of feature index to abbreviated variable name
        test/ - directory of test data
        train/ - directory of training data

test/
    contents:
       X_test.txt - each row contains 561-feature vector of time and frequency domain variables
       subject_test.txt - subject ids for X_test data set
       y_test.txt - activity ids for X_test data set
       Inertial Signals/ - directory of raw data, ignored for this project

train/ 
    contents same as test dataset, with name train in place of test


==============================================
From the original code book, features_info.txt:
==============================================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


=======================

The above data was processed to provide:

features_mean_standarddeviations.txt - means and standard deviations for each measurement in the original data set as described above

features_subject_activity_averages.txt - average of each variable for each activity and each subject.


Variable names:

1 subjectid
2 activity
3 timebodyaccelerationmeanx
4 timebodyaccelerationmeany
5 timebodyaccelerationmeanz
6 timegravityaccelerationmeanx
7 timegravityaccelerationmeany
8 timegravityaccelerationmeanz
9 timebodyaccelerationjerkmeanx
10 timebodyaccelerationjerkmeany
11 timebodyaccelerationjerkmeanz
12 timebodygyroscopemeanx
13 timebodygyroscopemeany
14 timebodygyroscopemeanz
15 timebodygyroscopejerkmeanx
16 timebodygyroscopejerkmeany
17 timebodygyroscopejerkmeanz
18 timebodyaccelerationmagnitudemean
19 timegravityaccelerationmagnitudemean
20 timebodyaccelerationjerkmagnitudemean
21 timebodygyroscopemagnitudemean
22 timebodygyroscopejerkmagnitudemean
23 frequencybodyaccelerationmeanx
24 frequencybodyaccelerationmeany
25 frequencybodyaccelerationmeanz
26 frequencybodyaccelerationmeanfreqx
27 frequencybodyaccelerationmeanfreqy
28 frequencybodyaccelerationmeanfreqz
29 frequencybodyaccelerationjerkmeanx
30 frequencybodyaccelerationjerkmeany
31 frequencybodyaccelerationjerkmeanz
32 frequencybodyaccelerationjerkmeanfreqx
33 frequencybodyaccelerationjerkmeanfreqy
34 frequencybodyaccelerationjerkmeanfreqz
35 frequencybodygyroscopemeanx
36 frequencybodygyroscopemeany
37 frequencybodygyroscopemeanz
38 frequencybodygyroscopemeanfreqx
39 frequencybodygyroscopemeanfreqy
40 frequencybodygyroscopemeanfreqz
41 frequencybodyaccelerationmagnitudemean
42 frequencybodyaccelerationmagnitudemeanfreq
43 frequencybodybodyaccelerationjerkmagnitudemean
44 frequencybodybodyaccelerationjerkmagnitudemeanfreq
45 frequencybodybodygyroscopemagnitudemean
46 frequencybodybodygyroscopemagnitudemeanfreq
47 frequencybodybodygyroscopejerkmagnitudemean
48 frequencybodybodygyroscopejerkmagnitudemeanfreq
49 angletbodyaccelerationmeangravity
50 angletbodyaccelerationjerkmeangravitymean
51 angletbodygyroscopemeangravitymean
52 angletbodygyroscopejerkmeangravitymean
53 anglexgravitymean
54 angleygravitymean
55 anglezgravitymean
56 timebodyaccelerationstandarddeviationx
57 timebodyaccelerationstandarddeviationy
58 timebodyaccelerationstandarddeviationz
59 timegravityaccelerationstandarddeviationx
60 timegravityaccelerationstandarddeviationy
61 timegravityaccelerationstandarddeviationz
62 timebodyaccelerationjerkstandarddeviationx
63 timebodyaccelerationjerkstandarddeviationy
64 timebodyaccelerationjerkstandarddeviationz
65 timebodygyroscopestandarddeviationx
66 timebodygyroscopestandarddeviationy
67 timebodygyroscopestandarddeviationz
68 timebodygyroscopejerkstandarddeviationx
69 timebodygyroscopejerkstandarddeviationy
70 timebodygyroscopejerkstandarddeviationz
71 timebodyaccelerationmagnitudestandarddeviation
72 timegravityaccelerationmagnitudestandarddeviation
73 timebodyaccelerationjerkmagnitudestandarddeviation
74 timebodygyroscopemagnitudestandarddeviation
75 timebodygyroscopejerkmagnitudestandarddeviation
76 frequencybodyaccelerationstandarddeviationx
77 frequencybodyaccelerationstandarddeviationy
78 frequencybodyaccelerationstandarddeviationz
79 frequencybodyaccelerationjerkstandarddeviationx
80 frequencybodyaccelerationjerkstandarddeviationy
81 frequencybodyaccelerationjerkstandarddeviationz
82 frequencybodygyroscopestandarddeviationx
83 frequencybodygyroscopestandarddeviationy
84 frequencybodygyroscopestandarddeviationz
85 frequencybodyaccelerationmagnitudestandarddeviation
86 frequencybodybodyaccelerationjerkmagnitudestandarddeviation
87 frequencybodybodygyroscopemagnitudestandarddeviation
88 frequencybodybodygyroscopejerkmagnitudestandarddeviation
