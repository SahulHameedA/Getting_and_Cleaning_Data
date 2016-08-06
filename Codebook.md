# Human Activity Recognition Data Set Analysis

There is only one _table_ in this data set  which is named as TidyDataset.txt. This table was prepared from the UCI HAR Data Set. Subsetting, Merging, Combining, Column Labelling and Summarization by groups were performed on the original UCI HAR Data Set to arrive at this TidyDataset.txt table. 

For more information, on the original UCI HAR Data Set and the Analysis process, you may refer to
[README.md](https://github.com/SahulHameedA/Getting_and_Cleaning_Data)

The features selected for this table come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

The following set of signals were used to estimate variables of 
mean(): Mean value
std(): Standard deviation

Note: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

## TidyDataset.txt
The table contains 68 columns

1	**activitydescription**: character - One of the six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) performed by the subject wearing a smartphone (Samsung Galaxy S II) on the waist, from which 3-axial linear acceleration and 3-axial angular velocity measures were captured at a constant rate of 50Hz.

2	**subjectid**: integer - The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. This column will have an id with a value ranging from 1 to 30 indicating a specific volunteer.

3	**tBodyAcc-mean()-X**: numeric - _Average_ values of the mean time domain body acceleration signal which is obtained by subtracting the gravity from the total acceleration signal collected from the smartphone accelerometer X axis in standard gravity units 'g'. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

4	**tBodyAcc-mean()-Y**:numeric - _Average_ values of the mean time domain body acceleration signal which is obtained by subtracting the gravity from the total acceleration signal collected from the smartphone accelerometer Y axis in standard gravity units 'g'. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

5	**tBodyAcc-mean()-Z**: numeric - _Average_ values of the mean time domain body acceleration signal which is obtained by subtracting the gravity from the total acceleration signal collected from the smartphone accelerometer Z axis in standard gravity units 'g'. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

6	**tGravityAcc-mean()-X**: numeric - _Average_ values of the mean time domain gravitational acceleration signal which is obtained by subtracting the body acceleration component from the total acceleration signal collected from the smartphone accelerometer X axis in standard gravity units 'g'. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

7	**tGravityAcc-mean()-Y**: numeric - _Average_ values of the mean time domain gravitational acceleration signal which is obtained by subtracting the body acceleration component from the total acceleration signal collected from the smartphone accelerometer Y axis in standard gravity units 'g'.Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

8	**tGravityAcc-mean()-Z**: numeric - _Average_ values of the mean time domain gravitational acceleration signal which is obtained by subtracting the body acceleration component from the total acceleration signal collected from the smartphone accelerometer Z axis in standard gravity units 'g'. Summarization (Averaging) performed on the original mean measure by the group ofactivitydescription and subjectid

9	**tBodyAccJerk-mean()-X**: numeric - _Average_ values of the mean time domain body acceleration Jerk signal from X axis.
Summarization (Averaging) performed on the original mean measure by the group activitydescription and subjectid

10	**tBodyAccJerk-mean()-Y**: numeric - _Average_ values of the mean time domain body acceleration Jerk signal from Y axis.
Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

11	**tBodyAccJerk-mean()-Z**: numeric - _Average_ values of the mean time domain body acceleration Jerk signal from Z axis.
Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

12	**tBodyGyro-mean()-X**: numeric - _Average_ values of the mean time domain body gyro signal which is collected from the smartphone gyroscope X axis captured at a constant rate of 50Hz. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

13	**tBodyGyro-mean()-Y**: numeric - _Average_ values of the mean time domain body gyro signal which is collected from the smartphone gyroscope Y axis captured at a constant rate of 50Hz. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

14	**tBodyGyro-mean()-Z**: numeric - _Average_ values of the mean time domain body gyro signal which is collected from the smartphone gyroscope Z axis captured at a constant rate of 50Hz. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

15	**tBodyGyroJerk-mean()-X**: numeric - _Average_ values of the mean time domain body gyro jerk X axis signal. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid 

