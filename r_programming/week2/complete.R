## reads a directory full of files and reports the number of completely observed cases in each data file
complete <- function(directory, id = 1:332) {
        ## 'directory' is a character verctor of length 1 indicating 
        ## the location of the CSV files.
        
        ## 'id' is an integer vector indicating the monitor IDnumber 
        ## to be used
        
        ## returns the mean of the pollutant across all monitors list
        ## in the 'id' vecort (ignoring NA)
        
        fileNames <- sprintf("%03d.csv", id)
        filePaths <- file.path(directory, fileNames)
        
        resultData <- data.frame(id = id, nobs = 0)
        
        dataFrames <- lapply(filePaths, read.csv)
        
        for(dataFrame in dataFrames) {
                completeDataSubset <- subset(dataFrame, 
                                             select = c("sulfate", "nitrate", "ID"), 
                                             subset = !is.na(sulfate) & !is.na(nitrate))
                resultIndex <- which(resultData$id == completeDataSubset$ID[1])
                resultData$nobs[resultIndex] <- nrow(completeDataSubset)
        }
        resultData
}