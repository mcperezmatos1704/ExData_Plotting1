File <- "./household_power_consumption.txt"
Data <- read.table(File, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
DataProject1 <- Data[Data$Date %in% c("1/2/2007","2/2/2007") ,]
DataProject2 <- as.numeric(DataProject1$Global_active_power)
png("plot1.png", width = 480, height= 480)
hist(DataProject2, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off