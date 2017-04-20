## Function for ranking hospitals by outcome in a state
rankhospital <- function(csv, state, outcome, num = "best") {
        ## csv is a character vector of length 1 indicating path to source file
        
        ## state is a character vector of length 1 indicating state abbreviation
        
        ## outcome is a character vector of length 1 indicating outcome value
        ## valid values are: 'heart attack', 'heart failure', 'pneumonia'
        
        ## num is a character vector of length 1 indicating ranking of a hospital
        ## num argument can take values “best”, “worst”, or an integer 
        ## indicating the ranking (smaller numbers are better).
        
        ## Return hospital name in that state with the given rank
        ## 30-day death rate
        
        # Read outcome data from csv
        data <- read.csv(csv, colClasses = "character")
        
        outcomeNames <- c('heart attack', 'heart failure', 'pneumonia')
        dataIndexes <- c(11, 17, 23)
        outcomes <- list(name = outcomeNames, index = dataIndexes)
        
        #  Check that state and outcome are valid
        try(if (!(state %in% state.abb)) stop("invalid state"))
        
        outcomeIndex <- match(outcome, outcomes$name)
        try(if (is.na(outcomeIndex)) stop(" invalid outcome"))
        
        try (if (!is.numeric(num) && num != "best" && num != "worst")
                stop(" invalid num"))
        
        dataIndex <- dataIndexes[outcomeIndex]
        dataSubset <- subset(
                data, 
                data[7] == state, 
                select = c(2, dataIndex))
        dataSubset[,2] <- as.numeric(dataSubset[,2])
        
        # Filter rows with NA values.
        dataSubset <- na.omit(dataSubset)
        # Sort rows by rate and hospital name.
        dataSubset <- dataSubset[order(dataSubset[,2], dataSubset[,1]),]
        
        resultRowIndex <- -1
        if (is.numeric(num)) {
                resultRowIndex <- num
        } else if (num == "best") {
                resultRowIndex <- 1
        } else {
                resultRowIndex <- nrow(dataSubset)
        }
        
        if (nrow(dataSubset) < resultRowIndex) {
                return(NA)
        }
        dataSubset[resultRowIndex, 1] 
}
