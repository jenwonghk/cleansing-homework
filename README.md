Human Activity Recognition Using Smartphones Dataset Version 1.0
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit?degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

The original data of the experiment are in:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A full description where the original data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The new dataset was merged and cleansed from the original data of the above link, each record of the new data set contains:
===========================================================================================================================
- Specific volunteer (1 to 30, have total 30 volunteers)
- Specific activity (Walking, Walking upstair, Walking downstair, Sitting, Standing, Laying, have total 6 type of activities)
- Average of the measurement of the features of mean
- Average of the measurement of the features of standard deviation

The new dataset includes the following files:
=============================================
'README.txt'

'x.csv'
the dataset is the average of each variable (the measurement of mean or standard deviation) for each activity and each subject.

'codebook.txt'
describe how the merging, cleansing and getting the new dataset of x.csv

'activity_labels.txt'
6 activity names of the experiement

'features.txt'
561 feature names of the experiment. During the cleansing process, we extracts only the measurements on the mean and standard deviation for each measurement.

'features_info.txt'
description of those features

License:
Use of this dataset in publications must be acknowledged by referencing the following publication [1]

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
