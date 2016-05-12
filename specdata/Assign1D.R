
pollutantmean <- function(directory = specdata, pollutant, id = 1:322) {

        #create a data frame for files
        mydata <- data.frame()
        #read the list of files from wd 
        specs<- c("specdata", pollutant, ID)
        filenames<- list.files(full.names = TRUE)
        print(filenames)
        for (i in id) {
          mydata <- rbind(mydata, read.csv(filenames[i]))
          
        }
        
}
                
        #Omit NAs from mydata        
        #cleandata<- na.omit(mydata)
        #names(cleandata)
        #attach(cleandata)
        
      
  
  
    





