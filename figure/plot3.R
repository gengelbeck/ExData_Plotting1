# Set the current working directory
# setwd("C:/Users/george/Documents/GitHub/ExData_Plotting1/figure")

# Load the data ds.RData
load("ds.RData")

# Create a DateTime variable
ds$DateTime <- strptime(paste(ds$Date, ds$Time), "%d/%m/%Y %H:%M:%S")

# Set the margins
par(mar=c(4,4,3,1))

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

# Make a copy of the plot as a PNG and stave it to a file
dev.copy(png, "plot3.png",width = 480, height = 480, units = "px")
dev.off()