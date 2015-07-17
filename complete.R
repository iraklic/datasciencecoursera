complete <- function(directory, id = 1:332)
    {
    for (i in id)
        {
        x <- read.csv(paste(directory, "/", str_pad(i, 3, pad = "0"), ".csv", sep = ""))
        o <- data.frame(id = i, nobs = sum(complete.cases(x)))
        out <- rbind(out, o, stringsAsFactors=FALSE)
        }
    out
    
    }