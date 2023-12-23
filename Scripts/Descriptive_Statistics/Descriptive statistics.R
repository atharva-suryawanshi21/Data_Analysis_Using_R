#############Descriptive statistics##################
install.packages("dplyr")
install.packages("DescTools")


#########Measures of central tendency################
View(marketing_campaign)
# select any column to find the mean
mean(marketing_campaign$Income) # output is "NA"
mean(marketing_campaign$Income, na.rm=TRUE)
mean(marketing_campaign$Income, na.rm=FALSE)

# median#
median(marketing_campaign$Income)
median(marketing_campaign$Income, na.rm=TRUE)

#mode#
Income_mode<-Mode(marketing_campaign$Income,na.rm=TRUE)
# R prompts us the mode value and how many times it is appearing in the data.

#histogram#
hist(marketing_campaign$Income)

#Quantile#
Quantile(marketing_campaign$Income,na.rm=TRUE)
# R prompts us the quantiles as 0%, 25%, 50%=median,75%, 100%

# We can control quartiles in R as follows:#
probs=seq(0,1,0.25) #probability for quartiles
probs

quantile(marketing_campaign$Income, probs=seq(0,1,0.25),na.rm=TRUE)
probs1=seq(0,1,0.30)
probs1
quantile(marketing_campaign$Income, probs1,na.rm=TRUE)

############Measures of dispersion##################
#Range#
View(marketing_campaign)
range=max(marketing_campaign$Income,na.rm=TRUE)-min(marketing_campaign$Income,na.rm=TRUE)
range
range(marketing_campaign$Income, na.rm=TRUE)

#Interquartile range#
IQR(marketing_campaign$Income, na.rm=TRUE)

#Quartile deviation#
IQR(marketing_campaign$Income, na.rm=TRUE)/2

#variance and std. deviation#
var(marketing_campaign$Income, na.rm=TRUE)
sqrt(var(marketing_campaign$Income, na.rm=TRUE))

#Coefficient of variation##
batsman_A <- c(30,44,66,62,60,34,80,46,20,38)
batsman_A
batsman_B <- c(34,46,70,38,55,48,60,34,45,30)
batsman_B
CV_A <- (sqrt(var(batsman_A))/mean(batsman_A))*100
CV_A
CV_B <- (sqrt(var(batsman_B))/mean(batsman_B))*100
CV_B




############Summary of all observations################

summary(marketing_campaign$Income, na.rm=TRUE)


###BOXPLOT###
boxplot(marketing_campaign$Income, na.rm=TRUE)

data.frame(batsman_A,batsman_B)
boxplot(data.frame(batsman_A,batsman_B))
