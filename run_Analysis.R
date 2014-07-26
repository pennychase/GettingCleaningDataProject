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

cleanData <- function (dataSet) {

  # Read in the subject variable
  subject <- as.integer(readLines(makeFilename(dataSet, "subject")))
  
  # Read in the activity variable
  activity <- as.integer(readLines(makeFilename(dataSet, "activity")))
  
  # Read in the measures
  measures <- read.table(makeFilename(dataSet, "measures"))
  
  # Read in the activity labels
  activitiesPath <- paste(baseDirectory, "activity_labels.txt", sep="/")
  activities <- read.table(activitiesPath, col.names=c("id", "label"), stringsAsFactors=FALSE)
  
  # Make sure the labels are ordered by ID, not order in file
  activities <- activities[order(activities$id),]  
  mapping <- as.list(tolower(activities$label))
    
  # And create a new variable of activty labels by applying the mapping to the activity variable
  activityLabel <- as.factor(sapply(activity, function(x) { mapping[[x]] }))
  
  
  fullData <- cbind(subject, activity, activityLabel, measures)
}