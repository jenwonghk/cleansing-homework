# Import data

x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
volunteer_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
volunteer_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

features <- read.table("./UCI HAR Dataset/features.txt")

library(dplyr)
subject_test <- rename(subject_test, subject=V1)
subject_train <- rename(subject_train, subject=V1)
volunteer_test <- rename(volunteer_test, volunteer=V1)
volunteer_train <- rename(volunteer_train, volunteer=V1)

data <- cbind(volunteer_test, subject_test, x_test)
data1 <- cbind(volunteer_train, subject_train, x_train)

# combine test, train and subject into one big data
data <- rbind(data1, data)


# name the column name of data by features from column 2:562

data_sub <- subset(data[,3:563])
colnames(data_sub) <- features[,2]

data_sub1 <- data[,1:2]

data2 = cbind(data_sub1, data_sub)

# select column name with  volunteer, subject (activity), "mean", "standard deviation" 
data3 <- data2[grepl("volunteer", names(data2)) | grepl("subject", names(data2))|
                 grepl("mean()", names(data2))| grepl("std()", names(data2))]


# rename subject (1 to 6) into meaningful activity name

data4 <- data3

data4$subject <- as.factor(as.character(data4$subject))

library(plyr)
data4$subject <- revalue(data4$subject, c("1"="WALKING", "2"="WALKING_UPSTAIRS", "3"="WALKING_DOWNSTAIRS",
                         "4"="SITTING","5"="STANDING", "6"="LAYING"))


# calculate the mean of each volunteer of each activities on each variable

x = data.frame()
for (j in 1:6) {
  for (i in 1:30){
  x <- rbind(x, colMeans(filter(data3, volunteer==i & subject==j)))
  }
}

colnames(x) <- temp

library(plyr)

x$subject <- as.factor(as.character(x$subject))

x$subject <- revalue(x$subject, c("1"="WALKING", "2"="WALKING_UPSTAIRS", "3"="WALKING_DOWNSTAIRS",
                                          "4"="SITTING","5"="STANDING", "6"="LAYING"))

write.csv(x, "x.csv")





