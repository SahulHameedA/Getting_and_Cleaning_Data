# Analysing Human Activity Recognition Data Set obtained from Samsung Smartphones

## Background on Study Design
Experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, data have been captured on 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

A full description is avaialble at the site where the data was obtained
[Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The original data files are found in [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Objective
As you can see, UCI HAR Dataset is violating the tidy data principle, because in this case
	> Single observational unit is stored in multiple tables

We attempt to analyse this dataset and prepare a tidy data set by performing the following activities
 * Merge the training and test data sets to create one data set
 * Extract only the measurements on the mean and standard deviation for each emasurement
 * Use descriptive activity names to name the activities in the data set
 * Appropirately label the data set with descriptive variable names
 * Create a final tidy data set with the **average** values of _each variable_ for each activity and each subject

All these activities are perfomed by the R script
	[run_analysis.R](https://github.com/SahulHameedA/Getting_and_Cleaning_Data/blob/master/run_analysis.R)

The Codebook describing the variables in the tidy data set can be found here
	[Codebook](https://github.com/SahulHameedA/Getting_and_Cleaning_Data/blob/master/Codebook.md)

## Steps to follow
* Have R installed 
* Have R Studio installed
* Have the necessary R packages installed (e.g dplyr since it's used for tidying the data) in the script
* Download the [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
* Unzip the UCI HAR Dataset into your working directory of R
* Source and run the R Script [run_analysis.R](https://github.com/SahulHameedA/Getting_and_Cleaning_Data/blob/master/run_analysis.R)
* After running the script, the TidyDataset.txt can be found in the working direcory


## How the Script works
* The script checks to ensure that the UCI HAR Dataset is already downloaded and unzipped, it looks for the existence of specific files. It will report an error and stop if the required files are not found within the current working directory.
* The _measurements_ for each of the 561 feature variables are available in the X_train.txt and X_test.txt data sets. The _activity label_ for each of the observation corresponding to these files are available in y_train.txt and y_test.txt files. The _subject_s performing an activity for each of the observation of these corresponding files are available in subject_train and subject_test data sets. 
As all these belong to the same observational unit, the script reads all the data and then **merge**s the _measurements_, _activity label_ and _subject_ for each of the _test_ and _train_ data sets, and then subsequently **bind_rows** of these _test_ and _train_ data sets to form a single data set.
* The column names for the _measurements_ variables are available in the features.txt data set. The script labels the columns of combined data set with information read from this features data set.
* Instead of having all the 561 measurements, the script then **select**s only the measurements on the mean and standard deviations along with the identifying variables (activity label, subject) and a smaller data frame is created
* The _activity description_ information is available in activity_labels.txt dataset. The script **merge**s the _activity description_ name to the data frame created above based on the _activity label_
*The script then finally **group**s the above data frame by _activity descripton_ and _subject_ to **summarize** each of the mean & standard deviation measures to get an average value
* The final data frame obtained above is written to TidyDataset.txt file in current working directory with row.name = FALSE
 