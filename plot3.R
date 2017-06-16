#plot 3 code
plotData = read.csv("data/household_power_consumption.txt")
datePlotData = plotData[plotData$Date >= as.Date("2007-2-1") & plotData$Date <= as.Date("2007-2-2"),]
datePlotData["Date_Time"] <- as.POSIXct(paste(datePlotData$Date,datePlotData$Time),format="%Y-%m-%d %H:%M:%S")
png("plot3.png", width = 480, height = 480)

plot(datePlotData$Date_Time,as.double(datePlotData$Sub_metering_1), type = "l", ylab = "Energy sub metering", xlab = "", col = "black")
lines(datePlotData$Date_Time,as.double(datePlotData$Sub_metering_3),col="blue")
lines(datePlotData$Date_Time,as.double(datePlotData$Sub_metering_2)/3,col="red")
legend("topright",legend = c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"),col = c("black","red","blue"), lty = 1)
dev.off()