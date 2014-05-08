data <- read.table(file = "household_power_consumption.txt", sep = ";", 
                   skip = 66637, nrows = 2880, na.strings = "?", col.names = 
                   colnames(read.table("household_power_consumption.txt",
                   nrow = 1, header = TRUE, sep = ";")))


png("plot1.png", width = 480, height = 480, bg = "transparent")
hist(data$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()