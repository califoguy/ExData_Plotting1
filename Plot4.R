png(file = "../data/Plot4.png")
reduceddatafile <- "../data/feb2007_data.txt"
plotdata <- read.table(reduceddatafile, sep = ";", header = T, na.strings = "?")
plotdata$Datetime <- strptime(paste(plotdata$Date, plotdata$Time), "%d/%m/%Y %H:%M:%S")
#Define how many plots are needed
par(mfrow = c(2, 2))

# plot 1 (left Top)
plot(plotdata$Datetime, plotdata$Global_active_power, type = "l", ylab = "Global Active Power", xlab = "")

# plot 2 (Right Top)
plot(plotdata$Datetime, plotdata$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")

# plot 3 (Left Lower)
plot(plotdata$Datetime, plotdata$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "", col = "black")
points(plotdata$Datetime, plotdata$Sub_metering_2, type = "l", xlab = "", ylab = "Sub_metering_2", col = "red")
points(plotdata$Datetime, plotdata$Sub_metering_3, type = "l", xlab = "", ylab = "Sub_metering_3", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n", )

# plot 4 (Right Lower)
plot(plotdata$Datetime, plotdata$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power", ylim = c(0, 0.5))
dev.off()