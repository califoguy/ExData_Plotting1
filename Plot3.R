png(file = "../data/Plot3.png")
reduceddatafile <- "../data/feb2007_data.txt"
plotdata <- read.table(reduceddatafile, sep = ";", header = T, na.strings = "?")
plotdata$Datetime <- strptime(paste(plotdata$Date, plotdata$Time), "%d/%m/%Y %H:%M:%S")

#The following will perform the plotting for the values. It also sets the different points from the data like sub_metering 
plot(plotdata$Datetime, plotdata$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(plotdata$Datetime, plotdata$Sub_metering_2, type = "l", xlab = "", ylab = "Energy sub metering", col = "red")
points(plotdata$Datetime, plotdata$Sub_metering_3, type = "l", xlab = "", ylab = "Energy sub metering", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()