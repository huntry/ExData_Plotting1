source("loadData.R")
data <- readData()

png(width = 480,height = 480,bg="transparent", filename = "plot3.png")
with(data,plot(DateTime,Sub_metering_1, col="black",type = "l",xlab = "", ylab="Energy sub metering"))
with(data,lines(DateTime,Sub_metering_2, col="red",type = "l"))
with(data,lines(DateTime,Sub_metering_3, col="blue",type = "l"))

legend(x = "topright",lwd = 1, legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"))
dev.off()
