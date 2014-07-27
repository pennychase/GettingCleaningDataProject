### UCI HAR TidyData Codebook 

#### Introduction

The underlying data for this derived data set comes from the University of California, Irvine "Human Activities Recognition Using Smartphones Dataset v.1" [^1].

The data set was created by collecting sensor data from experimental subjects wearing a smartphone with accelerometer and gyroscope: "The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz." [^2]

A 561 element feature vector was created by calculating these variables from the time and frequency (using Fast Fourier Transform) domains using the triaxial acceleration and the triaxial angular velocity signals. All of these values are normalized and bounded within [-1,1]. 

The TidyData dataset extracted the calculated means and standard deviations from the feature vector and then computed the mean and standard deviation of each of the extarcted variables, grouped first by subject and then by activity.

#### Variables

**subject** -- The identifier of the subject who performed the activity for each window sample. Its range is from 1 to 30.

**activity** -- The activity performed for each window sample. It is a factor variable with 6 levels. The original variable was an integer and it was converted to a factor using the labels in activity_labels.txt as the levels.

**time.BodyAccel.mean.X.mean** -- The mean of time.BodyAccel.mean.X by subject and then by activity, computed by summaryBy(). time.BodyAccel.mean.X is the mean of the body linear acceleration along the X axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyAccel.mean.X.std** -- The standard deviation of time.BodyAccel.mean.X by subject and then by activity,  computed by summaryBy(). time.BodyAccel.mean.X is the mean of the body linear acceleration along the X axis in the time domain. The values are normalized and bounded within [-1,1].

**time.BodyAccel.mean.Y.mean** -- The mean of time.BodyAccel.mean.Y by subject and then by activity, computed by summaryBy(). time.BodyAccel.mean.Y is the mean of the body linear acceleration along the Y axis in the time domain. The values are normalized and bounded within [-1,1].

**time.BodyAccel.mean.Y.std** -- The standard deviation of time.BodyAccel.mean.Y by subject and then by activity, computed by summaryBy(). time.BodyAccel.mean.Y is the mean of the body linear acceleration along the Y axis in the time domain. The values are normalized and bounded within [-1,1].

**time.BodyAccel.mean.Z.mean** -- The mean of time.BodyAccel.mean.Z by subject and then by activity, computed by summaryBy(). time.BodyAccel.mean.Z is the mean of the body linear acceleration along the Z axis in the time domain. The values are normalized and bounded within [-1,1].

**time.BodyAccel.mean.Z.std** -- The standard deviation of time.BodyAccel.mean.Z by subject and then by activity, computed by summaryBy(). time.BodyAccel.mean.Z is the mean of the body linear acceleration along the Z axis in the time domain. The values are normalized and bounded within [-1,1].

**time.BodyAccel.std.X.mean** -- The mean of time.BodyAccel.std.X by subject and then by activity, computed by summaryBy(). time.BodyAccel.std.X is the standard deviation of the body linear acceleration along the X axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyAccel.std.X.std** -- The standard deviation of time.BodyAccel.std.X by subject and then by activity,  computed by summaryBy(). time.BodyAccel.std.X is the standard deviation of the body linear acceleration along the X axis.

**time.BodyAccel.std.Y.mean** -- The mean of time.BodyAccel.std.Y by subject and then by activity, computed by summaryBy(). time.BodyAccel.std.Y is the standard deviation of the body linear acceleration along the Y axis in the time domain. The values are normalized and bounded within [-1,1].

**time.BodyAccel.std.Y.std** -- The standard deviation of time.BodyAccel.std.Y by subject and then by activity, computed by summaryBy(). time.BodyAccel.std.Y is the standard deviation of the body linear acceleration along the Y axis in the time domain. The values are normalized and bounded within [-1,1].

**time.BodyAccel.std.Z.mean** -- The mean of time.BodyAccel.std.Z by subject and then by activity, computed by summaryBy(). time.BodyAccel.std.Z is the standard deviation of the body linear acceleration along the Z axis in the time domain. The values are normalized and bounded within [-1,1].

**time.BodyAccel.std.Z.std** -- The standard deviation of time.BodyAccel.std.Z by subject and then by activity, computed by summaryBy(). time.BodyAccel.std.Z is the standard deviation of the body linear acceleration along the Z axis in the time domain. The values are normalized and bounded within [-1,1].

**time.GravityAccel.mean.X.mean** -- The mean of time.GravityAccel.mean.X by subject and then by activity, computed by summaryBy(). time.GravityAccel.mean.X is the mean of the gravitational acceleration along the X axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.GravityAccel.mean.X.std** -- The standard deviation of time.GravityAccel.mean.X by subject and then by activity, computed by summaryBy(). time.GravityAccel.mean.X is the mean of the gravitational acceleration along the X axis in the time domain. The values are normalized and bounded within [-1,1].

