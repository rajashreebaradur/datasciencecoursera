library(ggplot2)

#Get current working directory
getwd()

#Set current working directory
setwd("~/datasciencecoursera/Exploratory_Analysis_4/Course_Project")

#Read data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#subset and aggregate emissions of Baltimore by source
sub1 <- subset(NEI, fips=="24510")
balt <- aggregate(sub1[c("Emissions")], list(year = sub1$year, type = sub1$type), sum)

#plotting data
qplot(year, Emissions, data=balt, color=type, geom="line", xlab="Year", ylab="PM2.5 Emissions", main="Total PM2.5 Emissions in Baltimore County by Source Type")