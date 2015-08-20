CODEBOOK

The column subjectid contains a value between 1-30.Each value refers to one of the thirty participants who participated in the experiment.

The column activities contains one of the following values: walking, walkingupstairs, walkingdownstairs, sitting, standing, laying. The values were transformed from numeric values between 1-6 as such:
1 was converted to walking
2 was converted to walkingupstairs
3 was converted to walkingdownstairs
4 was converted to sitting
5 was converted to standing
6 was converted to laying

The values in all other columns are the mean of each variable grouped by the subjectid and activities columns.

The following transformations were applied to the column headings:
acc was changed to acceleration
mag was changed to magnitude
gyro was changed to gyroscopic
bodybody was changed to body
std was changed to standarddeviation
"()" and "-" were removed 
Only column names containing mean or standarddeviation were retained from the original data.
Below is a complete list of the variable conversion

Source(x train and test) 	Final
tBodyAcc-mean()-X	---->	timebodyaccelerationmeanx	
tBodyAcc-mean()-Y	---->	timebodyaccelerationmeany
tBodyAcc-mean()-Z	---->	timebodyaccelerationmeanz	
tBodyAcc-std()-X	---->	timebodyaccelerationstandarddeviationx
tBodyAcc-std()-Y	---->	timebodyaccelerationstandarddeviationy	
tBodyAcc-std()-Z	---->	timebodyaccelerationstandarddeviationz
tGravityAcc-mean()-X	---->	timegravityaccelerationmeanx	
tGravityAcc-mean()-Y	---->	timegravityaccelerationmeany
tGravityAcc-mean()-Z	---->	timegravityaccelerationmeanz	
tGravityAcc-std()-X	---->	timegravityaccelerationstandarddeviationx
tGravityAcc-std()-Y	---->	timegravityaccelerationstandarddeviationy	
tGravityAcc-std()-Z	---->	timegravityaccelerationstandarddeviationz
tBodyAccJerk-mean()-X	---->	timebodyaccelerationjerkmeanx	
tBodyAccJerk-mean()-Y	---->	timebodyaccelerationjerkmeany
tBodyAccJerk-mean()-Z	---->	timebodyaccelerationjerkmeanz	
tBodyAccJerk-std()-X	---->	timebodyaccelerationjerkstandarddeviationx
tBodyAccJerk-std()-Y	---->	timebodyaccelerationjerkstandarddeviationy	
tBodyAccJerk-std()-Z	---->	timebodyaccelerationjerkstandarddeviationz
tBodyGyro-mean()-X	---->	timebodygyroscopicmeanx	
tBodyGyro-mean()-Y	---->	timebodygyroscopicmeany
tBodyGyro-mean()-Z	---->	timebodygyroscopicmeanz	
tBodyGyro-std()-X	---->	timebodygyroscopicstandarddeviationx
tBodyGyro-std()-Y	---->	timebodygyroscopicstandarddeviationy	
tBodyGyro-std()-Z	---->	timebodygyroscopicstandarddeviationz
tBodyGyroJerk-mean()-X	---->	timebodygyroscopicjerkmeanx	
tBodyGyroJerk-mean()-Y	---->	timebodygyroscopicjerkmeany
tBodyGyroJerk-mean()-Z	---->	timebodygyroscopicjerkmeanz	
tBodyGyroJerk-std()-X	---->	timebodygyroscopicjerkstandarddeviationx
tBodyGyroJerk-std()-Y	---->	timebodygyroscopicjerkstandarddeviationy	
tBodyGyroJerk-std()-Z	---->	timebodygyroscopicjerkstandarddeviationz
tBodyAccMag-mean()	---->	timebodyaccelerationmagnitudemean	
tBodyAccMag-std()	---->	timebodyaccelerationmagnitudestandarddeviation
tGravityAccMag-mean()	---->	timegravityaccelerationmagnitudemean	
tGravityAccMag-std()	---->	timegravityaccelerationmagnitudestandarddeviation
tBodyAccJerkMag-mean()	---->	timebodyaccelerationjerkmagnitudemean	
tBodyAccJerkMag-std()	---->	timebodyaccelerationjerkmagnitudestandarddeviation
tBodyGyroMag-mean()	---->	timebodygyroscopicmagnitudemean	
tBodyGyroMag-std()	---->	timebodygyroscopicmagnitudestandarddeviation
tBodyGyroJerkMag-mean()	---->	timebodygyroscopicjerkmagnitudemean	
tBodyGyroJerkMag-std()	---->	timebodygyroscopicjerkmagnitudestandarddeviation
fBodyAcc-mean()-X	---->	frequencybodyaccelerationmeanx	
fBodyAcc-mean()-Y	---->	frequencybodyaccelerationmeany
fBodyAcc-mean()-Z	---->	frequencybodyaccelerationmeanz	
fBodyAcc-std()-X	---->	frequencybodyaccelerationstandarddeviationx
fBodyAcc-std()-Y	---->	frequencybodyaccelerationstandarddeviationy	
fBodyAcc-std()-Z	---->	frequencybodyaccelerationstandarddeviationz
fBodyAcc-meanFreq()-X	---->	frequencybodyaccelerationmeanfreqx	
fBodyAcc-meanFreq()-Y	---->	frequencybodyaccelerationmeanfreqy
fBodyAcc-meanFreq()-Z	---->	frequencybodyaccelerationmeanfreqz	
fBodyAccJerk-mean()-X	---->	frequencybodyaccelerationjerkmeanx
fBodyAccJerk-mean()-Y	---->	frequencybodyaccelerationjerkmeany	
fBodyAccJerk-mean()-Z	---->	frequencybodyaccelerationjerkmeanz
fBodyAccJerk-std()-X	---->	frequencybodyaccelerationjerkstandarddeviationx	
fBodyAccJerk-std()-Y	---->	frequencybodyaccelerationjerkstandarddeviationy
fBodyAccJerk-std()-Z	---->	frequencybodyaccelerationjerkstandarddeviationz	
fBodyAccJerk-meanFreq()-X	---->	frequencybodyaccelerationjerkmeanfreqx
fBodyAccJerk-meanFreq()-Y	---->	frequencybodyaccelerationjerkmeanfreqy	
fBodyAccJerk-meanFreq()-Z	---->	frequencybodyaccelerationjerkmeanfreqz
fBodyGyro-mean()-X	---->	frequencybodygyroscopicmeanx	
fBodyGyro-mean()-Y	---->	frequencybodygyroscopicmeany
fBodyGyro-mean()-Z	---->	frequencybodygyroscopicmeanz	
fBodyGyro-std()-X	---->	frequencybodygyroscopicstandarddeviationx
fBodyGyro-std()-Y	---->	frequencybodygyroscopicstandarddeviationy	
fBodyGyro-std()-Z	---->	frequencybodygyroscopicstandarddeviationz
fBodyGyro-meanFreq()-X	---->	frequencybodygyroscopicmeanfreqx	
fBodyGyro-meanFreq()-Y	---->	frequencybodygyroscopicmeanfreqy
fBodyGyro-meanFreq()-Z	---->	frequencybodygyroscopicmeanfreqz	
fBodyAccMag-mean()	---->	frequencybodyaccelerationmagnitudemean
fBodyAccMag-std()	---->	frequencybodyaccelerationmagnitudestandarddeviation	
fBodyAccMag-meanFreq()	---->	frequencybodyaccelerationmagnitudemeanfreq
fBodyBodyAccJerkMag-mean()	---->	frequencybodyaccelerationjerkmagnitudemean	
fBodyBodyAccJerkMag-std()	---->	frequencybodyaccelerationjerkmagnitudestandarddeviation
fBodyBodyAccJerkMag-meanFreq()	---->	frequencybodyaccelerationjerkmagnitudemeanfreq	
fBodyBodyGyroMag-mean()	---->		frequencybodygyroscopicmagnitudemean
fBodyBodyGyroMag-std()	---->	frequencybodygyroscopicmagnitudestandarddeviation	
fBodyBodyGyroMag-meanFreq()	---->	frequencybodygyroscopicmagnitudemeanfreq
fBodyBodyGyroJerkMag-mean()	---->	frequencybodygyroscopicjerkmagnitudemean	
fBodyBodyGyroJerkMag-std()	---->	frequencybodygyroscopicjerkmagnitudestandarddeviation
fBodyBodyGyroJerkMag-meanFreq()	---->	frequencybodygyroscopicjerkmagnitudemeanfreq	

A description of the variables provided below was obtained from the features_info.txt:

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions."

"The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation"
