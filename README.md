# Getting_and_cleaning_data_Course_Assignment
This is the repo for course assignment of Getting and cleaning data

This is the repo for course assignment of Getting and cleaning data.

Brief Content of README:
	1.Introduction to the assignment
	2.About this repository

--------------------------------------------------------
1.Introduction of this assignment
	Course Name: 
		Getting And Cleaning Data,  Data Science Specialization, presented by Johns Hopkins University, on coursera
	Purporse to the assignment:
		Show one's ability to collect, work with and clean a data set.
		The goal is to prepare tidy data for later use.
	Dataset used:
		Human Activity Recognition Using Smartphones
		(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
	Requirements of the assignment:
		The assignment asked to:
		You will be required to submit:
			a tidy data set as described below
			a link to a Github repository with your script for performing the analysis, and
			a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md.
			You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

		and for the main script, 'run_analysis.R' the requirements was that it should be able to run, as far as the 'UCI HAR Dataset' is present in the working directory and to be able to perform the following 5 steps:
			1.Merges the training and the test sets to create one data set.
			2.Extracts only the measurements on the mean and standard deviation for each measurement.
			3.Uses descriptive activity names to name the activities in the data set
			4.Appropriately labels the data set with descriptive variable names.
			5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


2.About this repository
	Threre are four files in this repository.
	
	README.md
		This is the artical you are reading, and it gives you a better understanding of the other files in the repository.
		
	run_analysis.R
		Note:
			1.This R script runs on windows system, if you use Mac OS or other systems might cause error.
			2.R version is 3.6.3, while dpylr version is 0.8.5
			3.The date run this script was Wed 22 Apr 2020 GMT
		Brief Contents:
			1.First step: Getting the file
			2.Second step: Reading the file
			3.Third step: Merging the data set
			4.Forth step: Extracting specific variables
			5.Fifth step: Naming activities
			6.Sixth step: Labeling the variables
			7.Seventh step: Creating new tidy dataset with the data from sixth step
	CodeBook.md
		This file contains all the metadata and informations on tidy_data.txt file.
		Contents:
			1.A step by step introduction of the run_analysis.R file
			2.License
	
	tidy_data.txt
		This is the tidy data set that required in the assignment.

