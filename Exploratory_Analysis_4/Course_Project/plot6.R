library(ggplot2)

#Get current working directory
getwd()

#Set current working directory
setwd("~/datasciencecoursera/Exploratory_Analysis_4/Course_Project")

#Read data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#subset and aggregate emissions of Baltimore by motor vehicles
sub3 <- subset(NEI, fips=="06037" & type=="ON-ROAD")

la_motor <- aggregate(sub3[c("Emissions")], list(year = sub3$year, type = sub3$type, zip=sub3$fips), sum)

comp <- rbind(balt_motor, la_motor)

qplot(year, Emissions, data = comp, color=zip,
      geom= "line", 
      main="Motor Vehicle Emissions Baltimore vs. LA County", 
      xlab="Year", ylab="Emission Levels")