png(file = "../data/Plot2.png")
reduceddatafile <- "../data/feb2007_data.txt"
plotdata <- read.table(reduceddatafile, sep = ";", header = T, na.strings = "?")
plotdata$Datetime <- strptime(paste(plotdata$Date, plotdata$Time), "%d/%m/%Y %H:%M:%S")
#The following will perform the plotting for the values
plot(plotdata$Datetime, plotdata$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()