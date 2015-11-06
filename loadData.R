library(dplyr)
library(lubridate)

readData <- function () {
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile="exdata_data_household_power_consumption.zip")
tbl_df(read.table(unz("exdata_data_household_power_consumption.zip","household_power_consumption.txt"),stringsAsFactors = FALSE,sep=";",header = TRUE,na.strings = "?")) %>% 
     mutate(
               TypedDate = as.Date(strptime(Date,"%d/%m/%Y")),
               DateTime  = dmy_hms(paste(Date, Time)),
               DOW       = weekdays(TypedDate)) %>%
     filter( between(TypedDate, as.Date('2007-02-01'),as.Date('2007-02-02')))
}