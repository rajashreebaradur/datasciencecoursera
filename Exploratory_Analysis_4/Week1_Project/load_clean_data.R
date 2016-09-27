#Get current working directory
getwd()

#Set current working directory
setwd("/Users/rajashreebaradur/datasciencecoursera/Exploratory_Analysis_4/Week1_Project")

#Read data
mydata <- read.table("household_power_consumption.txt", 
                     sep=";", 
                     colClasses = c("character", "character", rep("numeric",7)),
                     na = "?", 
                     header=TRUE)

#Convert Date variable to Date class in R
mydata$Date <- as.Date(mydata$Date, "%d/%m/%Y")

#subset the data for dates 2007-02-01 and 2007-02-02
subdata <- subset(mydata, Date >= "2007-02-01" & Date <= "2007-02-02")
x <- paste(subdata$Date, subdata$Time)
subdata$DateTime <- strptime(x, "%Y-%m-%d %H:%M:%S")

#check table properties
dim(subdata)

#check first 5 rows of the dataset
head(subdata)

#save the subset dataframe
write.csv(subdata, file="subdata.csv")
