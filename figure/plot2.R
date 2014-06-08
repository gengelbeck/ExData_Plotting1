# Set the current working directory
# setwd("C:/Users/george/Documents/GitHub/ExData_Plotting1/figure")

# Load the data ds.RData
load("ds.RData")

# Create a DateTime variable
ds$DateTime <- strptime(paste(ds$Date, ds$Time), "%d/%m/%Y %H:%M:%S")

ds$Global_active_power <- as.numeric(as.character(ds$Global_active_power))

# Plot the power usage by day of the week (default)
plot(ds$DateTime,ds$Global_active_power,
    type="l",
    main="Global Active Power",
    cex.lab = 0.75,
    cex.axis = 0.75,
    ylab = "Global Active Power (kilowatts)", 
    xlab = "",
    col="black")

# Make a copy of the plot as a PNG and save it to a file
dev.copy(png, "plot2.png",width = 480, height = 480, units = "px")
dev.off()