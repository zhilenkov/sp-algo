load_stuff <- function(){
    # Загрузка необходимых библиотек и данных
    
    if(!require(lubridate)){
        install.packages("lubridate")
        library(lubridate)
    }
    
    source("get_sub_df.R")
    
    df <- read.csv("C:/Users/dv.zhilenkov/Desktop/SmtGoodCanWork/Yan/Shipment/Cars.csv", header = T, sep = ";")
    dw <- read.csv("C:/Users/dv.zhilenkov/Desktop/SmtGoodCanWork/Yan/Shipment/Wagons.csv", header = T, sep = ";")
    
    df$date <- as.Date(df$date, "%d.%m.%Y")
    df$numweek <- week(df$date)
    df$year <- year(df$date)
    
    print("All data is loaded")
}