## calculates the mean of a pollutant (sulfate or nitrate) across a specified list of monitors.
pollutantmean <- function(directory, pollutant, id = 1:332) {
        ## 'directory' is a character verctor of length 1 indicating 
        ## the location of the CSV files.
        
        ## 'pollutant' is a character vector of lenght 1 indicating 
        ## a name of pollutant for which we calculate the mean.
        ## either "sulfate" or "nitrate"
        
        ## 'id' is an integer vector indicating the monitor IDnumber 
        ## to be used
        
        ## returns the mean of the pollutant across all monitors list
        ## in the 'id' vecort (ignoring NA)
        
        fileNames <- sprintf("%03d.csv", id)
        filePaths <- file.path(directory, fileNames)
        
        data <- do.call(rbind, lapply(filePaths, read.csv))
        mean(data[[pollutant]], na.rm = TRUE)
}