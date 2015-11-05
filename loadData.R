library(dplyr)
library(lubridate)

readData <- function () {
tbl_df(read.table("household_power_consumption.txt",stringsAsFactors = FALSE,sep=";",header = TRUE,na.strings = "?")) %>% 
     mutate(
               TypedDate = as.Date(strptime(Date,"%d/%m/%Y")),
               DateTime  = dmy_hms(paste(Date, Time)),
               DOW       = weekdays(TypedDate)) %>%
     filter( between(TypedDate, as.Date('2007-02-01'),as.Date('2007-02-02')))
}
