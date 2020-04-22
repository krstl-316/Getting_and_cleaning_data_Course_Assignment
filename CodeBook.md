#################################################

Codebook

#################################################



Brief Content:
	
	1.A step by step introduction of the run_analysis.R file
	2.License

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

2.License

	Use of the dataset in publications must be acknowledged by referencing the following publication:
		Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
		This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
		Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

