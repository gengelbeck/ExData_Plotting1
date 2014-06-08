# Set the current working directory
# setwd("C:/Users/george/Documents/GitHub/ExData_Plotting1/figure")

# Load the data ds.RData
load("ds.RData")

# Create a DateTime variable
ds$DateTime <- strptime(paste(ds$Date, ds$Time), "%d/%m/%Y %H:%M:%S")

# Set the base plots to a 2 by 2 matrix
par(mfrow=c(2,2), mar=c(4,2,2,2))


# Plot the power usage by day of the week (default)
plot(ds$DateTime,ds$Global_active_power,
     type="l",
     #main="Global Active Power",
     cex.lab = 0.75,
     cex.axis = 0.75,
     ylab = "Global Active Power (kilowatts)", 
     xlab = "",
     col="black")

# Plot the voltage by day of the week (default)
plot(ds$DateTime,ds$Voltage,
     type="l",
     #main="Voltage",
     cex.lab = 0.75,
     cex.axis = 0.75,
     ylab = "Voltage", 
     xlab = "datetime",
     col="black")

# Plot the power usage by day of the week (default)
plot(ds$DateTime,ds$Sub_metering_1,
    type="l",
    cex.lab = 0.75,
    cex.axis = 0.75,
    ylab = "Energy sub metering", 
    xlab = "",
    col="black")
lines(ds$DateTime,ds$Sub_metering_2,col="red")
lines(ds$DateTime,ds$Sub_metering_3,col="blue")
legend("topright", lty = 1, cex=0.7, col=c("black", "red", "blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

# Plot the Global_reactive_power by day of the week (default)
plot(ds$DateTime,ds$Global_reactive_power,
     type="l",
     #main="Global Reactive Power",
     cex.lab = 0.75,
     cex.axis = 0.75,
     ylab = "Global_reactive_power", 
     xlab = "datetime",
     col="black")

# Set the base plots back to 1 by 1 matrix
par(mfrow = c(1, 1))

# Make a copy of the plots as a PNG and save it to a file
dev.copy(png, "plot4.png",width = 480, height = 480, units = "px")
dev.off()