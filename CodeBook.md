#################################################

Codebook

#################################################



Brief Content:
	
	1.A step by step introduction of the run_analysis.R file
	2.Description of variables in the tidy_data.txt
	3.License
	

1.A step by step introduction of the run_analysis.R file
	
	Note:
		1.This R script runs on windows system, if you use Mac OS or other systems might cause error.
		2.R version is 3.6.3, dpylr version 0.8.5
		3.The date run this script was Wed 22 Apr 2020
	Brief Contents:
		1.First step: Getting the file
		2.Second step: Reading the file
		3.Third step: Merging the data set
		4.Forth step: Extracting specific variables
		5.Fifth step: Naming activities
		6.Sixth step: Labeling the variables
		7.Seventh step: Creating new tidy dataset with the data from sixth step

	========================================================
	
	The first two steps are load the data into R , the 3rd to 7th steps refer to requirements 1-5 in the assignment.
	
		First step: Getting the file
			1.download file
			2.unzip file
		Second step: Reading the file
			1.understand the experiment
				Read README file in the folder.
				Get a whole view of the raw data
			2.read data
				Read X_train, X_test, Y_train, Y_test, subject_train, subject_test txt files into R.
				Use str() function to view the data sets.
		Third step: Merging the data set
			1.merge the data sets by rows
			2.set names to each colums
			3.merge the data sets by colums, assign to oneData
		Forth step: Extracting specific variables
			1.select features with "mean" "std"
			2.subset data set, assign to extractData
		Fifth step: Naming activities
			1.read activity_label.txt
			2.factorize activity
		Sixth step: Labeling the variables
			1.use descriptive names
				"Acc" to "Accelerometer"
				"Gyro" to "Gyroscope"
				"BodyBody" to "Body"
				"Mag" to "Magnitude"
				"^t" to "Time"
				"^f" to "Frequency"
				"tBody" to "TimeBody"
				"-mean()" to "Mean"
				"-std()" to "STD"
				"-freq()" to "Frequency"
				"angle" to "Angle"
				"gravity" to "Gravity"
			2.view names
		Seventh step: Creating new tidy dataset with the data from sixth step
			1.get average data
			2.rename variables:
				Add "Average" in front of all variables.
			3.save data set to "tidy_data.txt"
			4.check tidy data