16	**tBodyGyroJerk-mean()-Y**: numeric - _Average_ values of the mean time domain body gyro jerk Y axis signal. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid 

17	**tBodyGyroJerk-mean()-Z**: numeric - _Average_ values of the mean time domain body gyro jerk Z axis signal. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid 

18	**tBodyAccMag-mean()**: numeric - _Average_ values of the mean time domain tri axial magnitude of the body acceleration calculated using Euclidian norm. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

19	**tGravityAccMag-mean()**: numeric - _Average_ values of the mean time domain tri axial magnitude of the gravity acceleration calculated using Euclidian norm. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

20	**tBodyAccJerkMag-mean()**: numeric - _Average_ values of the mean time domain tri axial magnitude of the body acceleration Jerk signal calculated using Euclidian norm. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

21	**tBodyGyroMag-mean()**: numeric - _Average_ values of the mean time domain tri axial magnitude of the body gyro signal calculated using Euclidian norm. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

22	**tBodyGyroJerkMag-mean()**: numeric - _Average_ values of the mean time domain tri axial magnitude of the body gyroJerk signal calculated using Euclidian norm. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

23	**fBodyAcc-mean()-X**: numeric - _Average_ values of the mean frequency domain body acceleration signal collected from the smartphone accelerometer X axis. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

24	**fBodyAcc-mean()-Y**: numeric - _Average_ values of the mean frequency domain body acceleration signal collected from the smartphone accelerometer Y axis. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

25	**fBodyAcc-mean()-Z**: numeric - _Average_ values of the mean frequency domain body acceleration signal collected from the smartphone accelerometer Z axis. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

26	**fBodyAccJerk-mean()-X**: numeric - _Average_ values of the mean frequency domain body acceleration jerk signal collected from the X axis. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

27	**fBodyAccJerk-mean()-Y**: numeric - _Average_ values of the mean frequency domain body acceleration jerk signal collected from the Y axis. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

28	**fBodyAccJerk-mean()-Z**: numeric - _Average_ values of the mean frequency domain body acceleration jerk signal collected from the Z axis. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

29	**fBodyGyro-mean()-X**: numeric - _Average_ values of the mean frequency domain body gyro signal collected from the X axis. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

30	**fBodyGyro-mean()-Y**: numeric - _Average_ values of the mean frequency domain body gyro signal collected from the Y axis. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

31	**fBodyGyro-mean()-Z**: numeric - _Average_ values of the mean frequency domain body gyro signal collected from the Z axis. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

32	**fBodyAccMag-mean()**: numeric - _Average_ values of the mean frequency domain tri axial magnitude of the body acceleration calculated using Euclidian norm. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

33	**fBodyBodyAccJerkMag-mean()**: numeric - _Average_ values of the mean frequency domain tri axial magnitude of the body acceleration Jerk signal calculated using Euclidian norm. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

34	**fBodyBodyGyroMag-mean()**: numeric - _Average_ values of the mean frequency domain tri axial magnitude of the body gyro signal calculated using Euclidian norm. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

35	**fBodyBodyGyroJerkMag-mean()**: numeric - _Average_ values of the mean frequency domain tri axial magnitude of the body gyro jerk signal calculated using Euclidian norm. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

36	**tBodyAcc-std()-X**: numeric - _Average_ values of the standard deviation measure of time domain body acceleration signal which is obtained by subtracting the gravity from the total acceleration signal collected from the smartphone accelerometer X axis in standard gravity units 'g'. Summarization (Averaging) performed on the original standard deviation measure by the group of activitydescription and subjectid

37	**tBodyAcc-std()-Y**: numeric - _Average_ values of the standard deviation measure of time domain body acceleration signal which is obtained by subtracting the gravity from the total acceleration signal collected from the smartphone accelerometer Y axis in standard gravity units 'g'. Summarization (Averaging) performed on the original standard deviation measure by the group of activitydescription and subjectid

38	**tBodyAcc-std()-Z**: numeric - _Average_ values of the standard deviation measure of time domain body acceleration signal which is obtained by subtracting the gravity from the total acceleration signal collected from the smartphone accelerometer Z axis in standard gravity units 'g'. Summarization (Averaging) performed on the original standard deviation measure by the group of activitydescription and subjectid

