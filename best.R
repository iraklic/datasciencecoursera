best <- function(state, outcome)
    {
    ## Read outcome data
    readOut <- read.csv("outcome-of-care-measures.csv")
    ## Check that state and outcome are valid
    if(!is.element(state, readOut$State))
        {
        stop("invalid state")
        }
    ## Return hospital name in that state with lowest 30-day death
    finalOutcome <- ".Rates.from";
    inOutcome <- strsplit(outcome, split = " ")
    inOutcome <- unlist(inOutcome)
    for (i in c(1:length(inOutcome)))
        {
        finalOutcome <-paste(finalOutcome, capitilizeFitstLetter(inOutcome[[i]]), sep = ".")
        }
    baseName <- "Hospital.30.Day.Death..Mortality";
    fullName <- paste(baseName, finalOutcome, sep = ".")
    
    colHospitalName <- which(colnames(readOut) == "Hospital.Name")
    colOutcome <- which(colnames(readOut) == fullName)
    
    
    ## rate
    stateOutcome <- subset(readOut, readOut$State == state, select = c(colHospitalName, colOutcome))
    
    stateOutcome
    stateOutcome
    }

capitilizeFitstLetter <- function(x)
    {
    s <- strsplit(x, " ")[[1]]
    paste(toupper(substring(s, 1, 1)), substring(s, 2),
          sep = "", collapse = " ")
    }