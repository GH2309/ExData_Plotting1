# script 4 prints 4 charts; 
# Plot 2 in top left; 
# Voltage in top right
# plot 3 in lower left
# global_reactive in lower right
#plot2

png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))
y_label <- "Global Active Power (kilowatts)"
plot(myDB$DateTime, myDB$Global_active_power, type="l", xlab="", ylab = y_label)

#voltage:
plot(myDB$DateTime, myDB$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

#plot3
y3_label <- "Energy Sub Metering"
plot(myDB$DateTime, myDB$Sub_metering_1, col = "black", type = "l", xlab = "", ylab = y3_label)
 lines(myDB$DateTime, myDB$Sub_metering_2, col = "red", type = "l")
 lines(myDB$DateTime, myDB$Sub_metering_3, col = "blue", type = "l")
## add legend:
legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col =c("black", "red", "blue"), 
       lty = "solid")

# Global_reactive:
plot(myDB$DateTime, myDB$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

dev.off()

