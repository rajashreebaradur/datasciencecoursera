# Read data
subdata <- read.csv("subdata.csv", header = TRUE)

# convert dates
subdata$DateTime <- as.POSIXct(subdata$DateTime)

# plot data
with(subdata, { 
  plot(Sub_metering_1~DateTime, 
       type="l", 
       ylab="Global Active Power (kilowatts)", 
       xlab="")
  lines(Sub_metering_2~DateTime, col="Red")
  lines(Sub_metering_3~DateTime, col="blue")
})

legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, cex=0.64,
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# saving to png file
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()