pollutantmean <- function(directory = "specdata", pollutant, id = 1:332)
    {
#   Loading data
    for (i in id)
        x <- rbind(x, read.csv(paste(directory, "/", str_pad(i, 3, pad = "0"), ".csv", sep = ""), stringsAsFactors=FALSE))

#   Calculating the mean
    mean <- mean(x[[pollutant]][!is.na(x[[pollutant]])])
    
#   returning the calculated mean
    mean

    }