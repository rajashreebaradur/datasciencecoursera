# Read data
subdata <- read.csv("subdata.csv", header = TRUE)

# plot histogram
hist(subdata$Global_active_power, 
     main= "Global Active Power",
     xlab="Global Active Power(kilowatts)", 
     ylab="Frequency", 
     col="Red")

# saving to png file
dev.copy(png, file="plot1.png", height=480, width=480, units="px")
dev.off()
