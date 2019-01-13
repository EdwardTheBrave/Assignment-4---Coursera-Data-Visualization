source('Data.R')


png(filename = 'plot3.png', width = 480, height = 480)
par(mfcol = c(1,1))
plot(dfCleaned$Datestamp, dfCleaned$Sub_metering_1, type = 'l', xlab = '', ylab = 'Energy sub metering')
points(dfCleaned$Datestamp, dfCleaned$Sub_metering_2, type = 'l', col = 'red')
points(dfCleaned$Datestamp, dfCleaned$Sub_metering_3, type = 'l', col = 'blue')
legend('topright', legend = c('Sub_metering_1','Sub_metering_2', 'Sub_metering_3'), col = c('black', 'red', 'blue'), lty=1)
dev.off()
