sourceData <- read.table("./household_power_consumption.txt", sep = ";", header = TRUE)
sourceData$Date <- as.Date(as.character(sourceData$Date), format = "%d/%m/%Y")

dateData <- subset(sourceData, Date >= "2007-02-01" & Date <= "2007-02-02")
dateData$Time <- strptime(as.character(paste(dateData$Date,  dateData$Time)), format = "%Y-%m-%d %H:%M:%S")
dateData$Global_active_power <- as.numeric(as.character(dateData$Global_active_power))
dateData$Global_reactive_power <- as.numeric(as.character(dateData$Global_reactive_power))
dateData$Voltage <- as.numeric(as.character(dateData$Voltage))
dateData$Sub_metering_1 <- as.numeric(as.character(dateData$Sub_metering_1))
dateData$Sub_metering_2 <- as.numeric(as.character(dateData$Sub_metering_2))
dateData$Sub_metering_3 <- as.numeric(as.character(dateData$Sub_metering_3))


png(file = "plot4.png")
par(mfrow = c(2,2))
par(mar = c(4,4,4,4))

plot(dateData$Time, dateData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
plot(dateData$Time, dateData$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
plot(dateData$Time, dateData$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering", yaxt="n")
axis(2, at = seq(0, 35, by = 10))
lines(dateData$Time, dateData$Sub_metering_2,col = "red")
lines(dateData$Time, dateData$Sub_metering_3,col = "blue")
legend("topright", c("Sub_mettering_1", "Sub_mettering_2", "Sub_mettering_3"), col = c("black", "red", "blue"), cex = .85, bty = "n", lty = 1, lwd = 1)
plot(dateData$Time, dateData$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
dev.off()