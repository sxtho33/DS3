##Part of the Course project completed on May -24-2015. 
#-------------------Assignament problem description Start---------------------------------------
#You should create one R script called run_analysis.R that does the following. 
#1.Merges the training and the test sets to create one data set.
#2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#3.Uses descriptive activity names to name the activities in the data set
#4.Appropriately labels the data set with descriptive variable names. 
#5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#-------------------Assignment problem description  End---------------------------------------


##0 Get the data  Start -----------------------------------------------------------------------
if(!file.exists("3datascience"))
{
  dir.create("3datascience")
}
##https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
#download file
fileUrl="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./3datascience/UCI HAR Dataset")

#meta data read to the table[; Reading the features and activity lables
features <- read.table(file = "./3datascience/UCI HAR Dataset/features.txt")
activitylabels<- read.table(file = "./3datascience/UCI HAR Dataset/activity_labels.txt")

#read the Test data
subjectTest <- read.table(file = "./3datascience/UCI HAR Dataset/test/subject_test.txt")
activityTest <- read.table(file = "./3datascience/UCI HAR Dataset/test/y_test.txt")
X_test <- read.table(file = "./3datascience/UCI HAR Dataset/test/X_test.txt")
#Read the Train data
subjectTrain <- read.table(file = "./3datascience/UCI HAR Dataset/train/subject_train.txt")
activityTrain <- read.table(file = "./3datascience/UCI HAR Dataset/train/y_train.txt")
X_train <- read.table(file = "./3datascience/UCI HAR Dataset/train/X_train.txt")


#4.Appropriately labels the data set with descriptive variable names. 
#Renaming the column names
library(plyr)
colnames(subjectTest)[1] <- 'Subject'
colnames(activityTest)[1] <- 'Activity'
colnames(subjectTrain)[1] <- 'Subject'
colnames(activityTrain)[1] <- 'Activity'
a =t(features[,2])
colnames(X_train) = a
colnames(X_test) = a

## only picking the mean and STD from X file
#2. Extracts only the measurements on the mean and standard deviation for each measurement. 
X_train.sub = X_train[grep("((mean|std){1}(freq){0,}[(][)])",names(X_train))]
X_test.sub =  X_test[grep("((mean|std){1}(freq){0,}[(][)])",names(X_test))]


##1 Merge training and the test sets to create one data set. Start  -----------------------------------------------------------------------
#1.1 Merging the Test data by column bind;also adding a type column to recoganize the TEST or TRAIN 
TESTDATA= cbind(subjectTest,activityTest, Type ="TEST",X_test.sub)
#1.2 #1.1 Merging the Train data by column bind
TRAINDATA= cbind(subjectTrain,activityTrain,Type ="TRAIN",X_train.sub)
#merge   by merging TEST and TRAIN  
DATA=rbind(TESTDATA,TRAINDATA)


#3.Uses descriptive activity names to name the activities in the data set
#couldhave run by 1 line. But wanted to test parallelly. 

DATA$Activity[which(DATA$Activity=="1")]<-"WALKING"
DATA$Activity[which(DATA$Activity=="2")]<-"WALKING_UPSTAIRS"
DATA$Activity[which(DATA$Activity=="3")]<-"WALKING_DOWNSTAIRS"
DATA$Activity[which(DATA$Activity=="4")]<-"SITTING"
DATA$Activity[which(DATA$Activity=="5")]<-"STANDING"
DATA$Activity[which(DATA$Activity=="6")]<-"LAYING"

##5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(dplyr)
DATA.summary <- ddply(DATA, .(Subject, Activity), colwise(mean))
DATA.summary1=select(DATA.summary,-c(Type))
 

#write files  -final out put is -DATAsummary1.txt
#write.csv(DATA,file="./3datascience/DATA.csv")
write.table(DATA.summary1,file="./3datascience/DATAsummary1.txt",row.names=FALSE)
#write.csv(DATA.summary1,file="./3datascience/DATAsummary1CSV.csv")

 



