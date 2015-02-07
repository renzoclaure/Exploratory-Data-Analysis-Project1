## Plot 4
dataProject <- read.table("./data/household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")) ##reading the data
dataProject$Date.Time <- strptime(paste(dataProject$Date, dataProject$Time),  format = "%d/%m/%Y %H:%M:%S") ## Concatenate Date and Time
dataProject$Date <- as.Date(dataProject$Date,"%d/%m/%Y") ##Converting as Date
dataProject2 <- dataProject[dataProject$Date==as.Date("2007/02/01")|dataProject$Date==as.Date("2007/02/02"),] ##Filtering to only get the data asked

png(file="plot4.png") ##open a new png file
par(mfrow=c(2,2)) ##define the canvas distribution
plot(dataProject2$Date.Time,dataProject2$Global_active_power, type="l",xlab="",ylab="Global Active Power") ##plot the first graph
plot(dataProject2$Date.Time,dataProject2$Voltage, type="l",xlab="datetime",ylab="Voltage") ##plot the second graph
plot(dataProject2$Date.Time,dataProject2$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering") ##plot the third graph
lines(dataProject2$Date.Time,dataProject2$Sub_metering_2,col="red")
lines(dataProject2$Date.Time,dataProject2$Sub_metering_3,col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"),bty="n")
plot(dataProject2$Date.Time,dataProject2$Global_reactive_power, type="l",xlab="datetime",ylab="Global_Reactive_Power") ##plot the fourth graph
dev.off() ##closing