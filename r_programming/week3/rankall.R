## Function for ranking hospitals in all states
rankall <- function(csv, outcome, num = "best") {
        ## csv is a character vector of length 1 indicating path to source file
        
        ## outcome is a character vector of length 1 indicating outcome value
        ## valid values are: 'heart attack', 'heart failure', 'pneumonia'
        
        ## num is a character vector of length 1 indicating ranking of a hospital
        ## num argument can take values “best”, “worst”, or an integer 
        ## indicating the ranking (smaller numbers are better).
        
        ## Return a data frame with the hospital names and the
        ## (abbreviated) state name
        
        # Read outcome data from csv
        data <- read.csv(csv, colClasses = "character")
        
        outcomeNames <- c('heart attack', 'heart failure', 'pneumonia')
        dataIndexes <- c(11, 17, 23)
        outcomes <- list(name = outcomeNames, index = dataIndexes)
        
        outcomeIndex <- match(outcome, outcomes$name)
        try(if (is.na(outcomeIndex)) stop(" invalid outcome"))
        
        try (if (!is.numeric(num) && num != "best" && num != "worst")
                stop(" invalid num"))
        
        dataIndex <- dataIndexes[outcomeIndex]
        dataSubset <- data[, c(2, dataIndex, 7)]
        
        # Coerce rate values to numeric.
        dataSubset[,2] <- as.numeric(dataSubset[,2])
        
        # Filter rows with NA values.
        dataSubset <- na.omit(dataSubset)
        
        result <- data.frame("State" = character(), "Hospital" = character(), 
                             stringsAsFactors = FALSE)
        
        for (state in state.abb) {
                stateSubset <- subset(dataSubset,
                                      dataSubset[3] == state)
                # Sort rows by rate and hospital name.
                stateSubset <- stateSubset[order(stateSubset[,2], stateSubset[,1]),]
                
                stateRowIndex <- -1
                if (is.numeric(num)) {
                        stateRowIndex <- num
                } else if (num == "best") {
                        stateRowIndex <- 1
                } else {
                        stateRowIndex <- nrow(stateSubset)
                }
                
                hospitalName <- NA
                if (nrow(stateSubset) >= stateRowIndex) {
                        hospitalName <- stateSubset[stateRowIndex, 1]
                }
                
                result <- rbind(result, 
                                list("State" = state, "Hospital" = hospitalName),
                                stringsAsFactors = FALSE)
        }
        
        result[order(result[,1]),]
}