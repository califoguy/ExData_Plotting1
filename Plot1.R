png(file = "../data/Plot1.png")
reduceddatafile <- "../data/feb2007_data.txt"
plotdata <- read.table(reduceddatafile, sep = ";", header = T, na.strings = "?")
plotdata$Datetime <- strptime(paste(plotdata$Date, plotdata$Time), "%d/%m/%Y %H:%M:%S")
#The following will perform the plotting for the values with other attributes
hist(plotdata$Global_active_power, main = "Global Active Power", ylab = "Frequency", xlab = "Global Active Power (kilowatts)", col = "red", breaks = 13, ylim = c(0, 1200), xlim = c(0, 6), xaxp = c(0, 6, 3))
dev.off()