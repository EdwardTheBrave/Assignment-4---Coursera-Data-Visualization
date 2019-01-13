source('Data.R')

png(filename = 'plot1.png', width = 480, height = 480)
par(mfcol = c(1,1))
hist(dfCleaned$Global_active_power, col = 'red', xlab = 'Global Active Power (kilowatts', main = 'Global Active Power')
dev.off()