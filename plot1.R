
# to generate plots to screen

#hist(myDB$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")

# export as png
png(file = "plot1.png", width=480,height=480, units = "px")
hist(myDB$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")

dev.off()
