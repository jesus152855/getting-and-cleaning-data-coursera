## Code Book

This code book summarizes the resulting data fields in 'tidy.txt'.

## Steps

1. Download the data set, if the file doesn't exist
2. Unzip the data set into my chosen working directory
3. Load activity labels and features
4. Extract only the features on mean and standard deviation
5. Load test and training data sets into data tables
6. Merge datasets and add correct labels
7. Turn activities and subjects into factors
8. Calculating the average of the measurements
9. Export the tidyData set 

Please refer to [run_analysis.R] (https://github.com/jesus152855/getting-and-cleaning-data-coursera/run_analysis.R) for implementation details.

## Identifiers

* 'subject' - The ID of the test subject
* 'activity' - The type of activity performed when the corresponding measurements were taken

## Measurements

* 'tBodyAccMeanX'
* 'tBodyAccMeanY'
* 'tBodyAccMeanZ'
* 'tBodyAccStdX'
* 'tBodyAccStdY'
* 'tBodyAccStdZ'
* 'tGravityAccMeanX'
* 'tGravityAccMeanY'
* 'tGravityAccMeanZ'
* 'tGravityAccStdX'
* 'tGravityAccStdY'
* 'tGravityAccStdZ'
* 'tBodyAccJerkMeanX'
* 'tBodyAccJerkMeanY'
* 'tBodyAccJerkMeanZ'
* 'tBodyAccJerkStdX'
* 'tBodyAccJerkStdY'
* 'tBodyAccJerkStdZ'
* 'tBodyGyroMeanX'
* 'tBodyGyroMeanY'
* 'tBodyGyroMeanZ'
* 'tBodyGyroStdX'
* 'tBodyGyroStdY'
* 'tBodyGyroStdZ'
* 'tBodyGyroJerkMeanX'
* 'tBodyGyroJerkMeanY'
* 'tBodyGyroJerkMeanZ'
* 'tBodyGyroJerkStdX'
* 'tBodyGyroJerkStdY'
* 'tBodyGyroJerkStdZ'
* 'tBodyAccMagMean'
* 'tBodyAccMagStd'
* 'tGravityAccMagMean'
* 'tGravityAccMagStd'
* 'tBodyAccJerkMagMean'
* 'tBodyAccJerkMagStd'
* 'tBodyGyroMagMean'
* 'tBodyGyroMagStd'
* 'tBodyGyroJerkMagMean'
* 'tBodyGyroJerkMagnitudeStd'
* 'fBodyAccMeanX'
* 'fBodyAccMeanY'
* 'fBodyAccMeanZ'
* 'fBodyAccStdX'
* 'fBodyAccStdY'
* 'fBodyAccStdZ'
* 'fBodyAccMeanFreqX'
* 'fBodyAccMeanFreqY'
* 'fBodyAccMeanFreqZ'
* 'fBodyAccJerkMeanX'
* 'fBodyAccJerkMeanY'
* 'fBodyAccJerkMeanZ'
* 'fBodyAccJerkStdX'
* 'fBodyAccJerkStdY'
* 'fBodyAccJerkStdZ'
* 'fBodyAccJerkMeanFreqX'
* 'fBodyAccJerkMeanFreqY'
* 'fBodyAccJerkMeanFreqZ'
* 'fBodyGyroMeanX'
* 'fBodyGyroMeanY'
* 'fBodyGyroMeanZ'
* 'fBodyGyroStdX'
* 'fBodyGyroStdY'
* 'fBodyGyroStdZ'
* 'fBodyGyroMeanFreqX'
* 'fBodyGyroMeanFreqY'
* 'fBodyGyroMeanFreqZ'
* 'fBodyAccMagnitudeMean'
* 'fBodyAccMagnitudeStd'
* 'fBodyAccMagnitudeMeanFreq'
* 'fBodyBodyAccJerkMagnitudeMean'
* 'fBodyBodyAccJerkMagnitudeStd'
* 'fBodyBodyAccJerkMagnitudeMeanFreq'
* 'fBodyBodyGyroMagnitudeMean'
* 'fBodyBodyGyroMagnitudeStd'
* 'fBodyBodyGyroMagnitudeMeanFreq'
* 'fBodyBodyGyroJerkMagnitudeMean'
* 'fBodyBodyGyroJerkMagnitudeStd'
* 'fBodyBodyGyroJerkMagnitudeMeanFreq'
