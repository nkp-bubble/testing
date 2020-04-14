##Correlation of Sulfate and Nitrate

specdata <- "C:/Users/pdpat/Documents/Nicole/testing/specdata"
source('C:/Users/pdpat/Documents/Nicole/testing/completecases.R')

##My corr function

corr <- function(directory, threshold = 0) {
    filelist <- list.files(path = directory, pattern = "*.csv", full.names = TRUE)
    cdata <- complete(directory)
    coe_res <- numeric()
  
    for(i in 1:nrow(cdata)) {
        
        if(cdata[i, 2] >= threshold) {
          mydata <- na.omit(read.csv(filelist[i])) ##omits cases (rows) that have na in them.
          coe_data <- cor(mydata$sulfate, mydata$nitrate)
          coe_res <- c(coe_res, coe_data)
        }
    }
    coe_res
}

##coursera examples to test function

cr <- corr(specdata, 150)
head(cr)
summary(cr)

cr <- corr(specdata, 400)
head(cr)
summary(cr)

cr <- corr(specdata, 5000)
length(cr)

cr <- corr(specdata)
summary(cr)
length(cr)

##END