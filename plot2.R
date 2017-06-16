#Plot 2 code
plotData = read.csv("data/household_power_consumption.txt")
datePlotData = plotData[plotData$Date >= as.Date("2007-2-1") & plotData$Date <= as.Date("2007-2-2"),]
datePlotData["Date_Time"] <- as.POSIXct(paste(datePlotData$Date,datePlotData$Time),format="%Y-%m-%d %H:%M:%S")
png("plot2.png", width = 480, height = 480)

plot(datePlotData$Date_Time,as.double(datePlotData$Global_active_power)/500, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "", col = "black")
dev.off()