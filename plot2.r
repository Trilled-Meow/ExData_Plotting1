data <- read.table(file = "household_power_consumption.txt", sep = ";", 
                   skip = 66637, nrows = 2880, na.strings = "?", col.names = 
                   colnames(read.table("household_power_consumption.txt",
                   nrow = 1, header = TRUE, sep = ";")))

png("plot2.png", width = 480, height = 480, bg = "transparent")

dateTime <- strptime(paste(data$Date, data$Time), format = '%d/%m/%Y %H:%M:%S')

plot(dateTime, data$Global_active_power, xlab = "", ylab = "Global Active Power (kilowatts)",
     type = 'l')

dev.off()