**time.GravityAccel.mean.Y.mean** -- The mean of time.GravityAccel.mean.Y by subject and then by activity, computed by summaryBy(). time.GravityAccel.mean.Y is the mean of the gravitational acceleration along the Y axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.GravityAccel.mean.Y.std** -- The standard deviation of time.GravityAccel.mean.Y by subject and then by activity, computed by summaryBy(). time.GravityAccel.mean.Y is the mean of the gravitational acceleration along the Y axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.GravityAccel.mean.Z.mean** -- The mean of time.GravityAccel.mean.Z by subject and then by activity, computed by summaryBy(). time.GravityAccel.mean.Z is the mean of the gravitational acceleration along the Z axis. in the time domain. The values are normalized and bounded within [-1,1].

**time.GravityAccel.mean.Z.std** -- The standard deviation of time.GravityAccel.mean.Z by subject and then by activity, computed by summaryBy(). time.GravityAccel.mean.Z is the mean of the gravitational acceleration along the Z axis. 

**time.GravityAccel.std.X.mean** -- The mean of time.GravityAccel.std.X by subject and then by activity, computed by summaryBy(). time.GravityAccel.std.X is the standard deviation of the gravitational acceleration along the X axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.GravityAccel.std.X.std** -- The standard deviation of time.GravityAccel.std.X by subject and then by activity, computed by summaryBy(). time.GravityAccel.std.X is the standard deviation of the gravitational acceleration along the X axis in the time domain. The values are normalized and bounded within [-1,1].

**time.GravityAccel.std.Y.mean** -- The mean of time.GravityAccel.std.Y by subject and then by activity, computed by summaryBy(). time.GravityAccel.std.Y is the standard deviation of the gravitational acceleration along the Y axis in the time domain. The values are normalized and bounded within [-1,1].

**time.GravityAccel.std.Y.std** -- The standard deviation of time.GravityAccel.std.Y by subject and then by activity, computed by summaryBy(). time.GravityAccel.std.Y is the standard deviation of the gravitational acceleration along the Y axis in the time domain. The values are normalized and bounded within [-1,1].

**time.GravityAccel.std.Z.mean** -- The mean of time.GravityAccel.std.Z by subject and then by activity, computed by summaryBy(). time.GravityAccel.std.Z is the standard deviation of the gravitational acceleration along the Z axis in the time domain. The values are normalized and bounded within [-1,1].

**time.GravityAccel.std.Z.std** -- The standard deviation of time.GravityAccel.std.Z by subject and then by activity, computed by summaryBy(). time.GravityAccel.std.Z is the standard deviation of the gravitational acceleration along the Z axis in the time domain. The values are normalized and bounded within [-1,1].

**time.BodyAccelJerk.mean.X.mean** -- The mean of time.BodyAccelJerk.mean.X by subject and then by activity, computed by summaryBy(). time.BodyAccelJerk.mean.X is the mean of the body linear acceleration jerk along the X axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyAccelJerk.mean.X.std** -- The standard deviation of time.BodyAccelJerk.mean.X by subject and then by activity, computed by summaryBy(). time.BodyAccelJerk.mean.X is the mean of the body linear acceleration jerk along the X axis in the time domain. The values are normalized and bounded within [-1,1].

