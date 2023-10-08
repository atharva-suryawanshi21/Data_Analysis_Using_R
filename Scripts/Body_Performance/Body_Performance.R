# Importing the Data
# * With R Base Functions
#   •read.csv(): for reading “comma separated value” files (“.csv”).
#   •read.csv2(): variant used in countries that use a comma “,” as 
#                 decimal point and a semicolon “;” as field separators.
#   •read.delim(): for reading “tab-separated value” files (“.txt”). By 
#                 default, point (“.”) is used as decimal points.
#   •read.delim2(): for reading “tab-separated value” files (“.txt”). By 
#                 default, comma (“,”) is used as decimal points.

# * With readr Pakage
#   • read_csv(): to read a comma (“,”) separated values
#   • read_csv2(): to read a semicolon (“;”) separated values
#   • read_tsv(): to read a tab separated (“\t”) values

library(readr)
bodyPerformance <- read_csv("D:/GITHUB/Data_Analysis_Using_R/Data/bodyPerformance.csv")
View(bodyPerformance)
