data <- read.table(file = "household_power_consumption.txt", sep = ";", 
                   skip = 66637, nrows = 2880, na.strings = "?", col.names = 
                   colnames(read.table("household_power_consumption.txt",
                   nrow = 1, header = TRUE, sep = ";")))

png("plot3.png", width = 480, height = 480)

dateTime <- strptime(paste(data$Date, data$Time), format = '%d/%m/%Y %H:%M:%S')

with(data, plot(dateTime, Sub_metering_1, xlab = "", ylab = "Energy sub metering",
     type = 'l'))
with(data, lines(dateTime, Sub_metering_2, col = "red"))
with(data, lines(dateTime, Sub_metering_3, col = "blue"))

legend("topright", lty = 1, col = c("black", "red", "blue"),
      legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()