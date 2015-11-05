source("loadData.R")
data <- readData()

png(width = 480,height = 480,bg="transparent", filename = "plot4.png")

par(mfrow=c(2,2))

#upper left plot
with(data,plot(DateTime,Global_active_power,type = "l",xlab = "", ylab="Global Active Power (kilowatts)"))

#upper right plot
with(data,plot(DateTime,Voltage,type = "l",xlab = "datetime", ylab="Voltage"))

#lower left plot
with(data,plot(DateTime,Sub_metering_1, col="black",type = "l",xlab = "", ylab="Energy sub metering"))
with(data,lines(DateTime,Sub_metering_2, col="red",type = "l"))
with(data,lines(DateTime,Sub_metering_3, col="blue",type = "l"))
legend(x = "topright",lwd = 1, legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"))

#lower right plot
with(data,plot(DateTime,Global_reactive_power,type = "l",xlab = "", ylab="Global_reactive_power",))

#cleanup
dev.off()
