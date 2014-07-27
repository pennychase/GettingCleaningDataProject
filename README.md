## Getting and Cleaning Data Course Project

This README contains three sections:

1. A description of the contents of this repository
2. A description of the working directory, expecially the structure of the raw data directory
3. A description of the R script that turned the raw data into the tidy data set specified by the project

### Description of this repository

This repository contains the following files:

- README.md -- this file
- run_Analysis.R -- the R script used to create the tidy data set
- tidyData.txt -- the tidy data set that can be read into R using read.table("tidyData.txt")
- tidyData.csv -- the tidy data set in .csv format that can be read into R using read.csv("tidyData.csv")
- Codebook.md -- the codebook for the tidy data set

### Description of working directory

This repository contains only the files that the project required to be pushed to Github. The working directory (i.e., my local repository) in addition contains the UCI "Human Activities Recognition Using Smartphones Dataset v.1" in the directory "UCI HAR Dataset".[[1]](#1)

The UCI HAR Dataset directory contains the following:

- README.txt -- provides an overview of the experiment and the data
- features.txt -- a list of the variables in the data set, one per line
- features_info.txt -- a description of the variables (a codebook of sorts)
- activity_labels.txt -- a list of the activity labels and their numeric codes
- test -- the test set (30% of the data)
- train -- the training set (70% of the data)

test and train are similarly structured directories containing both the actual accelerometer and gyroscope signal data (in the Inertial Signals directory) and computed variables from the signal data. The latter data set is the raw data for the project.

The test data contains 2947 rows and the training data contains 7352 rows. Each row consists of a 561-feature vector with time and frequency variables for each subject engaging in a specified activity. Each data set is spread across three files:

- subject_dataset.txt -- the subject ID for each row of the data set (train or test)
- y_dataset.txt -- the activity ID for each row of the data set (train or test)
- X_dataset.txt -- the 561-feature vector of time and frequency variables for each row of the data set (train or test)

### Description of run_Analysis.R

run_Analysis.R does the following:

0. Sets up the environment by setting the working directory (this should be changed to the actual location of run_Analysis.R) and sets the variable baseDirectory to "./UCI HAR Dataset" (the subdirectory of the working directory containing the data).
1. Creates tidy data frames for the test and train data sets. Since the data sets are structured similarly, the prepareData() function is called on each data set. prepareData() reads in the subject and y files into vectors (subject and activity respectively), and the X file into a dataframe, measures. It reads in the activity_labels.txt file and converts the activity vector into a factor in order to provide descriptive activity labels. It reads the features.txt file, cleans up the names (this is carried out by the cleanNames() function), and uses the result as the column names for the measures data frame. Finally, the subject vector, activity vector, and measures data frame are combined into a single data frame.
2. Merges the test and train data frames into a single data frame
3. Creates a data frame with a subset of the variables, namely only those that compute the mean and standard deviation of the measurements. The features_info.txt file describes how the 561 variables of the features vector were computed from the signal data, including the mean and standard deviation of various measurements. Those were the means and standard deviation selected for the subset. Other variables averaged the signals through a window sample, but those were not included in the subset: they have "Mean" in their names, but aren't estimated using a statistical mean function, and they don't have a corresponding standard deviation.
4. Uses the summaryBy() function from the doBy package to compute the mean and standard deviation of each variable grouped first by subject and and then activity to create the tidy data frame. summaryBy() allows you to specify the grouping using R formula notation, which is very convenient when dealing with a large number of variables. The formula to split the data set is ". ~ subject + activity", i.e., group all variables in the data set by subject and then by activity.
5. Writes the tidy data frame to two files, tidyData.txt (which can be read into R with read.table("tidyData.txt")) and tidyData.csv(which can be read into R with read.csv("tidyData.csv")). The .csv format is rendered nicely when viewed on Github.

### Notes

<a name="1"></a> [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012. This data set is available at the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
