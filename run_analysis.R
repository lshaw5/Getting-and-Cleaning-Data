rm(list = ls(all = TRUE))
library(plyr) 
library(dplyr) 

# Set the working directory
setwd("C:/Users/xxxx/Desktop")

# Read Data
train <- read.csv("UCI HAR Dataset/train/X_train.txt", sep="", header=FALSE)
train[,562] <- read.csv("UCI HAR Dataset/train/Y_train.txt", sep="", header=FALSE)
train[,563] <- read.csv("UCI HAR Dataset/train/subject_train.txt", sep="", header=FALSE)

test <- read.csv("UCI HAR Dataset/test/X_test.txt", sep="", header=FALSE)
test[,562] <- read.csv("UCI HAR Dataset/test/Y_test.txt", sep="", header=FALSE)
test[,563] <- read.csv("UCI HAR Dataset/test/subject_test.txt", sep="", header=FALSE)

activityLabels = read.csv("UCI HAR Dataset/activity_labels.txt", sep="", header=FALSE)
features = read.csv("UCI HAR Dataset/features.txt", sep="", header=FALSE)

# Merge data
All = rbind(train, test)

# Update names in features
features[,2] = gsub('-mean', 'Mean', features[,2])
features[,2] = gsub('-std', 'Std', features[,2])
features[,2] = gsub('[-()]', '', features[,2])

# Review data
head(train, n=10)
head(test, n=10)
head(features, n=10)
head(activityLabels, n=10)

# Get only the data on mean and std. dev.
colsreduced <- grep(".*Mean.*|.*Std.*", features[,2])
#  reduce the features table
features <- features[colsreduced,]
# Now add the last two columns (subject and activity)
colsreduced <- c(colsreduced, 562, 563)
# And remove the unwanted columns from All
All <- All[,colsreduced]
# Add the column names (features) to All
colnames(All) <- c(features$V2, "Activity", "Subject")
colnames(All) <- tolower(colnames(All))

currentActivity = 1
for (currentActivityLabel in activityLabels$V2) {
  allData$activity <- gsub(currentActivity, currentActivityLabel, $activity)
  currentActivity <- currentActivity + 1
}

All$activity <- as.factor(All$activity)
All$subject <- as.factor(All$subject)

tidy <- aggregate(All, by=list(activity = All$activity, subject=All$subject), mean)
# Remove the subject and activity column
tidy[,90] <- NULL
tidy[,89] <- NULL
write.table(tidy, row.name=FALSE, "run_analysis.txt", sep="\t")

# Review data
head(tidy, n=10)

