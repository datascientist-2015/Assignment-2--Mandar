# R command to read the csv file ( data file)
Data = read.csv("C:/Courses/BigData/hw1_data.csv")

#what are the column names of the dataset?
names(Data)

#Extract the first 2 rows of the data frame and print them to the console. What does the output look like?
Data[c(1,2),]

#How many observations (i.e. rows) are in this data frame?
nrow(Data)

#Extract the last 2 rows of the data frame and print them to the console. What does the output look like?
Data[c(152,153),]

#What is the value of Ozone in the 47th row?
Data[47,]

#How many missing values are in the Ozone column of this data frame?
sum(is.na(Data$Ozone))

#What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
mean(Data$Ozone,na.rm=TRUE)

#Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
mean(Data$Solar.R[Data$Ozone>31 & Data$Temp>90],na.rm = TRUE)

#What is the mean of "Temp" when "Month" is equal to 6? 
mean(Data$Temp[Data$Month == 6],na.rm = TRUE)

#What was the maximum ozone value in the month of May (i.e. Month = 5)?
max(Data$Ozone[Data$Month == 5],na.rm = TRUE)
