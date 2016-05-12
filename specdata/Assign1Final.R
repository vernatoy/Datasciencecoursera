## ASSIGNMENT #1 - PART 1

pollutantmean <- function(directory, pollutant, id = 1:332) {
        path = directory
        
##create a data frame for files
        mydata <- data.frame()
        
##read the list of files from wd 
        filenames<- list.files(directory, full.names = TRUE)
        
##read the files and put them together into one dataset, 'mydata'
        for (i in id) {
          mydata <- rbind(mydata, read.csv(filenames[i]))
          
        }
##Find the mean of the pollutant
        mean(mydata[, pollutant], na.rm = TRUE)
}

##PART 2 - Number of Complete observations for each file

complete<- function(directory, id = 1:332) {
  path = directory
  findat<- data.frame()
  
##Get list files to read into a dataframe
  filenames<-(list.files(directory,full.names = TRUE))
  
##Find the number of complete cases in each file  
  for (i in id) {
    mydat<- read.csv(filenames[i])
    nobs<-sum(complete.cases(mydat))
    tempdata<-data.frame(i,nobs)
    findat<-rbind(findat,tempdata)
    
  }
  colnames(findat)<- c("id", "nobs")
  findat
  
}

## Part 3 -                 
corr <- function(directory, threshold = 0){
  
  path = directory
  correls<-numeric(0)

##Get list of files to read
  filenames<- list.files(directory, full.names = TRUE)
 
##read files and find number of comlete cases in each file   
  for(i in 1:332){
      polli<- read.csv(filenames[i])
      polli_total<-sum(complete.cases(polli))
      
##Compare files to threshold to determine if we will compute the correlations on this file
##If yeas we'll do the computation and add the result to a vector 'correls'
      if(polli_total > threshold){
      correls<- c(correls, cor(polli$sulfate, polli$nitrate, use = "complete.obs"))
      }
      
  } 
##This will return just the head of the correls file 
  return(head(correls))

}   
        


 





