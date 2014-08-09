#####
##### run_Analysis.R
#####
##### Creates a tidy data set from the "Human Activities Recognition Using Smartphones Dataset v.1"
#####
##### Defines utility functions: makeFilename(), cleanNames(), and prepareData()
#####
##### The body of the script does the following: 
#####   1. Calls prepareData() on the train and test datasets to create tidy data frames
#####   2. Merges the train and test data frames
#####   3. Subsets the mean and standard deviation variables from the merged data frame
#####   4. Computes the means and standard deviations of all the variables in the subset
#####      by subject and activity
#####   5. Writes the data frame to files that can be read into R
#####


# Set the working directory
setwd("~/Documents/MOOCs/Data Science Specialization/Course3_Cleaning-Data/Project")
# baseDirectory is the directory where the UCI HAR data is located
baseDirectory <- "./UCI HAR Dataset"

##
## makeFilename creates the full pathname of one of the data sets
## Arguments: dataSet is "test" or "train" 
##            ftype is the file type, one of "subject", "activity", "measures"
makeFilename <- function (dataSet, ftype) {
  
  # mapping maps ftype to the string used in the UCI HAR filenames for the different types of files
  mapping <- list(subject = "subject", activity = "y", measures = "X")
  
  # The data files are named Z_dataset.txt, where Z is one of X, y, subject and  dataset is one of test, train
  fname <- paste( paste( mapping[[ftype]], dataSet, sep ="_"), "txt", sep=".")
  fullpath <- paste(baseDirectory, dataSet, fname, sep="/")
}

##
## cleanNames cleans up the variable names by removing special characters, spelling out some
## abbreviations, and separating portions of long variable names. We don't handle all situations
## because most of the variables won't be used in our final tidy data set.
## 
cleanNames <- function(varnames) {
  
  # splitandjoin is a helper function to use in an sapply()
  # It splits a variable name into the parts separated by "-",
  # removes the parentheses in the second part (which is the summary function call),
  # and rejoins the parts separated by "."
  splitandjoin <- function(varname) {
    strs <- strsplit(varname, "-")   # Creates a list of one element, a vector of strings
    strs[[1]][2] <- sub("\\(\\)", "", strs[[1]][2])
    paste(unlist(strs), collapse=".")
  }
  
  cleaned <- varnames
  
  # inital t --> time
  cleaned <- sapply(cleaned, function(x) { sub("^t", "time.", x) })
  
  # inital f --> freq
  cleaned <- sapply(cleaned, function(x) { sub("^f", "freq.", x) })
  
  # Acc --> Accel (makes it more obvious that the variable is accelerometer data)
  cleaned <- sapply(cleaned, function(x) { sub("Acc", "Accel", x) })
  
  # BodyBody --> Body (most likely a coding error)
  cleaned <- sapply(cleaned, function(x) { sub("BodyBody", "Body", x) })
  
  # delete the () in the function call parts of the variable names
  cleaned <- sapply(cleaned, splitandjoin)
}


##
## prepareData prepares a dataset by joining the subject and activity variables with the measures. It also
## ensures that all the variables have descriptive and cleaned-up names
## Arguments: dataSet is "test" or "train"
prepareData <- function (dataSet) {

  ##
  ## Read in the components of the data set (spread across three files)
  ##
  # Read in the subject variable
  subject <- as.integer(readLines(makeFilename(dataSet, "subject")))  
  # Read in the activity variable
  activity <- as.integer(readLines(makeFilename(dataSet, "activity"))) 
  # Read in the measures
  measures <- read.table(makeFilename(dataSet, "measures"))
  
  ##
  ## Provide descriptive variable names for the measures
  ##
  features <- read.table(paste(baseDirectory, "features.txt", sep="/"), stringsAsFactors=FALSE, col.names=c("id", "label"))
  colnames(measures) <- cleanNames(features$label)
  
  ##
  ## Provide descriptive activity names from activity_labels.txt
  ##
  # Read in the activity labels
  activitiesPath <- paste(baseDirectory, "activity_labels.txt", sep="/")
  activities <- read.table(activitiesPath, col.names=c("id", "label"), stringsAsFactors=FALSE)  
  # Make sure the labels are ordered by ID, not the order in file
  activities <- activities[order(activities$id),]       
  # Convert activity to a factor using activities as the levels
  activity <- as.factor(activity)
  levels(activity) <- tolower(activities$label)
  
  # Create the full data frame
  fullData <- cbind(subject, activity, measures)
}

#####
#####   Main Part of Script
#####

# Use the doBy library to split-apply-combine
library(doBy)

# Create the tidy train and test data frames
train <- prepareData("train")
test <- prepareData("test")

# Merge the train and test data frames into a single tidy data set
merged <- rbind(train, test)

# Create a subset of the variables that are means and standard deviations
# According to the code book (features_info.txt), means and standard deviations were estimated for
# the variables computed from the raw signals. These all contain "mean()" and "std()" in their names. 
# Additional vectors were obtained by averaging the raw signals, and although "Mean" appears in 
# those variable names, these estimated with a statistical mean function (and they don't have a 
# corresponding standard deviation), so they aren't included in the subset.

# After the variable name cleaning, the variable names that are means and standard deviations either 
# include ".mean" or ".std" within the name; or "mean" or "std" is at the end of the name. Use that
# pattern to create an index to subset the data frame.
index <- grep("\\.mean\\.|\\.mean$|\\.std\\.|\\.std$", names(merged))
# Subset the data frame using index and also include the subject and activity variables
mergedSubset <- merged[c(1, 2, index)]

# Use summaryBy() from the doBy package to compute the mean and standard deviation of each variable
# grouping forst by subject and then activity, and create a new data set.
# Specify the splitting using forumla notation: . ~ subject+activity  This means group all variables
# (that's indicated by ".") first by subject and then activity.
# FUN is the function to apply and it's a vector of functions to apply to each variable
tidyData <- summaryBy(. ~ subject+activity, data=mergedSubset, FUN=function(x) c(mean=mean(x), std=sd(x)))

# Write the tidy data set in read.table and csv formats
write.table(tidyData, "tidyData.txt")
write.csv(tidyData, "tidyData.csv")


####
#### Post Submission
####

## I misread the instructions and didn't realize I only needed to compute the means of the variables
## Given that, I could have used melt and dcast after creating the merged subset
library(reshape2)

melted <- melt(mergedSubset, id=c("subject", "activity"))
avgs <- dcast(melted, subject+activity ~ variable, fun.aggregate=mean)

write.table(avgs, "tidyData2.txt")
write.csv(avgs, "tidyData2.csv")


