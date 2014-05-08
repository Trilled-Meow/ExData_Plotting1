data <- read.table(file = "household_power_consumption.txt", sep = ";", 
                   skip = 66637, nrows = 2880, na.strings = "?", col.names = 
                   colnames(read.table("household_power_consumption.txt",
                   nrow = 1, header = TRUE, sep = ";")))

datetime <- strptime(paste(data$Date, data$Time), format = '%d/%m/%Y %H:%M:%S')

png("plot4.png", width = 480, height = 480)

par(mfrow = c(2, 2))

plot(datetime, data$Global_active_power, xlab = "",
     ylab = "Global Active Power", type = 'l')

plot(datetime, data$Voltage, xlab = "datetime", ylab = "Voltage", type = 'l')

plot(dateTime, data$Sub_metering_1, xlab = "", ylab = "Energy sub metering",
                type = 'l')
lines(dateTime, data$Sub_metering_2, col = "red")
lines(dateTime, data$Sub_metering_3, col = "blue")
legend("topright", lty = 1, bty = 'n', col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(datetime, data$Global_reactive_power, type = 'l',
     ylab = "Global_reactive_power")

dev.off()