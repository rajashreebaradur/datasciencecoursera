#Get current working directory
getwd()

#Set current working directory
setwd("/Users/rajashreebaradur/datasciencecoursera/Exploratory_Analysis_4/Course_Project")

#Read data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#Aggregate emissions by year
dataYear <- with(NEI, aggregate(Emissions, by = list(year), sum))

#plotting the data
plot(dataYear, main = "Total PM2.5 Emissions by Year", xlab = "Year", ylab = "PM2.5 emissions", pch=19, type = 'b', lty=6, col="red")