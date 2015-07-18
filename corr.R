corr <- function(directory, threshold = 0)
        {
        out <- c()
        id <- 1:332
        for (i in id)
            {
            x <- read.csv(paste(directory, "/", str_pad(i, 3, pad = "0"), ".csv", sep = ""))
            if (sum(complete.cases(x)) > threshold)
                {
                clean <- x[complete.cases(x),]
                out <- c(out, cor(clean$sulfate, clean$nitrate))
                }
            }
        out
        }