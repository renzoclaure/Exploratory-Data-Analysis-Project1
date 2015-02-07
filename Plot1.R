## Plot 1
dataProject <- read.table("./data/household_power_consumption.txt",header=TRUE,sep=";",na.strings="?",colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric")) ##reading the data
dataProject$Date.Time <- strptime(paste(dataProject$Date, dataProject$Time),  format = "%d/%m/%Y %H:%M:%S") ## Concatenate Date and Time
dataProject$Date <- as.Date(dataProject$Date,"%d/%m/%Y") ##Converting as Date
dataProject2 <- dataProject[dataProject$Date==as.Date("2007/02/01")|dataProject$Date==as.Date("2007/02/02"),] ##Filtering to only get the data asked

png(file="plot1.png") ##open a new png file
hist(dataProject2$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power",breaks=12) ##ploting
dev.off() ##Closing