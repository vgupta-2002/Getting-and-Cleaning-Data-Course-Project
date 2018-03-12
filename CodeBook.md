# CodeBook for Tidy dataset

This codebook provides information about the dataset tidy_data.txt.

## Data
The data file is a tab separated text file. Te first row of the file
contains headers.

## Dataset Details
Each row conatins data about a subject and activity

* subject ranges from 1 to 30 and identifies a volunteer who performed the
  test
* activity is the task the subjects were performing and include
    * WALKING
    * WALKING_UPSTAIRS
    * WALKING_DOWNSTAIRS
    * SITTING
    * STANDING
    * LAYING
* The measurements include two domains namely time and frquency.
* The measurements only contain mean and standard deviation records from the 
  original measurements.
* The mean of all the records based on subject and activity is calculated and they include
    * body acceleration signal (time)-mean()-X	
    * body acceleration signal (time)-mean()-Y	
    * body acceleration signal (time)-mean()-Z	
    * body acceleration signal (time)-std()-X	
    * body acceleration signal (time)-std()-Y	
    * body acceleration signal (time)-std()-Z	
    * gravity acceleration signal (time)-mean()-X	
    * gravity acceleration signal (time)-mean()-Y	
    * gravity acceleration signal (time)-mean()-Z	
    * gravity acceleration signal (time)-std()-X	
    * gravity acceleration signal (time)-std()-Y	
    * gravity acceleration signal (time)-std()-Z	
    * body acceleration jerk signal (time)-mean()-X	
    * body acceleration jerk signal (time)-mean()-Y	
    * body acceleration jerk signal (time)-mean()-Z	
    * body acceleration jerk signal (time)-std()-X	
    * body acceleration jerk signal (time)-std()-Y	
    * body acceleration jerk signal (time)-std()-Z	
    * body gyroscope signal (time)-mean()-X	
    * body gyroscope signal (time)-mean()-Y	
    * body gyroscope signal (time)-mean()-Z	
    * body gyroscope signal (time)-std()-X	
    * body gyroscope signal (time)-std()-Y	
    * body gyroscope signal (time)-std()-Z	
    * body gyroscope jerk signal (time)-mean()-X	
    * body gyroscope jerk signal (time)-mean()-Y	
    * body gyroscope jerk signal (time)-mean()-Z	
    * body gyroscope jerk signal (time)-std()-X	
    * body gyroscope jerk signal (time)-std()-Y	
    * body gyroscope jerk signal (time)-std()-Z	
    * body acceleration signal magnitude (time)-mean()	
    * body acceleration signal magnitude (time)-std()	
    * gravity acceleration signal magnitude (time)-mean()	
    * gravity acceleration signal magnitude (time)-std()	
    * body acceleration jerk signal magnitude (time)-mean()	
    * body acceleration jerk signal magnitude (time)-std()	
    * body gyroscope signal magnitude (time)-mean()	
    * body gyroscope signal magnitude (time)-std()	
    * body gyroscope jerk signal magnitude (time)-mean()	
    * body gyroscope jerk signal magnitude (time)-std()	
    * body acceleration signal (frequency)-mean()-X	
    * body acceleration signal (frequency)-mean()-Y	
    * body acceleration signal (frequency)-mean()-Z	
    * body acceleration signal (frequency)-std()-X	
    * body acceleration signal (frequency)-std()-Y	
    * body acceleration signal (frequency)-std()-Z	
    * body acceleration signal (frequency)-meanFreq()-X	
    * body acceleration signal (frequency)-meanFreq()-Y	
    * body acceleration signal (frequency)-meanFreq()-Z	
    * body acceleration jerk signal (frequency)-mean()-X	
    * body acceleration jerk signal (frequency)-mean()-Y	
    * body acceleration jerk signal (frequency)-mean()-Z	
    * body acceleration jerk signal (frequency)-std()-X	
    * body acceleration jerk signal (frequency)-std()-Y	
    * body acceleration jerk signal (frequency)-std()-Z	
    * body acceleration jerk signal (frequency)-meanFreq()-X	
    * body acceleration jerk signal (frequency)-meanFreq()-Y	
    * body acceleration jerk signal (frequency)-meanFreq()-Z	
    * body gyroscope signal (frequency)-mean()-X	
    * body gyroscope signal (frequency)-mean()-Y	
    * body gyroscope signal (frequency)-mean()-Z	
    * body gyroscope signal (frequency)-std()-X	
    * body gyroscope signal (frequency)-std()-Y	
    * body gyroscope signal (frequency)-std()-Z	
    * body gyroscope signal (frequency)-meanFreq()-X	
    * body gyroscope signal (frequency)-meanFreq()-Y	
    * body gyroscope signal (frequency)-meanFreq()-Z	
    * body acceleration signal magnitude (frequency)-mean()	
    * body acceleration signal magnitude (frequency)-std()	
    * body acceleration signal magnitude (frequency)-meanFreq()	
    * body acceleration jerk signal magnitude (frequency)-mean()	
    * body acceleration jerk signal magnitude (frequency)-std()	
    * body acceleration jerk signal magnitude (frequency)-meanFreq()	
    * body gyroscope signal magnitude (frequency)-mean()	
    * body gyroscope signal magnitude (frequency)-std()	
    * body gyroscope signal magnitude (frequency)-meanFreq()	
    * body gyroscope jerk signal magnitude (frequency)-mean()	
    * body gyroscope jerk signal magnitude (frequency)-std()	
    * body gyroscope jerk signal magnitude (frequency)-meanFreq()

## Transformations

* The training and test datasets are merged to form a single dataset
* Extracted records for only the mean and standard deviation measurements
* Replaced numeric activity data with descriptive activity names
* The variable names were replaced with descriptive variable names
* Average for all the measurements was calculated on above dataset based on
  subject and activity
  
  