39	**tGravityAcc-std()-X**: numeric - _Average_ values of the standard deviation measure of time domain gravitational acceleration signal which is obtained by subtracting the body acceleration component from the total acceleration signal collected from the smartphone accelerometer X axis in standard gravity units 'g'. Summarization (Averaging) performed on the original standard deviation measure by the group of  activitydescription and subjectid

40	**tGravityAcc-std()-Y**: numeric - _Average_ values of the standard deviation measure of time domain gravitational acceleration signal which is obtained by subtracting the body acceleration component from the total acceleration signal collected from the smartphone accelerometer Y axis in standard gravity units 'g'. Summarization (Averaging) performed on the original standard deviation measure by the group of  activitydescription and subjectid

41	**tGravityAcc-std()-Z**: numeric - _Average_ values of the standard deviation measure of time domain gravitational acceleration signal which is obtained by subtracting the body acceleration component from the total acceleration signal collected from the smartphone accelerometer Z axis in standard gravity units 'g'. Summarization (Averaging) performed on the original standard deviation measure by the group of  activitydescription and subjectid

42	**tBodyAccJerk-std()-X**: numeric - _Average_ values of the standard deviation emasure of time domain body acceleration Jerk signal from X axis. Summarization (Averaging) performed on the original standard deviation measure by the group activitydescription and subjectid

43	**tBodyAccJerk-std()-Y**: numeric - _Average_ values of the standard deviation emasure of time domain body acceleration Jerk signal from Y axis. Summarization (Averaging) performed on the original standard deviation measure by the group activitydescription and subjectid

44	**tBodyAccJerk-std()-Z**: numeric - _Average_ values of the standard deviation emasure of time domain body acceleration Jerk signal from Z axis. Summarization (Averaging) performed on the original standard deviation measure by the group activitydescription and subjectid

45	**tBodyGyro-std()-X**: numeric - _Average_ values of the standard deviation measure of time domain body gyro signal which is collected from the smartphone gyroscope X axis captured at a constant rate of 50Hz. Summarization (Averaging) performed on the original standard deviation measure by the group of activitydescription and subjectid

46	**tBodyGyro-std()-Y**: numeric - _Average_ values of the standard deviation measure of time domain body gyro signal which is collected from the smartphone gyroscope Y axis captured at a constant rate of 50Hz. Summarization (Averaging) performed on the original standard deviation measure by the group of activitydescription and subjectid

47	**tBodyGyro-std()-Z**: numeric - _Average_ values of the standard deviation measure of time domain body gyro signal which is collected from the smartphone gyroscope Z axis captured at a constant rate of 50Hz. Summarization (Averaging) performed on the original standard deviation measure by the group of activitydescription and subjectid

48	**tBodyGyroJerk-std()-X**: numeric - _Average_ values of the standard deviation measure of time domain body gyro jerk X axis signal. Summarization (Averaging) performed on the original standard deviation measure by the group of activitydescription and subjectid 

49	**tBodyGyroJerk-std()-Y**: numeric - _Average_ values of the standard deviation measure of time domain body gyro jerk Y axis signal. Summarization (Averaging) performed on the original standard deviation measure by the group of activitydescription and subjectid 

50	**tBodyGyroJerk-std()-Z**: numeric - _Average_ values of the standard deviation measure of time domain body gyro jerk Z axis signal. Summarization (Averaging) performed on the original standard deviation measure by the group of activitydescription and subjectid 

51	**tBodyAccMag-std()**: numeric - _Average_ values of the standard deviation measure of time domain tri axial magnitude of the body acceleration calculated using Euclidian norm. Summarization (Averaging) performed on the original standard deviation measure by the group of activitydescription and subjectid

52	**tGravityAccMag-std()**: numeric - _Average_ values of the standard deviation measure of time domain tri axial magnitude of the gravity acceleration calculated using Euclidian norm. Summarization (Averaging) performed on the original standard deviation measure by the group of activitydescription and subjectid

