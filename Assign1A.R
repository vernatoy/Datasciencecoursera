file_list <- list.files()

mydata <- data.frame()

for (file in file_list){
#for (i in 1:322) {
        
        # if the merged dataset doesn't exist, create it
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

mean(cleandata$sulfate, na.rm = TRUE): mean(cleandata$nitrate, na.rm = TRUE)



