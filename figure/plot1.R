# Set the current working directory
# setwd("C:/Users/george/Documents/GitHub/ExData_Plotting1/figure")

# Load the data ds.RData
load("ds.RData")

# Plot the histogram
hist(ds$Global_active_power, 
    main="Global Active Power",
    xlab = "Global Active Power (kilowatts)", 
    ylab = "Frequency",
    col="red")

# Make a copy of the plot as a PNG and stave it to a file
dev.copy(png, "plot1.png",width = 480, height = 480, units = "px")
dev.off()