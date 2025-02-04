# The submitted data set is tidy.
# The Github repo contains the required scripts.
# GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
# The README that explains the analysis files is clear and understandable.

# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement.
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names.
# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# set wd to where the UCI HAR Dataset is located
wd <- "/home/skim52/coursera/get-clean-data/get-clean-data/UCI HAR Dataset/"
# training data
train <- read.table(paste(wd, "train/X_train.txt", sep=""))
# testing data
test <- read.table(paste(wd, "test/X_test.txt", sep=""))
# merge training and testing data
merged <- rbind(train, test)
# these are where mean and std are located
keep <- c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202,
          214:215, 227:228, 240:241, 253:254, 266:271, 345:350,
          424:429, 503:504, 516:517, 529:530, 542:543)
meansd <- merged[, keep]
# label the dataset
namedf <- read.table(paste(wd, "features.txt", sep=""))
names(meansd) <- namedf[keep, 2]
# remove special characters
names(meansd) <- gsub("[^[:alnum:]]", "", names(meansd))

# label for activity ID
trainL <- read.table(paste(wd, "train/y_train.txt", sep=""))
testL <- read.table(paste(wd, "test/y_test.txt", sep=""))
mergeL <- rbind(trainL, testL)
names(mergeL) <- "Activity"

# label for subject ID
trainS <- read.table(paste(wd, "train/subject_train.txt", sep=""))
testS <- read.table(paste(wd, "test/subject_test.txt", sep=""))
mergeS <- rbind(trainS, testS)
names(mergeS) <- "Subject"

# combine data for mean/SD with activity and subject labels
merged2 <- cbind(meansd, mergeL, mergeS)

# find averages
merged3 <- data.frame(matrix(,nrow=0, ncol=dim(merged2)[2]))
names(merged3) <- names(merged2)

for (a in unique(merged2$Activity)) {
  for (b in unique(merged2$Subject)) {
    tmp <- subset(merged2, Activity==a & Subject==b)
    tmp1 <- tmp[1,]
    for (i in 2:dim(tmp)[1]) {
      tmp1 <- tmp1 + tmp[i,]
    }
    tmp1 <- tmp1 / dim(tmp)[1]
    merged3 <- rbind(merged3, tmp1)
  }
}

# give the activities better labels
merged3$Activity <- ordered(merged3$Activity, levels = c(1,2,3,4,5,6), labels = c("Walking", "WalkingUpstairs", "WalkingDownstairs", "Sitting", "Standing", "Laying"))

# create separate data frames to use for exporting data files later
# activity <- data.frame()
# for (v in 1:66) {
#   tmp <- data.frame(tapply(merged2[,v], merged2$Activity, mean))
#   names(tmp) <- names(merged2)[v]
#   if (nrow(activity) == 0) {
#     activity <- tmp
#   }
#   else {
#     activity <- cbind(activity, tmp)
#   }
# }
# row.names(activity) <- c("Walking", "WalkingUpstairs", "WalkingDownstairs", "Sitting", "Standing", "Laying")

# subject <- data.frame()
# for (v in 1:66) {
#   tmp <- data.frame(tapply(merged2[,v], merged2$Subject, mean))
#   names(tmp) <- names(merged2)[v]
#   if (nrow(subject) == 0) {
#     subject <- tmp
#   }
#   else {
#     subject <- cbind(subject, tmp)
#   }
# }

# write txt files with data
write.table(merged3, file = paste(wd, "../mean-sd.txt", sep=""), sep = " ", row.names = FALSE, col.names = FALSE)
# write.table(activity, file = paste(wd, "../mean_activity.txt", sep=""), sep = " ", row.names = FALSE, col.names = FALSE)
# write.table(subject, file = paste(wd, "../mean_subject.txt", sep=""), sep = " ", row.names = FALSE, col.names = FALSE)
