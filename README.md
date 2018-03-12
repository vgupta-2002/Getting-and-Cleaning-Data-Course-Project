# Getting and Cleaning Data

## Introduction
This Repository contains scripts and markdown files related to project in the 
module "Getting and Cleaning Data".

## Raw Data
The data contains a 561 feature activity vector (X_Test.txt) representing time 
and frequency domain variables. The activity labels are in the file y_test.txt 
and subjects who performed them are in the file subject_test.txt.

Similar data is also available for the training set.

## Script and Tidy Dataset

Script run_analysis.R will perform the following :

* Merge the two datasets i.e. training and test
* Extracts measurements related to mean and standard deviation
* Uses descriptive activity names for all the activities.
* Appropriately labels the data set with descriptive variable names.
* Creates a new tidy dataset including average of each variable for each
  activity and subject.
  
The CodeBook.md file will have details about transformations performed as well
as variables of the resulting dataset.