## Function for finding the best hospital in a state
best <- function(csv, state, outcome) {
        ## csv is a character vector of length 1 indicating path to source file
        
        ## state is a character vector of length 1 indicating state abbreviation
        
        ## outcome is a character vector of length 1 indicating outcome value
        ## valid values are: 'heart attack', 'heart failure', 'pneumonia'
        
        ## Return hospital name in that state with lowest 30-day death rate
        
        # Read outcome data from csv
        data <- read.csv(csv, colClasses = "character")
        
        outcomeNames <- c('heart attack', 'heart failure', 'pneumonia')
        dataIndexes <- c(11, 17, 23)
        outcomes <- list(name = outcomeNames, index = dataIndexes)
        
        #  Check that state and outcome are valid
        try(if (!(state %in% state.abb)) stop("invalid state"))
        
        outcomeIndex <- match(outcome, outcomes$name)
        try(if (is.na(outcomeIndex)) stop(" invalid outcome"))
        
        dataIndex <- dataIndexes[outcomeIndex]
        dataSubset <- subset(
                data, 
                data[7] == state, 
                select = c(2, dataIndex))
        resultRow <- dataSubset[which.min(dataSubset[, 2]),]
        resultRow[1,1]
}