53	**tBodyAccJerkMag-std()**: numeric - _Average_ values of the standard deviation measure of time domain tri axial magnitude of the body acceleration Jerk signal calculated using Euclidian norm. Summarization (Averaging) performed on the original standard deviation measure by the group of activitydescription and subjectid

54	**tBodyGyroMag-std()**: numeric - _Average_ values of the standard deviation measure of time domain tri axial magnitude of the body gyro signal calculated using Euclidian norm. Summarization (Averaging) performed on the original standard deviation measure by the group of activitydescription and subjectid

55	**tBodyGyroJerkMag-std()**: numeric - _Average_ values of the standard deviation measure of time domain tri axial magnitude of the body gyro jerk signal calculated using Euclidian norm. Summarization (Averaging) performed on the original standard deviation measure by the group of activitydescription and subjectid

56	**fBodyAcc-std()-X**: numeric - _Average_ values of the standard deviation measure of frequency domain body acceleration signal collected from the smartphone accelerometer X axis. Summarization (Averaging) performed on the original standard deviation measure by the group of activitydescription and subjectid

57	**fBodyAcc-std()-Y**: numeric - _Average_ values of the standard deviation measure of frequency domain body acceleration signal collected from the smartphone accelerometer Y axis. Summarization (Averaging) performed on the original standard deviation measure by the group of activitydescription and subjectid

58	**fBodyAcc-std()-Z**: numeric - _Average_ values of the standard deviation measure of frequency domain body acceleration signal collected from the smartphone accelerometer Z axis. Summarization (Averaging) performed on the original standard deviation measure by the group of activitydescription and subjectid

59	**fBodyAccJerk-std()-X**: numeric - _Average_ values of the standard deviation measure of frequency domain body acceleration jerk signal collected from the X axis. Summarization (Averaging) performed on the original standard deviation measure by the group of activitydescription and subjectid

60	**fBodyAccJerk-std()-Y**: numeric - _Average_ values of the standard deviation measure of frequency domain body acceleration jerk signal collected from the Y axis. Summarization (Averaging) performed on the original standard deviation measure by the group of activitydescription and subjectid

61	**fBodyAccJerk-std()-Z**: numeric - _Average_ values of the standard deviation measure of frequency domain body acceleration jerk signal collected from the Z axis. Summarization (Averaging) performed on the original standard deviation measure by the group of activitydescription and subjectid

62	**fBodyGyro-std()-X**: numeric - _Average_ values of the standard deviation measure of frequency domain body gyro signal collected from the X axis. Summarization (Averaging) performed on the original standard deviation measure by the group of activitydescription and subjectid

63	**fBodyGyro-std()-Y*: numeric - _Average_ values of the standard deviation measure of frequency domain body gyro signal collected from the Y axis. Summarization (Averaging) performed on the original standard deviation measure by the group of activitydescription and subjectid

64	**fBodyGyro-std()-Z*: numeric - _Average_ values of the standard deviation measure of frequency domain body gyro signal collected from the Z axis. Summarization (Averaging) performed on the original standard deviation measure by the group of activitydescription and subjectid

65	**fBodyAccMag-std()**: numeric - _Average_ values of the standard deviation measure of frequency domain tri axial magnitude of the body acceleration calculated using Euclidian norm. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

66	**fBodyBodyAccJerkMag-std()**: numeric - _Average_ values of the standard deviation measure of frequency domain tri axial magnitude of the body acceleration jerk signal calculated using Euclidian norm. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

67	**fBodyBodyGyroMag-std()**: numeric - _Average_ values of the standard deviation measure of frequency domain tri axial magnitude of the body gyro signal calculated using Euclidian norm. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid

68	**fBodyBodyGyroJerkMag-std()**: numeric - _Average_ values of the standard deviation measure of frequency domain tri axial magnitude of the body gyro jerk signal calculated using Euclidian norm. Summarization (Averaging) performed on the original mean measure by the group of activitydescription and subjectid



