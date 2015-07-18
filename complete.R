complete <- function(directory, id = 1:332)
    {
    out <- data.frame(id = numeric(), nobs = numeric())
    for (i in id)
        {
        x <- read.csv(paste(directory, "/", str_pad(i, 3, pad = "0"), ".csv", sep = ""))
        out <- rbind(out, data.frame(id = i, nobs = sum(complete.cases(x))))
        }
    out
    }