##programming assignment

print(R.version.string)

##Set working directory to "specdata" folder

specdata <- "C:/Users/pdpat/Documents/Nicole/testing/specdata"

##How to get pollution Means

pollutantmean <- function(directory, pollutant, id = 1:332) {
        filelist <- list.files(path = directory, pattern = "*.csv", full.names = TRUE)
        my_values <- numeric()
        
        for(k in id) {
                mydata <- read.csv(filelist[k])
                my_values <- c(my_values, mydata[[pollutant]])
        }
        mean(my_values, na.rm = TRUE)
}

##Testing out result

pollutantmean(specdata, "sulfate", 1:10)

pollutantmean(specdata, "nitrate", 70:72)

pollutantmean(specdata, "nitrate", 23)

## END