**time.BodyAccelJerk.mean.Y.mean** -- The mean of time.BodyAccelJerk.mean.Y by subject and then by activity, computed by summaryBy(). time.BodyAccelJerk.mean.Y is the mean of the body linear acceleration jerk along the Y axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyAccelJerk.mean.Y.std** -- The standard deviation of time.BodyAccelJerk.mean.Y by subject and then by activity, computed by summaryBy(). time.BodyAccelJerk.mean.Y is the mean of the body linear acceleration jerk along the Y axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyAccelJerk.mean.Z.mean** -- The mean of time.BodyAccelJerk.mean.Z by subject and then by activity, computed by summaryBy(). time.BodyAccelJerk.mean.Z is the mean of the body linear acceleration jerk along the Z axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyAccelJerk.mean.Z.std** -- The standard deviation of time.BodyAccelJerk.mean.Z by subject and then by activity, computed by summaryBy(). time.BodyAccelJerk.mean.Z is the mean of the body linear acceleration jerk along the Z axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyAccelJerk.std.X.mean** -- The mean of time.BodyAccelJerk.std.X by subject and then by activity, computed by summaryBy(). time.BodyAccelJerk.std.X is the standard deviation of the body linear acceleration jerk along the X axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyAccelJerk.std.X.std** -- The standard deviation of time.BodyAccelJerk.std.X by subject and then by activity, computed by summaryBy(). time.BodyAccelJerk.std.X is the standard deviation of the body linear acceleration jerk along the X axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyAccelJerk.std.Y.mean** -- The mean of time.BodyAccelJerk.std.Y by subject and then by activity, computed by summaryBy(). time.BodyAccelJerk.std.Y is the standard deviation of the body linear acceleration jerk along the Y axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyAccelJerk.std.Y.std** -- The standard deviation of time.BodyAccelJerk.std.Y by subject and then by activity, computed by summaryBy(). time.BodyAccelJerk.std.Y is the standard deviation of the body linear acceleration jerk along the Y axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyAccelJerk.std.Z.mean** -- The mean of time.BodyAccelJerk.std.Z by subject and then by activity, computed by summaryBy(). time.BodyAccelJerk.std.Z is the standard deviation of the body linear acceleration jerk along the Z axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyAccelJerk.std.Z.std** -- The mean of time.BodyAccelJerk.std.Z by subject and then by activity, computed by summaryBy(). time.BodyAccelJerk.std.Z is the standard deviation of the body linear acceleration jerk along the Z axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyGyro.mean.X.mean** -- The mean of time.BodyGyro.mean.X by subject and then by activity, computed by summaryBy(). time.BodyGyro.mean.X is the mean of the body angular velocity (from gyroscope) along the X axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyGyro.mean.X.std** -- The standard deviation of time.BodyGyro.mean.X by subject and then by activity, computed by summaryBy(). time.BodyGyro.mean.X is the mean of the body angular velocity (from gyroscope) along the X axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyGyro.mean.Y.mean** -- The mean of time.BodyGyro.mean.Y by subject and then by activity, computed by summaryBy(). time.BodyGyro.mean.Y is the mean of the body angular velocity (from gyroscope) along the Y axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyGyro.mean.Y.std** -- The standard deviation of time.BodyGyro.mean.Y by subject and then by activity, computed by summaryBy(). time.BodyGyro.mean.Y is the mean of the body angular velocity (from gyroscope) along the Y axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyGyro.mean.Z.mean** -- The mean of time.BodyGyro.mean.Z by subject and then by activity, computed by summaryBy(). time.BodyGyro.mean.Z is the mean of the body angular velocity (from gyroscope) along the Z axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyGyro.mean.Z.std** -- The standard deviation of time.BodyGyro.mean.Z by subject and then by activity, computed by summaryBy(). time.BodyGyro.mean.Z is the mean of the body angular velocity (from gyroscope) along the Z axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyGyro.std.X.mean** -- The mean of time.BodyGyro.std.X by subject and then by activity, computed by summaryBy(). time.BodyGyro.std.X is the standard deviation of the body angular velocity (from gyroscope) along the X axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyGyro.std.X.std** -- The standard deviation of time.BodyGyro.std.X by subject and then by activity, computed by summaryBy(). time.BodyGyro.std.X is the standard deviation of the body angular velocity (from gyroscope) along the X axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyGyro.std.Y.mean** -- The mean of time.BodyGyro.std.Y by subject and then by activity, computed by summaryBy(). time.BodyGyro.std.Y is the standard deviation of the body angular velocity (from gyroscope) along the Y axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyGyro.std.Y.std** -- The standard deviation of time.BodyGyro.std.Y by subject and then by activity, computed by summaryBy(). time.BodyGyro.std.Y is the standard deviation of the body angular velocity (from gyroscope) along the Y axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyGyro.std.Z.mean** -- The mean of time.BodyGyro.std.Z by subject and then by activity, computed by summaryBy(). time.BodyGyro.std.Z is the standard deviation of the body angular velocity (from gyroscope) along the Z axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyGyro.std.Z.std** -- The standard deviation of time.BodyGyro.std.Z by subject and then by activity, computed by summaryBy(). time.BodyGyro.std.Z is the standard deviation of the body angular velocity (from gyroscope) along the Z axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyGyroJerk.mean.X.mean** -- The mean of time.BodyGyroJerk.mean.X by subject and then by activity, computed by summaryBy(). time.BodyGyroJerk.mean.X is the mean of the body angular velocity (from gyroscope) jerk along the X axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyGyroJerk.mean.X.std** -- The standard deviation of time.BodyGyroJerk.mean.X by subject and then by activity, computed by summaryBy(). time.BodyGyroJerk.mean.X is the mean of the body angular velocity (from gyroscope) jerk along the X axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyGyroJerk.mean.Y.mean** -- The mean of time.BodyGyroJerk.mean.Y by subject and then by activity, computed by summaryBy(). time.BodyGyroJerk.mean.Y is the mean of the body angular velocity (from gyroscope) jerk along the Y axisin the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyGyroJerk.mean.Y.std** -- The standard deviation of time.BodyGyroJerk.mean.Y by subject and then by activity, computed by summaryBy(). time.BodyGyroJerk.mean.Y is the mean of the body angular velocity (from gyroscope) jerk along the Y axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyGyroJerk.mean.Z.mean** -- The mean of time.BodyGyroJerk.mean.Z by subject and then by activity, computed by summaryBy(). time.BodyGyroJerk.mean.Z is the mean of the body angular velocity (from gyroscope) jerk along the Z axis. in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyGyroJerk.mean.Z.std** -- The standard deviation of time.BodyGyroJerk.mean.Z by subject and then by activity, computed by summaryBy(). time.BodyGyroJerk.mean.Z is the mean of the body angular velocity (from gyroscope) jerk along the Z axis. in the time domain. The values are normalized and bounded within [-1,1]. 


