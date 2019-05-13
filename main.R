if(!require(lubridate)){
    install.packages("lubridate")
    library(lubridate)
}

source("get_sub_df.R")

df <- read.csv("Cars.csv", header = T, sep = ";")
dw <- read.csv("Wagons.csv", header = T, sep = ";")

df$date <- as.Date(df$date, "%d.%m.%Y")
df$numweek <- week(df$date)
df$year <- year(df$date)

