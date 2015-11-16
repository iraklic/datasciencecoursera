library(stringr)
pollutantmean <- function(directory = "specdata", pollutant, id = 1:332)
    {
    completeDataSet <- data.frame()
#   Loading data
    for (i in id)
        completeDataSet <- rbind(completeDataSet, read.csv(paste(directory, "/", str_pad(i, 3, pad = "0"), ".csv", sep = ""), stringsAsFactors=FALSE))

#   Calculating the mean
    m <- mean(completeDataSet[[pollutant]], na.rm = TRUE)
    
#   returning the calculated mean
    m
    }