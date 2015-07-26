##
##Getting & Cleaning Data
##Course Project

## Miguel Ceballos

##Setting working directory
setwd("C:/Users/204024285/Documents/MisPrimerosProyectos/Getting_Cleaning/UCI HAR Dataset")
##reading headers
headers01 <- read.table("features.txt")
headers01 <- as.matrix(headers01)
##setting Training data
setwd("train")
train<-read.table("x_train.txt", header=FALSE )
subjectTrain <- read.table("subject_train.txt", header=FALSE)
colnames(train)<- headers01[,2]

setwd("..")

##setting Test data
setwd("test")
test<-read.table("x_test.txt", header=FALSE )
subjectTest <- read.table("subject_test.txt", header=FALSE)
colnames(test)<- headers01[,2]

setwd("..")

##Joining both datasets
allData <- rbind(train, test)
allSubjects <- rbind(subjectTrain, subjectTest)

##Setting variable name for Subjects
colnames(allSubjects)<-"Subject"

##extracting just Mean & STD
justMean<- subset(allData, TRUE, grep("mean()", colnames(allData)))
justSTD <- subset(allData, TRUE, grep("std()", colnames(allData)))

## Joining final data to set TIDY dataset
TIDYData <- cbind(allSubjects, justMean, justSTD)

##Writing out file 
write.table(TIDYData, file = "tidyData.txt", row.names=FALSE)

##The END