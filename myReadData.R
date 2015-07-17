readData <- function (directory = "specdata", id = 1:332)
    {
    for (i in id)
        {
        x <- rbind(read.csv(paste(directory, "/", str_pad(i, 3, pad = "0"), ".csv", sep = "")))
        name <- paste(directory, "/", str_pad(i, 3, pad = "0"), ".csv", sep = "")
        print(name)
        }
    x
    }