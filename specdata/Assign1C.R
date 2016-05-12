## Assignment #1 - Part 1
pollutantmean <- function(directory, pollutant, id = 1:332) {
        path = directory
        #create a data frame for files
        mydata <- data.frame()
        #read the list of files from wd 
        filenames<- list.files(directory, full.names = TRUE)
        
        for (i in id) {
          mydata <- rbind(mydata, read.csv(filenames[i]))
          
        }
        mean(mydata[, pollutant], na.rm = TRUE)
}

##Part 2
complete<- function(directory, id = 1:332) {
  path = directory
  findat<- data.frame()
  filenames<-(list.files(directory,full.names = TRUE))
  
  for (i in id) {
    mydat<- read.csv(filenames[i])
    nobs<-sum(complete.cases(mydat))
    tempdata<-data.frame(i,nobs)
    findat<-rbind(findat,tempdata)
    
  }
  colnames(findat)<- c("id", "nobs")
  findat
  
}
                
       
        
      
  
  
    





