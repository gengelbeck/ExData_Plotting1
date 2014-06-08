# Set the current working directory
# setwd("C:/Users/george/Documents/GitHub/ExData_Plotting1/figure")

## I had the memory so I went with the brute force
## 1. Downloaded the file
## 2. Read the whole thing into memory
## 3. Subsetted the data to the dates needed for the assignment
## 4. Saved the subset as an RData file for later use

## Read in the data file
fn <- "C:/Users/george/Courses/EDA/project1/exdata-data-household_power_consumption/household_power_consumption.txt"
ds <- read.table(file=fn, header = TRUE, sep = ";", 
                 stringsAsFactors=FALSE, na.strings = "?")
ds <- subset(ds, ds$Date =="1/2/2007" | ds$Date == "2/2/2007")

## Save the subseted data
save(ds, file="ds.RData")
