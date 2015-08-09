# uses myDB generated in gettingData.R script


y_label <- "Global Active Power (kilowatts)"  #put this here to allow changes; 

## plot straight graph:

#plot(myDB$DateTime, myDB$Global_active_power, type="l", xlab="", ylab = y_label)

# to do .png plot:

png(filename='plot2.png',width=480,height=480,units='px')
plot(myDB$DateTime, myDB$Global_active_power, type="l", xlab="", ylab = y_label)
dev.off()

