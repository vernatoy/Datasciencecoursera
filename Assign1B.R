ID <- list.files()

mydata <- data.frame()

for (file in ID[1:34]){

        if (!exists("mydata")){
                mydata <- read.table(file, header=TRUE, sep=",")
        }
        
        # if the merged dataset does exist, append to it
        
        if (exists("mydata")){
                temp_dataset <-read.table(file, header=TRUE, sep=",", strip.white = TRUE)
                mydata<-rbind(mydata, temp_dataset)
                rm(temp_dataset)
        }
}

cleandata<-na.omit(mydata)

Sulfate <- mean(cleandata$sulfate)
Nitrate <- mean(cleandata$nitrate)
#print("pollutantmean", "specdata")
Nitrate
Sulfate


