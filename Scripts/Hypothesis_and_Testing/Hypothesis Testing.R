############Chi Square Testing########################
install.packages("tidyverse")
library("tidyverse")
data(msleep)


#Example 1##############
View(msleep)
summary(msleep)
vore.tab<-table(msleep$vore)
barplot(vore.tab)
chisq.test(vore.tab,y=NULL)
#Ex.2####
data("mtcars")
table(mtcars$carb, mtcars$cyl) 
chisq.test(mtcars$carb, mtcars$cyl)

###Check the output for different data sets like orange, mtcars,diamonds, etc
#where categorical data can be observed

# t-test####
#One-Sample
#Ex.1###
set.seed(0)
ship_vol <- c(rnorm(75, mean = 37000, sd = 2500))
t.test(ship_vol, mu = 39000)


#Paired Sample
#Ex.2###

set.seed(2820)
pre_Treatment <- c(rnorm(2000, mean = 150, sd = 10))
post_Treatment <- c(rnorm(2000, mean = 144, sd = 9))
t.test(pre_Treatment, post_Treatment, paired = TRUE)



#Independent-samples T-test where y1 and y2 are numeric:
#Ex.3###

set.seed(0)
Spenders_Cleve <- rnorm(60, mean = 350, sd = 77)
Spenders_NY <- rnorm(60, mean = 400, sd = 80)
t.test(Spenders_Cleve, Spenders_NY, var.equal = TRUE)


#y1 is numeric and y2 is binary:
#Ex.4###

Amount_Spent <- c(Spenders_Cleve, Spenders_NY)
city_name <- c(rep("Cleveland", 60), rep("New York", 60))
t.test(Amount_Spent ~ city_name, var.equal = TRUE)

#With equal variances not assumed:
#Ex.5####

t.test(Spenders_Cleve, Spenders_NY, var.equal = FALSE)


# Z-test###
#You can use the z.test() function from the BSDA package to perform one sample and two sample z-tests in R.
#This function uses the following basic syntax:
#z.test(x, y, alternative='two.sided', mu=0, sigma.x=NULL, sigma.y=NULL,conf.level=.95)
#where:  x: values for the first sample
#y: values for the second sample (if performing a two sample z-test)
#alternative: the alternative hypothesis (‘greater’, ‘less’, ‘two.sided’)
#mu: mean under the null or mean difference (in two sample case)
#sigma.x: population standard deviation of first sample
#sigma.y: population standard deviation of second sample
#conf.level: confidence level to use
#The following examples shows how to use this function in practice.

#Example 1: One Sample Z-Test in R
#Suppose the IQ in a certain population is normally distributed with a mean of μ = 100 and standard deviation of σ = 15.
#A scientist wants to know if a new medication affects IQ levels, so she recruits 20 patients to use it for one month and records their IQ levels at the end of the month.

#The following code shows how to perform a one sample z-test in R to determine if the new medication causes a significant difference in IQ levels:

install.packages("BSDA")
library(BSDA)

#enter IQ levels for 20 patients
data = c(88, 92, 94, 94, 96, 97, 97, 97, 99, 99,
         105, 109, 109, 109, 110, 112, 112, 113, 114, 115)

#perform one sample z-test
z.test(data, mu=100, sigma.x=15)

#One-sample z-Test
#check output :
#The test statistic for the one sample z-test is 0.90933 and the corresponding p-value is 0.3632.
#Since this p-value is not less than .05, we do not have sufficient evidence to reject the null hypothesis.
#Thus, we conclude that the new medication does not significantly affect IQ level.

#Example 2: Two Sample Z-Test in R
#Suppose the IQ levels among individuals in two different cities are known to be normally distributed each with population standard deviations of 15.
#A scientist wants to know if the mean IQ level between individuals in city A and city B are different, so she selects a simple random sample of  20 individuals from each city and records their IQ levels.

#The following code shows how to perform a two sample z-test in R to determine if the mean IQ level is different between the two cities:



#enter IQ levels for 20 individuals from each city
cityA = c(82, 84, 85, 89, 91, 91, 92, 94, 99, 99,
          105, 109, 109, 109, 110, 112, 112, 113, 114, 114)

cityB = c(90, 91, 91, 91, 95, 95, 99, 99, 108, 109,
          109, 114, 115, 116, 117, 117, 128, 129, 130, 133)

#perform two sample z-test
z.test(x=cityA, y=cityB, mu=0, sigma.x=15, sigma.y=15)


#The test statistic for the two sample z-test is -1.7182 and the corresponding p-value is 0.08577

#Since this p-value is not less than .05, we do not have sufficient evidence to reject the null hypothesis.

#Thus, we conclude that the mean IQ level is not significantly different between the two cities.






#By defining function

IQ.data <- c(100,101,104,109,125,116,105,108,110)
z.test(IQ.data,100,15)
z.test = function(x,mu,popvar){ one.tail.p <- NULL
z.score <- round((mean(x)-mu)/(popvar/sqrt(length(x))),3) 
one.tail.p <- round(pnorm(abs(z.score),lower.tail = FALSE),3) 
cat(" z =",z.score,"\n","one-tailed probability =", one.tail.p,"\n","two-tailed probability =", 2*one.tail.p )}


# r-test
my_data <- mtcars
head(my_data, 6)

res <- cor.test(my_data$wt, my_data$mpg, method = "pearson")
res
