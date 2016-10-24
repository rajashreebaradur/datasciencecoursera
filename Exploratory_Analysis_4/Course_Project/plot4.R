library(ggplot2)

#Get current working directory
getwd()

#Set current working directory
setwd("~/datasciencecoursera/Exploratory_Analysis_4/Course_Project")

#Read data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

scc_sub <- SCC[grep("Coal", SCC$Short.Name), ]
nei_sub <- NEI[NEI$SCC %in% scc_sub$SCC, ]

#plotting data
ggplot(data=nei_sub, mapping=aes(x=factor(year), y=Emissions, fill=type)) + 
  geom_bar(stat="identity", width=.4) + 
  xlab("Year") + 
  ylab("Coal-related PM2.5 emissions") + 
  ggtitle("Total Coal-related PM2.5 emissions")