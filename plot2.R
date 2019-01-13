source('Data.R')

png(filename = 'plot2.png', width = 480, height = 480)
par(mfcol = c(1,1))
plot(dfCleaned$Datestamp, dfCleaned$Global_active_power, type = 'l', xlab = '', ylab = 'Global Active Power (kilowatts)')
dev.off()