**time.BodyGyroJerk.std.X.mean** -- The mean of time.BodyGyroJerk.std.X by subject and then by activity, computed by summaryBy(). time.BodyGyroJerk.std.X is the standard deviation of the body angular velocity (from gyroscope) jerk along the X axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyGyroJerk.std.X.std** -- The standard deviation of time.BodyGyroJerk.std.X by subject and then by activity, computed by summaryBy(). time.BodyGyroJerk.std.X is the standard deviation of the body angular velocity (from gyroscope) jerk along the X axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyGyroJerk.std.Y.mean** -- The mean of time.BodyGyroJerk.std.Y by subject and then by activity, computed by summaryBy(). time.BodyGyroJerk.std.Y is the standard deviation of the body angular velocity (from gyroscope) jerk along the Y axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyGyroJerk.std.Y.std** -- The standard deviation of time.BodyGyroJerk.std.Y by subject and then by activity, computed by summaryBy(). time.BodyGyroJerk.std.Y is the standard deviation of the body angular velocity (from gyroscope) jerk along the Y axis in the time domain. The values are normalized and bounded within [-1,1]. 

**time.BodyGyroJerk.std.Z.mean** -- The mean of time.BodyGyroJerk.std.Z by subject and then by activity, computed by summaryBy(). time.BodyGyroJerk.std.Z is the standard deviation of the body angular velocity (from gyroscope) jerk along the Z axis in the time domain. The values are normalized and bounded within [-1,1].

**time.BodyGyroJerk.std.Z.std** -- The standard deviation of time.BodyGyroJerk.std.Z by subject and then by activity, computed by summaryBy(). time.BodyGyroJerk.std.Z is the standard deviation of the body angular velocity (from gyroscope) jerk along the Z axis in the time domain. The values are normalized and bounded within [-1,1].

**time.BodyAccelMag.mean.mean** -- The mean of time.BodyAccelMag.mean by subject and then by activity, computed by summaryBy(). time.BodyAccelMag.mean is the mean of the body linear acceleration magnitude in the time domain. The values are normalized and bounded within [-1,1].

**time.BodyAccelMag.mean.std** -- The standard deviation of time.BodyAccelMag.mean by subject and then by activity, computed by summaryBy(). time.BodyAccel.mean is the mean of the body linear acceleration magnitude in the time domain. The values are normalized and bounded within [-1,1].

**time.BodyAccelMag.std.mean** -- The mean of time.BodyAccelMag.std by subject and then by activity, computed by summaryBy(). time.BodyAccelMag.std is the standard deviation of the body linear acceleration magnitude in the time domain. The values are normalized and bounded within [-1,1].

**time.BodyAccelMag.std.std** -- The standard deviation of time.BodyAccelMag.std by subject and then by activity, computed by summaryBy(). time.BodyAccel.std is the standard deviation of the body linear acceleration magnitude in the time domain. The values are normalized and bounded within [-1,1].

**time.GravityAccelMag.mean.mean** -- The mean of time.GravityAccelMag.mean by subject and then by activity, computed by summaryBy(). time.GravityAccelMag.mean is the mean of the gravitational acceleration magnitude in the time domain. The values are normalized and bounded within [-1,1].

**time.GravityAccelMag.mean.std** -- The standard deviation of time.GravityAccelMag.mean by subject and then by activity, computed by summaryBy(). time.GravityAccelMag.mean is the mean of the gravitational acceleration magnitude in the time domain. The values are normalized and bounded within [-1,1].

