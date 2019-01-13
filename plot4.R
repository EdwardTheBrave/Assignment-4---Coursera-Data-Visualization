source('Data.R')

png(filename = 'plot4.png', width = 480, height = 480)

par(mfcol = c(2,2))

plot(dfCleaned$Datestamp, dfCleaned$Global_active_power, type = 'l', xlab = '', ylab = 'Global Active Power (kilowatts)')

plot(dfCleaned$Datestamp, dfCleaned$Sub_metering_1, type = 'l', xlab = '', ylab = 'Energy sub metering')
points(dfCleaned$Datestamp, dfCleaned$Sub_metering_2, type = 'l', col = 'red')
points(dfCleaned$Datestamp, dfCleaned$Sub_metering_3, type = 'l', col = 'blue')
legend('topright', legend = c('Sub_metering_1','Sub_metering_2', 'Sub_metering_3'), col = c('black', 'red', 'blue'), lty=1, bty = 'n', cex=0.8)

plot(dfCleaned$Datestamp, dfCleaned$Voltage, type = 'l', xlab = 'datetime', ylab = 'Voltage')

plot(dfCleaned$Datestamp, dfCleaned$Global_reactive_power, type = 'l', xlab = 'datetime', ylab = 'Global_reactive_power')
dev.off()