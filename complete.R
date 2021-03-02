setwd("C:/Users/user/Desktop/coursera/rprog_data_specdata")
complete <- function(directory, id = 1:332){
  ##directory <- paste("C:/Users/user/Desktop/coursera/rprog_data_specdata/",directory, sep = "", collapse = "")
  ## use na.omit()
  empty_data <- data.frame()
  file <- list.files(directory, full.names = TRUE)
  for(i in id){
    temp <- read.csv(file[i])
    ## eliminating NAs
    temp <- na.omit(temp)
    ##counting number of rows 
    nobs <- nrow(temp)
    empty_data <- rbind(empty_data,data.frame(i,nobs))
  }
  names(empty_data) <- c("id","nobs")
  empty_data
}