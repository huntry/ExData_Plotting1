source("loadData.R")
data <- readData()

png(width = 480,height = 480,bg="transparent", filename = "plot2.png")

with(data,plot(DateTime,Global_active_power,type = "l",xlab = "", ylab="Global Active Power (kilowatts)"))

dev.off()


