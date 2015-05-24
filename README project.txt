
==================================================================
 May-24-2015  By Ambooken

=================================================================
Human Activity Recognition Using Smartphones Dataset -Course project 
Please check the data file run_analysis.R
 



Directoy where all the dcoumentation available. 
RAW data - https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
tidy Data- DATAsummary1.txt
program name run_analysis.R
code book- codebook for the course project.TXT
readme - README.TXT

==================================================================
How to re-create the tidy data from Raw data 

RAW data - https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

0.1Get the data  from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip this is the raw data for the test. 
0.2 check if the file is existing if not, download the zip file. 

0.3 read the test data from the downloaded directory. 
    read using the read.table function on following text files, subject_test.txt,y_test.txt,X_test.txt as data frames
0.4 read the train data from the downloaded directory
    read using the read.table function on following text files, subject_test.txt,y_test.txt,X_test.txt as data frames
 	  
1.0  Appropriately label the data frames using colnames. 
2.0- Eliminate the unncessary columns from the X file- Only meand and std are requried. 
2.1  this can be achieved by grep function. do the same for both X files. 
3.0  join X, activity and subject test. for both Test and Train data usign CBIND fucntion adn create a DATA file for both Test and Train
3.1  Merge the test and train data files  as DATA using RBIND
4.0  Uses descriptive activity names to name the activities in the data set , use the which function
5.0  usind ddply function create a average for messurement
6.0  using write.table() write as a text file to the directory.
 	
------------------------------------------------------------------
