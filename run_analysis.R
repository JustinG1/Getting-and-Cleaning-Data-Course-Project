##STEP 0: LOAD stringr PACKAGE AS IT IS NEEDED FOR ANALYSIS TO RUN
library(stringr)

##STEP 1: READ IN ALL THE TXT FILES REQUIRED. NOTE: THIS WILL ONLY WORK IFF THE FOLDER "UCI HAR Dataset" IS IN THE WORKING DIRECTORY AND IS NOT THE DIRECTORY ITSELF:
xtrain <- read.table("UCI HAR Dataset\\train\\X_train.txt")
ytrain <- read.table("UCI HAR Dataset\\train\\y_train.txt")
subtrain <- read.table("UCI HAR Dataset\\train\\subject_train.txt")
xtest <- read.table("UCI HAR Dataset\\test\\X_test.txt")
ytest <- read.table("UCI HAR Dataset\\test\\y_test.txt")
subtest <- read.table("UCI HAR Dataset\\test\\subject_test.txt")
feat <- read.table("UCI HAR Dataset\\features.txt")
activity <- read.table("UCI HAR Dataset\\activity_labels.txt")

##STEP 2: SUBSET TO INCLUDE ONLY MEAN AND STANDARD DEVIATION MEASURES
xtest <- xtest[,grepl("mean|std",feat$V2)]
xtrain <- xtrain[,grepl("mean|std",feat$V2)]
feat <- feat[grepl("mean|std",feat$V2),]

##STEP 3: PREPARE THE FEATURE FILE WITH PROPER COLUMN NAMES FOR THE DATASET
feat2 <- as.character(feat$V2)
feat2 <- tolower(feat2)
feat2 <- str_replace_all(feat2, "-", "")
feat2 <- str_replace_all(feat2, "acc", "acceleration")
feat2 <- str_replace_all(feat2, "mag", "magnitude")
feat2 <- str_replace_all(feat2, "fbody", "frequencybody")
feat2 <- str_replace_all(feat2, "tbody", "timebody")
feat2 <- str_replace_all(feat2, "fgravity", "frequencygravity")
feat2 <- str_replace_all(feat2, "tgravity", "timegravity")
feat2 <- str_replace_all(feat2, "gyro", "gyroscopic")
feat2 <- str_replace_all(feat2, "bodybody", "body")
feat2 <- str_replace_all(feat2, "std", "standarddeviation")
feat2 <- str_replace_all (feat2, "\\(|\\)","")

##STEP 4: ASSIGN MODIFIED FEATURE TABLE AS THE COLUMN NAMES OF THE X-FILES AND GIVE APPROPRIATE COLUMN NAMES TO THE Y AND SUBJECT FILES
colnames(xtrain) <- feat2
colnames(xtest) <- feat2
colnames(ytest) <- c("activities")
colnames(ytrain) <- c("activities")
colnames(subtest) <- c("subjectid")
colnames(subtrain) <- c("subjectid")

##STEP 5: MERGE THE TRAIN FILES WITH THE TEST FILES TO CREATE MERGED SETS
xTotal <- rbind(xtrain,xtest) 
yTotal <- rbind(ytrain,ytest)
subTotal <- rbind(subtrain,subtest)

##STEP 6: REPLACE THE NUMERIC VALUES OF THE ACTIVITIES WITH MORE DESCRIPTIVE VALUES
yTotal[yTotal$activities == 1,] <- "walking"
yTotal[yTotal$activities == 2,] <- "walkingupstairs"
yTotal[yTotal$activities == 3,] <- "walkingdownstairs"
yTotal[yTotal$activities == 4,] <- "sitting"
yTotal[yTotal$activities == 5,] <- "standing"
yTotal[yTotal$activities == 6,] <- "laying"

##STEP 7: MERGE ALL INTO ONE SET
xydata <- cbind(subTotal, yTotal, xTotal)

##STEP 8: FIND THE MEAN FOR EACH VARIABLE, GROUPING BY THE SUBJECTID AND ACTIVITIES COLUMNS
tidydata <- aggregate(. ~ subjectid + activities, data=xydata, FUN = mean)

##STEP 9: WRITE DATA TO FILE
write.table(tidydata, file = "tidydata.txt", row.name=FALSE)

