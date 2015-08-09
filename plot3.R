# uses myDB generated in gettingData.R script


y3_label <- "Energy Sub Metering"  #put this here to allow changes; 

## plot straight graph:
#plot(myDB$DateTime, myDB$Sub_metering_1, col = "black", type = "l", xlab = "", ylab = y3_label)
# lines(myDB$DateTime, myDB$Sub_metering_2, col = "red", type = "l")
# lines(myDB$DateTime, myDB$Sub_metering_3, col = "blue", type = "l")
## add legend:
#legend("topright", 
#       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
#       col =c("black", "red", "blue"), 
#       lty = "solid")


#plot(myDB$DateTime, myDB$Global_active_power, type="l", xlab="", ylab = y_label)

# to do .png plot:

png(filename='plot3.png',width=480,height=480,units='px')
plot(myDB$DateTime, myDB$Sub_metering_1, col = "black", type = "l", xlab = "", ylab = y3_label)
lines(myDB$DateTime, myDB$Sub_metering_2, col = "red", type = "l")
lines(myDB$DateTime, myDB$Sub_metering_3, col = "blue", type = "l")
## add legend:
legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col =c("black", "red", "blue"), 
       lty = "solid")


dev.off()