**time.GravityAccelMag.std.mean** -- The mean of time.GravityAccelMag.std by subject and then by activity, computed by summaryBy(). time.GravityccelMag.std is the standard deviation of the gravitational acceleration magnitude in the time domain. The values are normalized and bounded within [-1,1].

**time.GravityAccelMag.std.std** -- The standard deviation of time.GravityAccelMag.std by subject and then by activity, computed by summaryBy(). time.GravityccelMag.std is the standard deviation of the gravitational acceleration magnitude in the time domain. The values are normalized and bounded within [-1,1].

**time.BodyAccelJerkMag.mean.mean** -- The mean of time.BodyAccelJerkMag.mean by subject and then by activity, computed by summaryBy(). time.BodyAccelJerkMag.mean is the mean of the body linear acceleration jerk magnitude in the time domain. The values are normalized and bounded within [-1,1].

**time.BodyAccelJerkMag.mean.std** -- The standard deviation of time.BodyAccelJerkMag.mean by subject and then by activity, computed by summaryBy(). time.BodyAccelJerkMag.mean is the mean of the body linear acceleration jerk magnitude in the time domain. The values are normalized and bounded within [-1,1].

**time.BodyAccelJerkMag.std.mean** -- The mean of time.BodyAccelJerkMag.std by subject and then by activity, computed by summaryBy(). time.BodyAccelJerkMag.std is the standard deviation of the body linear acceleration jerk magnitude in the time domain. The values are normalized and bounded within [-1,1].

**time.BodyAccelJerkMag.std.std** -- The standard deviation of time.BodyAccelJerkMag.std by subject and then by activity, computed by summaryBy(). time.BodyAccelJerkMag.std is the standard deviation of the body linear acceleration jerk magnitude in the time domain. The values are normalized and bounded within [-1,1].

**time.BodyGyroMag.mean.mean** -- The mean of time.BodyGyroMag.mean by subject and then by activity, computed by summaryBy(). time.BodyGyroMag.mean is the mean of the body angular velocity (from gyroscope) magnitude in the time domain. The values are normalized and bounded within [-1,1].

**time.BodyGyroMag.mean.std** -- The standard deviation of time.BodyGyroMag.mean by subject and then by activity, computed by summaryBy(). time.BodyGyroMag.mean is the mean of the body angular velocity (from gyroscope) magnitude in the time domain. The values are normalized and bounded within [-1,1].

**time.BodyGyroMag.std.mean** -- The mean of time.BodyGyroMag.std by subject and then by activity, computed by summaryBy(). time.BodyGyroMag.std is the standard deviation of the body angular velocity (from gyroscope) magnitude in the time domain. The values are normalized and bounded within [-1,1].

**time.BodyGyroMag.std.std** -- The standard deviation of time.BodyGyroMag.std by subject and then by activity, computed by summaryBy(). time.BodyGyroMag.std is the standard deviation of the body angular velocity (from gyroscope) magnitude in the time domain. The values are normalized and bounded within [-1,1].

**time.BodyGyroJerkMag.mean.mean** -- The mean of time.BodyGyroJerkMag.mean by subject and then by activity, computed by summaryBy(). time.BodyGyroJerkMag.mean is the mean of the body angular velocity (from gyroscope) jerk magnitude in the time domain. The values are normalized and bounded within [-1,1].

**time.BodyGyroJerkMag.mean.std** -- The standard deviation of time.BodyGyroJerkMag.mean by subject and then by activity, computed by summaryBy(). time.BodyGyroJerkMag.mean is the mean of the body angular velocity (from gyroscope) jerk magnitude in the time domain. The values are normalized and bounded within [-1,1].

**time.BodyGyroJerkMag.std.mean** -- The mean of time.BodyGyroJerkMag.std by subject and then by activity, computed by summaryBy(). time.BodyGyroJerkMag.std is the standard deviation of the body angular velocity (from gyroscope) jerk magnitude in the time domain. The values are normalized and bounded within [-1,1].

**time.BodyGyroJerkMag.std.std** -- The standard deviation of time.BodyGyroJerkMag.std by subject and then by activity, computed by summaryBy(). time.BodyGyroJerkMag.std is the standard deviation of the body angular velocity (from gyroscope) jerk magnitude in the time domain. The values are normalized and bounded within [-1,1].

