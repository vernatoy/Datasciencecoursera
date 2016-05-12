columnmean <- function(y, na.rm = TRUE) {
        nc <- ncol(y)
        means <- numeric(nc)
        for(i in 1:nc) {
                means[i] <- mean(y[,i], na.rm = removeNA)
        }
        means
}
columnmean(mydata)

temp = list.files(pattern = "*.csv")
myfiles = lapply(temp, read.csv, header = TRUE)
sulfate <- mean(,x, rm.na = TRUE)
nitrate <- mean(,,y, rm.na = TRUE)
sulfate
nitrate
pollutantmean <- function(directory, pollutant, id = 1:332) {
        all_files <- list.files(directory, full.names = TRUE)
        dat <- data.frame()
        for(i in id) {
                dat <- rbind(dat, read.csv(all_files[i]))
        }
        ds <- (dat[, pollutant], na.rm = TRUE)
        mean(ds[ ,pollutant])
}