2.Description of variables in the tidy_data.txt
		
		Index  Variables Class	Range	Description
		1	subject	integer	1 - 30	Identifies the human subject.
		2	activity	factor	1 - 6	Identifies the activity. Labels: WALKING, WALKING UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
		3	AverageTimeBodyAccelerometerMean-X	numeric	[-1, 1]	Time domain, Average of means for body Acceleration on X axis.
		4	AverageTimeBodyAccelerometerMean-Y	numeric	[-1, 1]	Time domain, Average of means for body Acceleration on Y axis.
		5	AverageTimeBodyAccelerometerMean-Z	numeric	[-1, 1]	Time domain, Average of means for body Acceleration on Z axis.
		6	AverageTimeBodyAccelerometerSTD-X	numeric	[-1, 1]	Time domain, Average of standard deviations for body Acceleration on X axis.
		7	AverageTimeBodyAccelerometerSTD-Y	numeric	[-1, 1]	Time domain, Average of standard deviations for body Acceleration on Y axis.
		8	AverageTimeBodyAccelerometerSTD-Z	numeric	[-1, 1]	Time domain, Average of standard deviations for body Acceleration on Z axis.
		9	AverageTimeGravityAccelerometerMean-X	numeric	[-1, 1]	Time domain, Average of means for gravity Acceleration on X axis.
		10	AverageTimeGravityAccelerometerMean-Y	numeric	[-1, 1]	Time domain, Average of means for gravity Acceleration on Y axis.
		11	AverageTimeGravityAccelerometerMean-Z	numeric	[-1, 1]	Time domain, Average of means for gravity Acceleration on Z axis.
		12	AverageTimeGravityAccelerometerSTD-X	numeric	[-1, 1]	Time domain, Average of standard deviations for gravity Acceleration on X axis.
		13	AverageTimeGravityAccelerometerSTD-Y	numeric	[-1, 1]	Time domain, Average of standard deviations for gravity Acceleration on Y axis.
		14	AverageTimeGravityAccelerometerSTD-Z	numeric	[-1, 1]	Time domain, Average of standard deviations for gravity Acceleration on Z axis.
		15	AverageTimeBodyAccelerometerJerkMean-X	numeric	[-1, 1]	Time domain, Average of means for the jerk of body Acceleration on X axis.
		16	AverageTimeBodyAccelerometerJerkMean-Y	numeric	[-1, 1]	Time domain, Average of means for the jerk of body Acceleration on Y axis.
		17	AverageTimeBodyAccelerometerJerkMean-Z	numeric	[-1, 1]	Time domain, Average of means for the jerk of body Acceleration on Z axis.
		18	AverageTimeBodyAccelerometerJerkSTD-X	numeric	[-1, 1]	Time domain, Average of standard deviations for the jerk of body Acceleration on X axis.
		19	AverageTimeBodyAccelerometerJerkSTD-Y	numeric	[-1, 1]	Time domain, Average of standard deviations for the jerk of body Acceleration on Y axis.
		20	AverageTimeBodyAccelerometerJerkSTD-Z	numeric	[-1, 1]	Time domain, Average of standard deviations for the jerk of body Acceleration on Z axis.
		21	AverageTimeBodyGyroscopeMean-X	numeric	[-1, 1]	Time domain, Average of means for angular velocity on X axis.
		22	AverageTimeBodyGyroscopeMean-Y	numeric	[-1, 1]	Time domain, Average of means for angular velocity on Y axis.
		23	AverageTimeBodyGyroscopeMean-Z	numeric	[-1, 1]	Time domain, Average of means for angular velocity on Z axis.
		24	AverageTimeBodyGyroscopeSTD-X	numeric	[-1, 1]	Time domain, Average of standard deviations for angular velocity on X axis.
		25	AverageTimeBodyGyroscopeSTD-Y	numeric	[-1, 1]	Time domain, Average of standard deviations for angular velocity on Y axis.
		26	AverageTimeBodyGyroscopeSTD-Z	numeric	[-1, 1]	Time domain, Average of standard deviations for angular velocity on Z axis.
		27	AverageTimeBodyGyroscopeJerkMean-X	numeric	[-1, 1]	Time domain, Average of means for the jerk of angular velocity on X axis.
		28	AverageTimeBodyGyroscopeJerkMean-Y	numeric	[-1, 1]	Time domain, Average of means for the jerk of angular velocity on Y axis.
		29	AverageTimeBodyGyroscopeJerkMean-Z	numeric	[-1, 1]	Time domain, Average of means for the jerk of angular velocity on Z axis.
		30	AverageTimeBodyGyroscopeJerkSTD-X	numeric	[-1, 1]	Time domain, Average of standard deviations for the jerk of angular velocity on X axis.
		31	AverageTimeBodyGyroscopeJerkSTD-Y	numeric	[-1, 1]	Time domain, Average of standard deviations for the jerk of angular velocity on Y axis.
		32	AverageTimeBodyGyroscopeJerkSTD-Z	numeric	[-1, 1]	Time domain, Average of standard deviations for the jerk of angular velocity on Z axis.
		33	AverageTimeBodyAccelerometerMagnitudeMean	numeric	[-1, 1]	Time domain, Average of means for the Magnitude of body Acceleration.
		34	AverageTimeBodyAccelerometerMagnitudeSTD	numeric	[-1, 1]	Time domain, Average of standard deviations for the Magnitude of body Acceleration.
		35	AverageTimeGravityAccelerometerMagnitudeMean	numeric	[-1, 1]	Time domain, Average of means for the Magnitude of gravity Acceleration.
		36	AverageTimeGravityAccelerometerMagnitudeSTD	numeric	[-1, 1]	Time domain, Average of standard deviations for the Magnitude of gravity Acceleration.
		38	AverageTimeBodyAccelerometerJerkMagnitudeMean	numeric	[-1, 1]	Time domain, Average of means for the Magnitude of jerk, of body Acceleration.
		38	AverageTimeBodyAccelerometerJerkMagnitudeSTD	numeric	[-1, 1]	Time domain, Average of standard deviations for the Magnitude of jerk, of body Acceleration.
		39	AverageTimeBodyGyroscopeMagnitudeMean	numeric	[-1, 1]	Time domain, Average of means for the Magnitude of angular velocity.
		40	AverageTimeBodyGyroscopeMagnitudeSTD	numeric	[-1, 1]	Time domain, Average of standard deviations for the Magnitude of angular velocity.
		41	AverageTimeBodyGyroscopeJerkMagnitudeMean	numeric	[-1, 1]	Time domain, Average of means for the Magnitude of jerk, of the angular velocity.
		42	AverageTimeBodyGyroscopeJerkMagnitudeSTD	numeric	[-1, 1]	Time domain, Average of standard deviations for the Magnitude of jerk, of the angular velocity.
		43	AverageFrequencyBodyAccelerometerMean-X	numeric	[-1, 1]	Frequency domain, Average of means for body Acceleration on X axis.
		44	AverageFrequencyBodyAccelerometerMean-Y	numeric	[-1, 1]	Frequency domain, Average of means for body Acceleration on Y axis.
		45	AverageFrequencyBodyAccelerometerMean-Z	numeric	[-1, 1]	Frequency domain, Average of means for body Acceleration on Z axis.
		46	AverageFrequencyBodyAccelerometerSTD-X	numeric	[-1, 1]	Frequency domain, Average of standard deviations for body Acceleration on X axis.
		47	AverageFrequencyBodyAccelerometerSTD-Y	numeric	[-1, 1]	Frequency domain, Average of standard deviations for body Acceleration on Y axis.
		48	AverageFrequencyBodyAccelerometerSTD-Z	numeric	[-1, 1]	Frequency domain, Average of standard deviations for body Acceleration on Z axis.
		49	AverageFrequencyBodyAccelerometerJerkMean-X	numeric	[-1, 1]	Frequency domain, Average of means for the jerk of the body Acceleration on X axis.
		50	AverageFrequencyBodyAccelerometerJerkMean-Y	numeric	[-1, 1]	Frequency domain, Average of means for the jerk of the body Acceleration on Y axis.
		51	AverageFrequencyBodyAccelerometerJerkMean-Z	numeric	[-1, 1]	Frequency domain, Average of means for the jerk of the body Acceleration on Z axis.
		52	AverageFrequencyBodyAccelerometerJerkSTD-X	numeric	[-1, 1]	Frequency domain, Average of standard deviations for the jerk of the body Acceleration on X axis.
		53	AverageFrequencyBodyAccelerometerJerkSTD-Y	numeric	[-1, 1]	Frequency domain, Average of standard deviations for the jerk of the body Acceleration on Y axis.
		54	AverageFrequencyBodyAccelerometerJerkSTD-Z	numeric	[-1, 1]	Frequency domain, Average of standard deviations for the jerk of the body Acceleration on Z axis.
		55	AverageFrequencyBodyGyroscopeMean-X	numeric	[-1, 1]	Frequency domain, Average of means for the jerk of angular velocity on X axis.
		56	AverageFrequencyBodyGyroscopeMean-Y	numeric	[-1, 1]	Frequency domain, Average of means for the jerk of angular velocity on Y axis.
		57	AverageFrequencyBodyGyroscopeMean-Z	numeric	[-1, 1]	Frequency domain, Average of means for the jerk of angular velocity on Z axis.
		58	AverageFrequencyBodyGyroscopeSTD-X	numeric	[-1, 1]	Frequency domain, Average of standard deviations for the jerk of angular velocity on X axis.
		59	AverageFrequencyBodyGyroscopeSTD-Y	numeric	[-1, 1]	Frequency domain, Average of standard deviations for the jerk of angular velocity on Y axis.
		60	AverageFrequencyBodyGyroscopeSTD-Z	numeric	[-1, 1]	Frequency domain, Average of standard deviations for the jerk of angular velocity on Z axis.
		61	AverageFrequencyBodyAccelerometerMagnitudeMean	numeric	[-1, 1]	Frequency domain, Average of means for the Magnitude of body Acceleration.
		62	AverageFrequencyBodyAccelerometerMagnitudeSTD	numeric	[-1, 1]	Frequency domain, Average of standard deviations for the Magnitude of body Acceleration.
		63	AverageFrequencyBodyAccelerometerJerkMagnitudeMean	numeric	[-1, 1]	Frequency domain, Average of means for the Magnitude of jerk, of body Acceleration.
		64	AverageFrequencyBodyAccelerometerJerkMagnitudeSTD	numeric	[-1, 1]	Frequency domain, Average of standard deviations for the Magnitude of jerk, of body Acceleration.
		65	AverageFrequencyBodyGyroscopeMagnitudeMean	numeric	[-1, 1]	Frequency domain, Average of means for the Magnitude of angular velocity.
		66	AverageFrequencyBodyGyroscopeMagnitudeSTD	numeric	[-1, 1]	Frequency domain, Average of standard deviations for the Magnitude of angular velocity.
		67	AverageFrequencyBodyGyroscopeJerkMagnitudeMean	numeric	[-1, 1]	Frequency domain, Average of means for the Magnitude of jerk, of angular velocity.
		68	AverageFrequencyBodyGyroscopeJerkMagnitudeSTD	numeric	[-1, 1]	Frequency domain, Average of standard deviation for the Magnitude of jerk, of angular velocity.

	

3.License

	Use of the dataset in publications must be acknowledged by referencing the following publication:
		Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
		This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
		Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