**freq.BodyAccel.mean.X.mean** -- The mean of freq.BodyAccel.mean.X by subject and then by activity, computed by summaryBy(). freq.BodyAccel.mean.X is the mean of the body linear acceleration along the X axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyAccel.mean.X.std** -- The standard deviation of freq.BodyAccel.mean.X by subject and then by activity, computed by summaryBy(). freq.BodyAccel.mean.X is the mean of the body linear acceleration along the X axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyAccel.mean.Y.mean** -- The mean of freq.BodyAccel.mean.Y by subject and then by activity, computed by summaryBy(). freq.BodyAccel.mean.Y is the mean of the body linear acceleration along the Y axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyAccel.mean.Y.std** -- The standard deviation of freq.BodyAccel.mean.Y by subject and then by activity, computed by summaryBy(). freq.BodyAccel.mean.Y is the mean of the body linear acceleration along the Y axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyAccel.mean.Z.mean** -- The mean of freq.BodyAccel.mean.Z by subject and then by activity, computed by summaryBy(). freq.BodyAccel.mean.Z is the mean of the body linear acceleration along the Z axis in the frequency domain. The values are normalized and bounded within [-1,1].

**freq.BodyAccel.mean.Z.std** -- The standard deviation of freq.BodyAccel.mean.Z by subject and then by activity, computed by summaryBy(). freq.BodyAccel.mean.Z is the mean of the body linear acceleration along the Z axis in the frequency domain. The values are normalized and bounded within [-1,1].
 
**freq.BodyAccel.std.X.mean** -- The mean of freq.BodyAccel.std.X by subject and then by activity, computed by summaryBy(). freq.BodyAccel.std.X is the standard deviation of the body linear acceleration along the X axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyAccel.std.X.std** -- The standard devation of freq.BodyAccel.std.X by subject and then by activity, computed by summaryBy(). freq.BodyAccel.std.X is the standard deviation of the body linear acceleration along the X axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyAccel.std.Y.mean** -- The mean of freq.BodyAccel.std.Y by subject and then by activity, computed by summaryBy(). freq.BodyAccel.std.Y is the standard deviation of the body linear acceleration along the Y axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyAccel.std.Y.std** -- The standard deviation of freq.BodyAccel.std.Y by subject and then by activity, computed by summaryBy(). freq.BodyAccel.std.Y is the standard deviation of the body linear acceleration along the Y axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyAccel.std.Z.mean** -- The mean of freq.BodyAccel.std.Z by subject and then by activity, computed by summaryBy(). freq.BodyAccel.std.Z is the standard deviation of the body linear acceleration along the Z axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyAccel.std.Z.std** -- The standard deviation of freq.BodyAccel.std.Z by subject and then by activity, computed by summaryBy(). freq.BodyAccel.std.Z is the standard deviation of the body linear acceleration along the Z axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyAccelJerk.mean.X.mean** -- The mean of freq.BodyAccelJerk.mean.X by subject and then by activity, computed by summaryBy(). freq.BodyAccelJerk.mean.X is the mean of the body linear acceleration jerk along the X axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyAccelJerk.mean.X.std** -- The standard deviation of freq.BodyAccelJerk.mean.X by subject and then by activity, computed by summaryBy(). freq.BodyAccelJerk.mean.X is the mean of the body linear acceleration jerk along the X axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyAccelJerk.mean.Y.mean** -- The mean of freq.BodyAccelJerk.mean.Y by subject and then by activity, computed by summaryBy(). freq.BodyAccelJerk.mean.Y is the mean of the body linear acceleration jerk along the Y axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyAccelJerk.mean.Y.std** -- The standard deviation of freq.BodyAccelJerk.mean.Y by subject and then by activity, computed by summaryBy(). freq.BodyAccelJerk.mean.Y is the standard deviation of the body linear acceleration jerk along the Y axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyAccelJerk.mean.Z.mean** -- The mean of freq.BodyAccelJerk.mean.Z by subject and then by activity, computed by summaryBy(). freq.BodyAccelJerk.mean.Z is the mean of the body linear acceleration jerk along the Z axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyAccelJerk.mean.Z.std** -- The standard deviation of freq.BodyAccelJerk.mean.Z by subject and then by activity, computed by summaryBy(). freq.BodyAccelJerk.mean.Z is the mean of the body linear acceleration jerk along the Z axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyAccelJerk.std.X.mean** -- The mean of freq.BodyAccelJerk.std.X by subject and then by activity, computed by summaryBy(). freq.BodyAccelJerk.std.X is the standard deviation of the body linear acceleration jerk along the X axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyAccelJerk.std.X.std** -- The standard deviation of freq.BodyAccelJerk.std.X by subject and then by activity, computed by summaryBy(). freq.BodyAccelJerk.std.X is the standard deviation of the body linear acceleration jerk along the X axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyAccelJerk.std.Y.mean** -- The mean of freq.BodyAccelJerk.std.Y by subject and then by activity, computed by summaryBy(). freq.BodyAccelJerk.std.Y is the standard deviation of the body linear acceleration jerk along the Y axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyAccelJerk.std.Y.std** -- The standard deviation of freq.BodyAccelJerk.std.Y by subject and then by activity, computed by summaryBy(). freq.BodyAccelJerk.std.Y is the standard deviation of the body linear acceleration jerk along the Y axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyAccelJerk.std.Z.mean** -- The mean of freq.BodyAccelJerk.std.Z by subject and then by activity, computed by summaryBy(). freq.BodyAccelJerk.std.Z is the standard deviation of the body linear acceleration jerk along the Z axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyAccelJerk.std.Z.std** -- The standard deviation of freq.BodyAccelJerk.std.Z by subject and then by activity, computed by summaryBy(). freq.BodyAccelJerk.std.Z is the standard deviation of the body linear acceleration jerk along the Z axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyGyro.mean.X.mean** -- The mean of freq.BodyGyro.mean.X by subject and then by activity, computed by summaryBy(). freq.BodyGyro.mean.X is the mean of the body angular velocity (from gyroscope) along the X axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyGyro.mean.X.std** -- The standard deviation of freq.BodyGyro.mean.X by subject and then by activity, computed by summaryBy(). freq.BodyGyro.mean.X is the mean of the body angular velocity (from gyroscope) along the X axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyGyro.mean.Y.mean** -- The mean of freq.BodyGyro.mean.Y by subject and then by activity, computed by summaryBy(). freq.BodyGyro.mean.Y is the mean of the body angular velocity (from gyroscope) along the Y axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyGyro.mean.Y.std** -- The standard deviation of freq.BodyGyro.mean.Y by subject and then by activity, computed by summaryBy(). freq.BodyGyro.mean.Y is the mean of the body angular velocity (from gyroscope) along the Y axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyGyro.mean.Z.mean** -- The mean of freq.BodyGyro.mean.Z by subject and then by activity, computed by summaryBy(). freq.BodyGyro.mean.Z is the mean of the body angular velocity (from gyroscope) along the Z axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyGyro.mean.Z.std** -- The standard deviation of freq.BodyGyro.mean.Z by subject and then by activity, computed by summaryBy(). freq.BodyGyro.mean.Z is the mean of the body angular velocity (from gyroscope) along the Z axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyGyro.std.X.mean** -- The mean of freq.BodyGyro.std.X by subject and then by activity, computed by summaryBy(). freq.BodyGyro.std.X is the standard deviation of the body angular velocity (from gyroscope) along the X axis in the frequency domain. The values are normalized and bounded within [-1,1].

