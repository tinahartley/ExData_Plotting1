household <- read.csv("household_power_consumption.txt",sep=';',na.strings="?")
household$Date <- as.Date(household$Date,format="%d/%m/%Y")
household1<-subset(household,Date=="2007-02-01"|Date=="2007-02-02")
datetime<-as.POSIXct(paste(household1$Date,household1$Time),format="%Y-%m-%d %H:%M:%S")

png(filename="plot2.png",width=480,height=480)
plot(datetime,household1$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()