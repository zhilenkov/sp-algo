handleblock <- function(df){
    if(sum(df$WD) <= 1){
        return(df)
    }
    subdf <- df[,-c(1, 2, ncol(df)-1, ncol(df))]
    prox <- subdf
    prox$idx <- 1:nrow(df)
    prox$sums <- rowSums(subdf)
    prox <- prox[order(-prox$sums),]
    
}

if(!require(lubridate)){
    install.packages("lubridate")
    library(lubridate)
}

df <- read.csv("C:/Users/dv.zhilenkov/Desktop/SmtGoodCanWork/Yan/Shipment/Cars.csv", header = T, sep = ";")
dw <- read.csv("C:/Users/dv.zhilenkov/Desktop/SmtGoodCanWork/Yan/Shipment/Wagons.csv", header = T, sep = ";")

df$date <- as.Date(df$date, "%d.%m.%Y")
df$numweek <- week(df$date)
df$year <- year(df$date)

unique(df$year)

proxdf <- df[df$numweek == 4, ]
handleblock(as.data.frame(c(1,1)))

#for(i in unique(df$year)){
  
  #1
#  proxdf <- df[df$year == i, ]
  
#  for(j in unique(proxdf$numweek)){
    
    #2
#    wk <- proxdf[proxdf$numweek == j, ]
#    print(nrow(wk))
    #2
    
#  }
  
  #1
  
#}