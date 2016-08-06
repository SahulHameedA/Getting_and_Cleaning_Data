############################################################################################
# Getting and Cleaning Data Course Project Assignment
#
############################################################################################

old.dir <- getwd()

## Check for the presence of the files in the current working directory
if (!file.exists("./test/X_test.txt")) {
    stop("Input file(s) Not Found - Download the zip file and extract it the current working directory and rerun this script")
}

if (!file.exists("./test/y_test.txt")) {
  stop("Input file(s) Not Found - Download the zip file and extract it the current working directory and rerun this script")
}

if (!file.exists("./test/subject_test.txt")) {
  stop("Input file(s) Not Found - Download the zip file and extract it the current working directory and rerun this script")
}

if (!file.exists("./train/X_train.txt")) {
  stop("Input file(s) Not Found - Download the zip file and extract it the current working directory and rerun this script")
}

if (!file.exists("./train/y_train.txt")) {
  stop("Input file(s) Not Found - Download the zip file and extract it the current working directory and rerun this script")
}

if (!file.exists("./train/subject_train.txt")) {
  stop("Input file(s) Not Found - Download the zip file and extract it the current working directory and rerun this script")
}

if (!file.exists("./activity_labels.txt")) {
  stop("Input file(s) Not Found - Download the zip file and extract it the current working directory and rerun this script")
}

if (!file.exists("./features.txt")) {
  stop("Input file(s) Not Found - Download the zip file and extract it the current working directory and rerun this script")
}

############################################################################################
## 1.	Merges the training and the test sets to create one data set
##
############################################################################################

## 1.1 Load the necessary librarys for tidying the data
library(dplyr)

## 1.2 switch to the 'Training' data folder from within the Data folder
setwd(old.dir)
setwd("./train")

## 1.3 Read the Training datasets into R
xtrain <- read.table("X_train.txt",header=FALSE)
ytrain <- read.table("y_train.txt",header=FALSE)
subjecttrain <- read.table("subject_train.txt",header=FALSE)

## 1.4 switch to the 'Test' data folder
setwd(old.dir)
setwd("./test")

## 1.5 Read the Test datasets into R
xtest <- read.table("X_test.txt",header=FALSE)
ytest <- read.table("y_test.txt",header=FALSE)
subjecttest <- read.table("subject_test.txt",header=FALSE)

## 1.6 Read features, activity labels datasets into R
setwd(old.dir)

features <- read.table("features.txt",header=FALSE)
colnames(features) <- c("featureid","featurename")

actvylbl <- read.table("activity_labels.txt",header=FALSE)
colnames(actvylbl) <- c("activityid","activitydescription")

## 1.7 Label the train & test datasets columns
colnames(xtrain) <- features$featurename
colnames(ytrain) <- "activityid"
colnames(subjecttrain) <- "subjectid"

colnames(xtest) <- features$featurename
colnames(ytest) <- "activityid"
colnames(subjecttest) <- "subjectid"

## 1.8 Merge the training datasets into 1 data frame, also label dataset type as "train"
xtrain$activityid <- ytrain$activityid
xtrain$subjectid <- subjecttrain$subjectid
xtrain$datasettype <- "train"

## 1.9 Merge the test datasets into 1 data frame, also label dataset type as "test"
xtest$activityid <- ytest$activityid
xtest$subjectid <- subjecttest$subjectid
xtest$datasettype <- "test"

## 1.9 convert to tabl_df to make the tidying process easy - it expects all colnames to be unique
## since there are duplicate column names, prefix with running sequence to make the colnmaes unique
colnames(xtrain) <- paste(1:ncol(xtrain),colnames(xtrain))
xtrain_tdf <- tbl_df(xtrain)

## convert the test data frame also to table df
colnames(xtest) <- paste(1:ncol(xtest),colnames(xtest))
xtest_tdf <- tbl_df(xtest)

merged_tdf <- bind_rows(xtrain_tdf,xtest_tdf)

############################################################################################
## 2. Extracts only the measurements on the mean and standard deviation for each measurement
## Extract the id columns as well subjectid,activityid and dataset type
##
############################################################################################
meanstdmsrs <- merged_tdf %>%
              select(contains("subjectid"),contains("activityid"),contains("datasettype"),
                     contains("mean()"),contains("std()"))

############################################################################################
## 4. Appropriately label the columns of the meanstdmsrs table df
##
############################################################################################
## since we have prefixed colnames with numbers, lets remove them now
cnm <- colnames(meanstdmsrs)

############################################################################################
# This rotuine applies the str_split function and returns the second name component only
############################################################################################
removeNumPrefix <- function(x) {
  ## 1 or more digits followed by exactly 1 space, it should be at the start of the line
  ptrn <- "^[0-9]+ "
  res <- str_split(x,ptrn)[[1]][2]
  res
}
cnm2<- sapply(cnm,removeNumPrefix)
names(cnm2) <- NULL

colnames(meanstdmsrs) <- cnm2

############################################################################################
## 3. Uses descriptive activity names to name the activities in the data set
##
############################################################################################
meanstdmsr_actvtydesc <- merge(meanstdmsrs,actvylbl,by.x="activityid",by.y="activityid")

############################################################################################
## 5. creates a second, independent tidy data set with the average of each variable 
## for each activity and each subject
##
############################################################################################
grps <- meanstdmsr_actvtydesc %>%
          select(-activityid,-datasettype) %>%
          group_by(activitydescription,subjectid)
         
result <- summarize_each(grps,funs(mean))

setwd(old.dir)
tidyDataFile <- "TidyDataset.txt"

if (file.exists(tidyDataFile)) {
  file.remove(tidyDataFile)
}

write.table(result,file = tidyDataFile,row.name=FALSE)

