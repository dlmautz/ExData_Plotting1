#setwd("~/Coursera Exploratory Data Analysis - Project 1/ExData_Plotting1")
#data <- read.table('household_power_consumption.txt', header = TRUE, sep = ';')
#data <- within(data, Date_time <- as.POSIXlt(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S"))
#data <- subset(data, as.Date(Date_time) >= as.Date('2007-02-01') & as.Date(Date_time) <= as.Date('2007-02-02'))

data$Sub_metering_1 <- as.numeric(as.character(data$Sub_metering_1)) 
data$Sub_metering_2 <- as.numeric(as.character(data$Sub_metering_2))
data$Sub_metering_3 <- as.numeric(as.character(data$Sub_metering_3))

png("plot3.png", width = 480, height = 480)
with(data,{
  plot(Date_time,Sub_metering_1,type='l',xlab='',ylab='Energy Sub Metering')
  lines(Date_time,Sub_metering_2,col='red')
  lines(Date_time,Sub_metering_3,col='blue')
  legend('topright', legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'), lty=1, col=c('black','red','blue'))
})
dev.off()