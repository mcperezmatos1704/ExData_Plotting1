File <- "./household_power_consumption.txt"
Data <- read.table(File, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
DataProject1 <- Data[Data$Date %in% c("1/2/2007","2/2/2007") ,]
DataProject2 <- as.numeric(DataProject1$Global_active_power)
DataProject3 <- read.table(text = grep("^[1,2]/2/2007",readLines(File),value=TRUE), sep = ';', col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), na.strings = '?')
DataProject3$Date <- as.Date(DataProject3$Date, format= '%d/%m/%Y')
DataProject3$DateTime <- as.POSIXct(paste(DataProject3$Date, DataProject3$Time))
png("plot2.png", width = 480, height= 480)
plot(DataProject3$DateTime,DataProject3$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
dev.off()