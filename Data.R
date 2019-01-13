library(dplyr)
library(data.table)

fileUrl <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
download.file(fileUrl, 'PowerConsumptionData.zip')
unzip(zipfile = 'PowerConsumptionData.zip')

# in the next two steps we read the files containing labels or names for the variables and activities.
df <- fread(file = 'household_power_consumption.txt', header = TRUE, na.strings = '?', sep = ';', data.table = FALSE)

dfCleaned <- df %>%
        filter(Date == '1/2/2007' | Date == '2/2/2007') %>%
        mutate(Datestamp = as.POSIXct(strptime(paste(Date, Time, sep = ' '), format = '%d/%m/%Y %H:%M:%S'))) %>%
        select(Datestamp, everything(), -Date, -Time)