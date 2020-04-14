##completeness of time

specdata <- "C:/Users/pdpat/Documents/Nicole/testing/specdata"

##My function to return complete cases

complete <- function(directory, id = 1:332) {
      filelist <- list.files(path = directory, pattern = "*.csv", full.names = TRUE)
      nobs <- numeric()
      
      for(k in id) {
            mydata <- read.csv(filelist[k])
            sum_data <- sum(complete.cases(mydata))
            nobs <- c(nobs, sum_data)
      }
      data.frame(id, nobs)
}

##Test cases:
complete(specdata)

complete(specdata, 1)

complete(specdata, c(2,4,8,10,12))

complete(specdata, 30:25)

complete(specdata, 3)

##END
