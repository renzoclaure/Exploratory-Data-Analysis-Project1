#Code Book

##Variables in all the Plots
* dataProject, contains de data.frame with all the data
* dataProject$Date.Time, variable which combi8nes the Date and Time
* dataProject2, contains de data.frame with the filtered data for 2007/02/01 and 2007/02/02
* 

## Plot1
* hist(dataProject2$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power",breaks=12)
* a bar plot was made
* 
## Plot2
* plot(dataProject2$Date.Time,dataProject2$Global_active_power, type="l",xlab="",ylab="Global Active Power (kilowatts)") 
* I used type="l" to draw lines instead of dots
* 

## Plot3
* plot(dataProject2$Date.Time,dataProject2$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering") ##plot the first line
* lines(dataProject2$Date.Time,dataProject2$Sub_metering_2,col="red") ##add the secoond line
* lines(dataProject2$Date.Time,dataProject2$Sub_metering_3,col="blue") ##add the third line
* legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue")) ##add the legend
* Firstable I draw the first line for Sub_metering_1, the I added lines for Sub_metering_2 and Sub_metering_3, specifying the colors respectively.
* Lastly legend was added, specifying labels, colors and lines with lty
* 

## Plot4
* par(mfrow=c(2,2)) ##define the canvas distribution
* plot(dataProject2$Date.Time,dataProject2$Global_active_power, type="l",xlab="",ylab="Global Active Power") ##plot the first graph
* plot(dataProject2$Date.Time,dataProject2$Voltage, type="l",xlab="datetime",ylab="Voltage") ##plot the second graph
* plot(dataProject2$Date.Time,dataProject2$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering") ##plot the third graph
* lines(dataProject2$Date.Time,dataProject2$Sub_metering_2,col="red")
* lines(dataProject2$Date.Time,dataProject2$Sub_metering_3,col="blue")
* legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),col=c("black","red","blue"),bty="n")
* plot(dataProject2$Date.Time,dataProject2$Global_reactive_power, type="l",xlab="datetime",ylab="Global_Reactive_Power") ##plot the fourth graph
* dev.off() ##closing
* Firstable the canvas distribution is specify
* Then I draw the plot
* In the third plot I specify not bos for the leyend with bty="n"
* 

 

