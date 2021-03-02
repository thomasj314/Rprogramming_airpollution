setwd("C:/Users/user/Desktop/coursera/rprog_data_specdata")

corr <- function(directory,threshold = 1){
  file <- list.files(directory, full.names = TRUE)
  ## making empty vector
  empty_data <- vector(mode = "numeric", length = 0)
  for(i in 1:length(file)){
    temp <- read.csv(file[i])
    ##removing NAs
    temp<- temp[complete.cases(temp),]
    sum <- nrow(temp)
    if(sum > threshold){
      empty_data <- c(empty_data,cor(temp$sulfate,temp$nitrate))
    }
  }
  empty_data
}