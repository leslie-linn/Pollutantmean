pollutantmean <- function(directory, pollutant, id=1:332) {  
        x <- id  
        y <- list.files(path= directory, full.names= TRUE)
        z <- y[x]
        dat <- data.frame()
        for(i in x) {    
                dat <- rbind( dat,read.csv(y[i]))
        }  
        if (pollutant == "sulfate") {    
                print(mean(dat$sulfate, na.rm = TRUE))  
        } else {    
                print(mean(dat$nitrate, na.rm = TRUE))
        }
}