**freq.BodyGyro.std.X.std** -- The standard deviation of freq.BodyGyro.std.X by subject and then by activity, computed by summaryBy(). freq.BodyGyro.std.X is the standard deviation  of the body angular velocity (from gyroscope) along the X axis in the frequency domain. The values are normalized and bounded within [-1,1].

**freq.BodyGyro.std.Y.mean** -- The mean of freq.BodyGyro.std.Y by subject and then by activity, computed by summaryBy(). freq.BodyGyro.std.Y is the standard deviation  of the body angular velocity (from gyroscope) along the Y axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyGyro.std.Y.std** -- The standard deviation of freq.BodyGyro.std.Y by subject and then by activity, computed by summaryBy(). freq.BodyGyro.std.Y is the standard deviation  of the body angular velocity (from gyroscope) along the Y axis in the frequency domain. The values are normalized and bounded within [-1,1].

**freq.BodyGyro.std.Z.mean** -- The mean of freq.BodyGyro.std.Z by subject and then by activity, computed by summaryBy(). freq.BodyGyro.std.Z is the standard deviation of the body angular velocity (from gyroscope) along the Z axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyGyro.std.Z.std** -- The standard deviation of freq.BodyGyro.std.Z by subject and then by activity, computed by summaryBy(). freq.BodyGyro.std.Z is the standard deviation  of the body angular velocity (from gyroscope) along the Z axis in the frequency domain. The values are normalized and bounded within [-1,1]. 

**freq.BodyAccelMag.mean.mean** -- The mean of freq.BodyAccelMag.mean by subject and then by activity, computed by summaryBy(). freq.BodyAccelMag.mean is the mean of the body linear acceleration magnitude in the frequency domain. The values are normalized and bounded within [-1,1].

**freq.BodyAccelMag.mean.std** -- The standard deviation of freq.BodyAccelMag.mean by subject and then by activity, computed by summaryBy(). freq.BodyAccelMag.mean is the mean of the body linear acceleration magnitude in the frequency domain. The values are normalized and bounded within [-1,1].

