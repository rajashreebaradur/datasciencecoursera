#Get current working directory
getwd()

#Set current working directory
setwd("~/datasciencecoursera/Exploratory_Analysis_4/Course_Project")

#Read data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#subset emissions of Baltimore
sub1 <- subset(NEI, fips=="24510")

#Aggregate emissions by year
md <- tapply(sub1$Emissions, sub1$year, sum)

#plotting the data
plot(md, x= rownames(md), main = "Total PM2.5 Emissions in Baltimore County", xlab = "Year", ylab = "PM2.5 emissions", pch=19, type = 'b', lty=6, col="red")
