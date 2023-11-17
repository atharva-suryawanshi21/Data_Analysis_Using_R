# Importing the Data
# * With R Base Functions
#   •read.csv(): for reading “comma separated value” files (“.csv”).
#   •read.csv2(): variant used in countries that use a comma “,” as 
#                 decimal point and a semicolon “;” as field separators.
#   •read.delim(): for reading “tab-separated value” files (“.txt”). By 
#                 default, point (“.”) is used as decimal points.
#   •read.delim2(): for reading “tab-separated value” files (“.txt”). By 
#                 default, comma (“,”) is used as decimal points.

# * With readr Package
#   • read_csv(): to read a comma (“,”) separated values
#   • read_csv2(): to read a semicolon (“;”) separated values
#   • read_tsv(): to read a tab separated (“\t”) values

library(readr)
bodyPerformance <- read_csv("D:/GITHUB/Data_Analysis_Using_R/Data/bodyPerformance.csv")
View(bodyPerformance)

#We can get the structure of the data frame using str() function in R. 
#It can display even the internal structure of large lists which are nested. 
#It provides one-liner output for the basic R objects letting the user know about the object and its constituents.
str(bodyPerformance)

#the statistical summary and nature of the data can be obtained by applying summary() function. 
#It is a generic function used to produce result summaries of the results of various model fitting functions. 
#The function invokes particular methods which depend on the class of the first argument.
summary(bodyPerformance)

# Extract specific Columns
data <- bodyPerformance[c(1:100), c(1,2,3,4)]
View(data)


add_data <- bodyPerformance[c(101:110), c(1:4)]
View(add_data)
# Expand Data frame
#   row- rbind()
#   column - cbind()
FinalData <- rbind(data,add_data)
View(FinalData)

# columns can be added as follow
FinalData$rollno <- c(1:110)
View(FinalData)

# Delete rows/columns
FinalData$rollno = NULL
View(FinalData)
