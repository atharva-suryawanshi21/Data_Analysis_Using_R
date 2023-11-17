library(dplyr)
library(readr)
marketing_campaign <- read_delim("D:/GITHUB/Data_Analysis_Using_R/Data/marketing_campaign.csv", 
                                 delim = "\t", escape_double = FALSE, 
                                 trim_ws = TRUE)
View(marketing_campaign)

# Select
# select():To select columns of a dataframe, use select().
data_select <- select(marketing_campaign, Year_Birth,Education,Marital_Status)
View(data_select)

data_select2 <- select(marketing_campaign, c(1,2,3,5))
View(data_select2)

#IMPORTANT
data_select3 <- select(marketing_campaign, ID,contains("AcceptedCmp"))
View(data_select3)

data_select4 <- select(marketing_campaign, ID, ends_with("Purchases"))
View(data_select4)


# Filter
#filter(): subset rows on conditions
data_filter <- filter(marketing_campaign, Income>=100000)
View(data_filter)

data_filter1 <- filter(marketing_campaign, Marital_Status %in% c("Married", "Together"))
View(data_filter1)

# Distinct
# returns distinct rows from the chosen part of the data
data_distinct <- distinct(marketing_campaign,Kidhome,Teenhome)
View(data_distinct)

# Slice
# Separate some observation from data
data_slice <- slice(marketing_campaign,5:10)
View(data_slice)

# Mutate
#mutate():Frequently you’ll want to create new columns based on the values in existing
#columns, for example to do unit conversions, or to find the ratio of values in two columns.
#For this we’ll use mutate().
data_mutate <- mutate(marketing_campaign, income_kids = Income/(Kidhome+Teenhome))
View(data_mutate)

# Summary
#group_by() and summarize(): create summary statistics on grouped data
marketing_campaign %>% summarise(mean = mean(Year_Birth), median = median(Year_Birth), mode = mode(Year_Birth),standard_deviation = sd(Year_Birth))

# Arrange
data_arrange <- arrange(marketing_campaign,desc(Income))
View(data_arrange)

# Pipe operator %>%
data_pipe = marketing_campaign %>% select(ID,Year_Birth, Income)%>% arrange(desc(Income))%>% filter(Income<=50000)
View(data_pipe)

# Group by
data_group = marketing_campaign%>% group_by(Marital_Status) %>% summarise(mean(Income), sum(Income))
View(data_group)

# We can also join 2 dataset column wise or row wise with following
# 1. bind_cols(Dataset_names)
# 2. bind_rows(Dataset_names)