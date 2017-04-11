## calculates the correlation between sulfate and nitrate for monitor 
## locations where the number of completely observed cases (on all variables)
## is greater than the threshold
corr <- function(directory, threshold = 0) {
        ## 'directory' is a character verctor of length 1 indicating 
        ## the location of the CSV files.
        
        ## 'threshold' is a numeric vector of length 1 indicating the number
        ## of completely observed observations (on all variables) required
        ## to compute the correlation between nitrate and sulfate;
        ## default value is 0
        
        ## returns a numeric vector of correlations
        
        files <- list.files(directory, pattern = ".csv", full.names = TRUE)
        
        correlations <- numeric()
        for (file in files) {
                fileData <- read.csv(file)
                completeDataSubset <- subset(fileData, 
                                             select = c("sulfate", "nitrate"), 
                                             subset = !is.na(sulfate) & !is.na(nitrate))
                                
                if (nrow(completeDataSubset) > threshold) {
                        correlation <- cor(x = fileData$nitrate, y = fileData$sulfate, use = "pairwise.complete.obs")
                        correlations <- append(correlations, correlation)
                }
        }
        
        correlations
}