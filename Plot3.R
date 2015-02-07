## Plot 3
dataProject <- read.table("./data/household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")) ##reading the data
dataProject$Date.Time <- strptime(paste(dataProject$Date, dataProject$Time),  format = "%d/%m/%Y %H:%M:%S") ## Concatenate Date and Time
dataProject$Date <- as.Date(dataProject$Date,"%d/%m/%Y") ##Converting as Date
dataProject2 <- dataProject[dataProject$Date==as.Date("2007/02/01")|dataProject$Date==as.Date("2007/02/02"),] ##Filtering to only get the data asked

png(file="plot3.png") ##open a new png file
plot(dataProject2$Date.Time,dataProject2$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering") ##plot the first line
lines(dataProject2$Date.Time,dataProject2$Sub_metering_2,col="red") ##add the secoond line
lines(dataProject2$Date.Time,dataProject2$Sub_metering_3,col="blue") ##add the third line
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue")) ##add the legend
dev.off() ##closing