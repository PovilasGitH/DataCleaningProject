
#setwd('C:\\Users\\Povilas\\Documents\\GitHub\\DataCleaningProject\\')
library(data.table)
# 1. Reading data.
TrData <- read.table("./data/train/X_train.txt")
TrLabel <- read.table("./data/train/y_train.txt")
TrSubject <- read.table("./data/train/subject_train.txt")
TsData <- read.table("./data/test/X_test.txt")
TsLabel <- read.table("./data/test/y_test.txt")
TsSubject <- read.table("./data/test/subject_test.txt")
#--
FeaturesData <- read.table("./data/features.txt")
ActivityData <- read.table("./data/activity_labels.txt")

#join test and train data
JnData <- rbind(TrData,TsData)
JnLabel <- rbind(TrLabel,TsLabel)
JnSubject <- rbind(TrSubject,TsSubject)

# 2. Select measurements of mean and Standart deviation
MnStdIndices <- grep("mean\\(\\)|std\\(\\)",FeaturesData[,2])
JnData <- JnData[,MnStdIndices]
#Set column names 
names(JnData) <- FeaturesData[MnStdIndices,2]
#Modify column names
names(JnData) <- gsub("-","",names(JnData))
names(JnData) <- gsub("\\(\\)","",names(JnData))
names(JnData) <- gsub("mean","Mean",names(JnData))
names(JnData) <- gsub("std","Std",names(JnData))

# 3. Set descriptive activity names
ActivityData[,2] <- gsub("_","",ActivityData[,2])
ActLabel <-ActivityData[JnLabel[,1],2]
JnLabel[,1] <- ActLabel
names(JnLabel) <- "Activity"

# 4. Label data set with descriptive varialbe names

names(JnSubject) <- "Subject"
FinalData <- cbind(JnSubject,JnLabel,JnData)
# First data table
write.table(FinalData,"cleaned_data.txt")

#5 Create table with average of each variable for each activity and each subject. 
TmpDT <-data.table(FinalData)
CalcMeanData <- TmpDT[,lapply(.SD,mean), by=c("Subject","Activity")]
#Second data table
write.table(CalcMeanData,"calculated_average_data.txt")

