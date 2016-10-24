library(ggplot2)

#Get current working directory
getwd()

#Set current working directory
setwd("~/datasciencecoursera/Exploratory_Analysis_4/Course_Project")

#Read data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#subset and aggregate emissions of Baltimore by motor vehicles
sub2 <- subset(NEI, fips=="24510" & type=="ON-ROAD")

balt_motor <- aggregate(sub2[c("Emissions")], list(year = sub2$year, type = sub2$type, zip = sub2$fips), sum)

qplot(year, Emissions, data = balt_motor, 
      geom= "line", 
      main="Motor Vehicle-Related Emissions in Baltimore County", 
      xlab="Year", ylab="Emission Levels")
