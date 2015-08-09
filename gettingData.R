library(data.table)
library(lubridate)
library(plyr)
library(dplyr)

# curDir <- getwd()

tempDB <- read.table("household_power_consumption.txt",header=TRUE, sep=";", na.strings="?")
## > class(tempDB$Date) is a factor
tempDB$Date <- as.Date(tempDB$Date, format = "%d/%m/%Y")  ##now class(tempDB$Date) is "Date"

#limits the database to the 2 days in Feb.
myDB <- tempDB[tempDB$Date == "2007-02-01" | tempDB$Date == "2007-02-02", ]

rm(tempDB)  # clears up memory a bit; object.size(tempDB) was 141212056 bytes

# for plot2, need to change time format (class == "factor")

newDateTime <- paste(myDB$Date, myDB$Time, sep = " ")
newDateTime2 <- strptime(newDateTime, format = "%d-%m-%Y %H:%M:%S")

myDB$DateTime <- newDateTime2  ##I'm sure I could do all that in one line ?!?


