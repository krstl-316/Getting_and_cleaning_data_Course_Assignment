#############################################################
###Getting and Cleaning data_Final Assignment
#############################################################

#  Note:
#       1.This R script runs on windows system, if you use Mac OS or other systems might cause error.
#       2.R version is 3.6.3, dpylr version 0.8.5
#       3.The date run this script was Wed 22 Apr 2020

#  Brief Contents:
#       1.First step: Getting the file
#       2.Second step: Reading the file
#       3.Third step: Merging the data set
#       4.Forth step: Extracting specific variables
#       5.Fifth step: Naming activities
#       6.Sixth step: Labeling the variables
#       7.Seventh step: Creating new tidy dataset with the data from sixth step

############################################################
##First step: Getting the file ---- download, unzip
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip") 
unzip(zipfile="./data/Dataset.zip",exdir="./data")
path1 <- file.path("./data" , "UCI HAR Dataset")
files<-list.files(path1, recursive=TRUE)
files

#Second step: Reading the file ---- understand the experiment, read data, view data
#read data set files
DataTest  <- read.table(file.path(path1, "test" , "X_test.txt" ),header = FALSE)
DataTrain <- read.table(file.path(path1, "train", "X_train.txt"),header = FALSE)
#read activity label files
LabelTest  <- read.table(file.path(path1, "test" , "Y_test.txt" ),header = FALSE)
LabelTrain <- read.table(file.path(path1, "train", "Y_train.txt"),header = FALSE)
#read subject files
SubjectTrain <- read.table(file.path(path1, "train", "subject_train.txt"),header = FALSE)
SubjectTest  <- read.table(file.path(path1, "test" , "subject_test.txt"),header = FALSE)
#view data
str(DataTest)
str(DataTrain)
str(LabelTest)
str(LabelTrain)
str(SubjectTest)
str(SubjectTrain)

#Third step: Merging the data set
#merge by rows
Subject <- rbind(SubjectTrain, SubjectTest)
Label<- rbind(LabelTrain, LabelTest)
Data<- rbind(DataTrain, DataTest)
#set names to columns
names(Subject)<-c("subject")
names(Label)<- c("activity")
featuresNames <- read.table(file.path(path1, "features.txt"),head=FALSE)
names(Data)<- featuresNames$V2
#merge by columns
feature <- cbind(Subject, Label)
oneData <- cbind(feature, Data)

#Forth step: Extracting specific variables
#select "mean" "std"
selectedFeatures<-featuresNames$V2[grep("mean\\(\\)|std\\(\\)", featuresNames$V2)]
#subset data set
selectedNames<-c( "subject", "activity",as.character(selectedFeatures))
extractData<-subset(oneData,select=selectedNames)

#Fifth step: Naming activities
#read activity label.txt
activityLabels <- read.table(file.path(path1, "activity_labels.txt"),header = FALSE)
#factorize activity
extractData$activity <- as.character(extractData$activity)
for (i in 1:6){
  extractData$activity[extractData$activity == i] <- as.character(activityLabels[i,2])
}
extractData$activity <- as.factor(extractData$activity)
View(extractData)

#Sixth step: Labeling the variables
names(extractData)<-gsub("Acc", "Accelerometer", names(extractData))
names(extractData)<-gsub("Gyro", "Gyroscope", names(extractData))
names(extractData)<-gsub("BodyBody", "Body", names(extractData))
names(extractData)<-gsub("Mag", "Magnitude", names(extractData))
names(extractData)<-gsub("^t", "Time", names(extractData))
names(extractData)<-gsub("^f", "Frequency", names(extractData))
names(extractData)<-gsub("tBody", "TimeBody", names(extractData))
names(extractData)<-gsub("-mean()", "Mean", names(extractData), ignore.case = TRUE)
names(extractData)<-gsub("-std()", "STD", names(extractData), ignore.case = TRUE)
names(extractData)<-gsub("-freq()", "Frequency", names(extractData), ignore.case = TRUE)
names(extractData)<-gsub("angle", "Angle", names(extractData))
names(extractData)<-gsub("gravity", "Gravity", names(extractData))
#assign data set to tidyData
tidyData<- extractData
#view names
names(tidyData)

#Seventh step: Creating new tidy dataset with the data from sixth step
#get average data
library(dplyr)
averageData <- tidyData %>%
            group_by(subject, activity) %>%
            summarise_all(funs(mean))%>%
            ungroup()
#rename variables
colName <- c(names(averageData[c(1,2)]),
                           paste0("Average", names(averageData[-c(1, 2)])))
names(averageData) <- colName
#save data set to "tidy_data.txt"
write.table(averageData, "tidy_data.txt", row.name=FALSE)
#check tidy data
str(averageData)

#####################################################################
###The end
#####################################################################