**freq.BodyAccelMag.std.mean** -- The mean of freq.BodyAccelMag.std by subject and then by activity, computed by summaryBy(). freq.BodyAccelMag.std is the standard deviation of the body linear acceleration magnitude in the frequency domain. The values are normalized and bounded within [-1,1].

**freq.BodyAccelMag.std.std** -- The standard deviation of freq.BodyAccelMag.std by subject and then by activity, computed by summaryBy(). freq.BodyAccelMag.std is the standard deviation of the body linear acceleration magnitude in the frequency domain. The values are normalized and bounded within [-1,1].

**freq.BodyAccelJerkMag.mean.mean** -- The mean of freq.BodyAccelJerkMag.mean by subject and then by activity, computed by summaryBy(). freq.BodyAccelJerkMag.mean is the mean of the body linear acceleration jerk magnitude in the frequency domain. The values are normalized and bounded within [-1,1].

**freq.BodyAccelJerkMag.mean.std** -- The standard deviation of freq.BodyAccelJerkMag.mean by subject and then by activity, computed by summaryBy(). freq.BodyAccelJerkMag.mean is the mean of the body linear acceleration jerk magnitude in the frequency domain. The values are normalized and bounded within [-1,1].

**freq.BodyAccelJerkMag.std.mean** -- The mean of freq.BodyAccelJerkMag.std by subject and then by activity, computed by summaryBy(). freq.BodyAccelJerkMag.std is the standard deviation of the body linear acceleration jerk magnitude in the frequency domain. The values are normalized and bounded within [-1,1].

**freq.BodyAccelJerkMag.std.std** -- The standard deviation of freq.BodyAccelJerkMag.std by subject and then by activity, computed by summaryBy(). freq.BodyAccelJerkMag.std is the standard deviation of the body linear acceleration jerk magnitude in the frequency domain. The values are normalized and bounded within [-1,1].

**freq.BodyGyroMag.mean.mean** -- The mean of freq.BodyGyroMag.mean by subject and then by activity, computed by summaryBy(). freq.BodyGyroMag.mean is the mean of the body angular velocity (from gyroscope) magnitude in the frequency domain. The values are normalized and bounded within [-1,1].

**freq.BodyGyroMag.mean.std** -- The standard deviation of freq.BodyGyroMag.mean by subject and then by activity, computed by summaryBy(). freq.BodyGyroMag.mean is the mean of the body angular velocity (from gyroscope) magnitude in the frequency domain. The values are normalized and bounded within [-1,1].

**freq.BodyGyroMag.std.mean** -- The mean of freq.BodyGyroMag.std by subject and then by activity, computed by summaryBy(). freq.BodyGyroMag.std is the standard deviation of the body angular velocity (from gyroscope) magnitude in the frequency domain. The values are normalized and bounded within [-1,1].

**freq.BodyGyroMag.std.std** -- The standard deviation of freq.BodyGyroMag.std by subject and then by activity, computed by summaryBy(). freq.BodyGyroMag.std is the standard deviation of the body angular velocity (from gyroscope) magnitude in the frequency domain. The values are normalized and bounded within [-1,1].

**freq.BodyGyroJerkMag.mean.mean** -- The mean of freq.BodyGyroJerkMag.mean by subject and then by activity, computed by summaryBy(). freq.BodyGyroJerkMag.mean is the mean of the body angular velocity (from gyroscope) jerk magnitude in the frequency domain. The values are normalized and bounded within [-1,1].

**freq.BodyGyroJerkMag.mean.std** -- The standard deviation of freq.BodyGyroJerkMag.mean by subject and then by activity, computed by summaryBy(). freq.BodyGyroJerkMag.mean is the mean of the body angular velocity (from gyroscope) jerk magnitude in the frequency domain. The values are normalized and bounded within [-1,1].

**freq.BodyGyroJerkMag.std.mean** -- The mean of freq.BodyGyroJerkMag.std by subject and then by activity, computed by summaryBy(). freq.BodyGyroJerkMag.std is the standard deviation of the body angular velocity (from gyroscope) jerk magnitude in the frequency domain. The values are normalized and bounded within [-1,1].

**freq.BodyGyroJerkMag.std.std** -- The standard deviation of freq.BodyGyroJerkMag.std by subject and then by activity, computed by summaryBy(). freq.BodyGyroJerkMag.std is the standard deviation of the body angular velocity (from gyroscope) jerk magnitude in the frequency domain. The values are normalized and bounded within [-1,1].

[^1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 

[^2] README.txt included with the UCI HAR data set.
