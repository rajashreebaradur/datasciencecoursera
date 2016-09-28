# Read data
subdata <- read.csv("subdata.csv", header = TRUE)

# convert dates
subdata$DateTime <- as.POSIXct(subdata$DateTime)

# plot data
plot(subdata$Global_active_power~subdata$DateTime, 
     ylab="Global Active Power (kilowatts)", 
     type="l", 
     xlab="")

# saving to png file
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()