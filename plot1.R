#Plot 1 code
plotData = read.csv("data/household_power_consumption.txt")
datePlotData = plotData[plotData$Date >= as.Date("2007-2-1") & plotData$Date <= as.Date("2007-2-2"),]
datePlotData["Date_Time"] <- as.POSIXct(paste(datePlotData$Date,datePlotData$Time),format="%Y-%m-%d %H:%M:%S")
png("plot1.png", width = 480, height = 480)



par(mfrow=c(1,1))
hist(as.double(datePlotData$Global_active_power)/500, col = "red", xlab = "Global Active Power (kilowatts)",main = "Global Active Power",ylab = "Frequency")

dev.off()