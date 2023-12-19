library(readr)
library(tidyr)
lures <- read_csv("D:/GITHUB/Data_Analysis_Using_R/Data/lures.csv")
lures$DATE<- as.character(lures$DATE)
View(lures)

lures<- lures[1:100,c(2,4,5,6,7,8)]

unique_shopID <- unique(lures$'SHOP ID')
unique_shopID

View(lures)

# Spread
#There are times when we are required to turn long formatted
#data into wide formatted data. The spread() function spreads a key-value
#pair across multiple columns.
lures_spread = spread(lures,'SHOP ID', REVENUE ) # ' ' due to space between SHOP and ID
View(lures_spread)

# Gather
#There are times when our data is considered unstacked and a
#common attribute of concern is spread out across columns. To reformat the
#data such that these common attributes are gathered together as a single
#variable, the gather() function will take multiple columns and collapse them
#into key-value pairs, duplicating all other columns as needed.
lures_gather = gather(lures_spread, ShopID, Revenue,7:15)
View(lures_gather)

# Separate
#turns a single character column into multiple columns.
lures_separate = separate(lures, DATE, into = c("Year","Month","Day"), sep ="-")
View(lures_separate)

# Unite
#There may be a time in which we would like to combine the
#values of two variables. The unite() function is a convenience function to
#paste together multiple variable values into one. In essence, it combines
#multiple variables of a single observation into one variable.
lures_unite <- unite(lures_separate, Date, Year, Month, Day, sep = "/")
View(lures_unite)
