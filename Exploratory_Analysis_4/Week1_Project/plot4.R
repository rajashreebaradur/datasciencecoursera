# Read data
subdata <- read.csv("subdata.csv", header = TRUE)

# convert dates
subdata$DateTime <- as.POSIXct(subdata$DateTime)

# set plot area
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))

# plots
with(subdata, {
  plot(Global_active_power~DateTime, 
       ylab="Global Active Power", 
       type="l", 
       xlab="")
  plot(Voltage~DateTime, 
       ylab="Voltage", 
       type="l", 
       xlab="")
  plot(Sub_metering_1~DateTime, 
       type="l", 
       ylab="Energy sub metering", 
       xlab="")
  lines(Sub_metering_2~DateTime, col="Red")
  lines(Sub_metering_3~DateTime, col="blue")
  legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, cex=0.64,
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot(Global_reactive_power~DateTime, 
       ylab="Global_reactive_power", 
       type="l", 
       xlab="")
})

# saving to png file
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()