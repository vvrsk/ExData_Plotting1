# Read the data
household_power_consumption <- read.csv("C:/Users/vvrsk/Desktop/Coursera/Course 4/Week 1/exdata%2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=FALSE)

# Convert the date into Date Type
household_power_consumption$Date <-as.Date(household_power_consumption$Date, format = "%d/%m/%Y")

#Subsetting the data
dataOfIntrest <- subset(household_power_consumption, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

# Open device to save as PNG

png(filename = "./plot1.png",width = 480, height = 480 )

#Plot the histogram
hist(dataOfIntrest$Global_active_power,main = "Global Active Power",xlab="Global_active_power(in kilowatts)",col = "red")

#Turn off the device
dev.off()

