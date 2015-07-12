#setwd("~/Coursera Exploratory Data Analysis - Project 1/ExData_Plotting1")
#data <- read.table('household_power_consumption.txt', header = TRUE, sep = ';')
#data <- within(data, Date_time <- as.POSIXlt(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S"))
#data <- subset(data, as.Date(Date_time) >= as.Date('2007-02-01') & as.Date(Date_time) <= as.Date('2007-02-02'))

data$Global_active_power <- as.numeric(as.character(data$Global_active_power)) 

png("plot2.png", width = 480, height = 480)
with(data,plot(Date_time,Global_active_power,type='l',xlab='',ylab='Global Active Power (kwatts)'))
dev.off()