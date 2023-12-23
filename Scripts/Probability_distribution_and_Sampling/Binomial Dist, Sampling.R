

install.packages("tigerstats")
library(tigerstats)


#Binomial Probability
#1. Exactly r P(X=r)
dbinom(r,n,p)  #Exact value of r
#Ex.1 : What is the probability of getting exactly 3'H if 10 coins are tossed.
#n=10, r=3,p=1/2
dbinom(3,10,0.5)

#Ex.2 : What is the probability of getting exactly three 2's if 8 dice are rolled.
#n=8, r=3,p=1/6
dbinom(3,8,1/6)


#2. Atmost P(X<=r)

#Ex.1 : What is the probability of getting atmost 3'H if 10 coins are tossed.
#n=10, r=3,p=1/2
#P(x<=3)=P(x=0)+P(x=1)+P(x=2)+P(x=3)
pbinom(3,10,0.5)

#Ex.2 : What is the probability of getting atmost three 2's if 8 dice are rolled.
#n=8, r=3 ,p=1/6
#P(x<=3)=P(x=0)+P(x=1)+P(x=2)+P(x=3)
pbinom(3,8,1/6)

#3. Atleast P(X>=r)
pbinom(r,n,p)  #cummulative probability
#Ex.1 : What is the probability of getting atleast 3'H if 10 coins are tossed.
#n=10, r=3, p=1/2
#P(x>=3)=P(x=3)+P(x=4)+...+P(x=10)=1-(P(x=0)+P(x=1)+P(x=2))
1-pbinom(2,10,0.5)


#Ex.2 : What is the probability of getting atleast three 2's if 8 dice are rolled.
#n=8, r=3, p=1/6
#P(x>=3)=P(x=3)+P(x=4)+...+P(x=8)=1-(P(x=0)+P(x=1)+P(x=2))
1-pbinom(2,8,0.5)


# How many heads will have a probability of 0.25 will come out when a coin
# is tossed 51 times.
x <- qbinom(0.25,51,1/2)


#Binomial Probability distribution
# Sample Size of 10
success <- c(0:10)
X=dbinom(success, size = 10, prob = 0.25)
plot(success, X)
# Sample Size of 30
suc <- c(0:30)
y <-  dbinom(suc, size = 30, prob = 0.25)
plot(suc, y, 
     type = "h",
     main = "Sample Size of 30, p = 0.25",
     xlab = "Number of Successes",
     ylab = "Probability of Success")

# Sample Size of 100
suc <- c(0:100)
y <-  dbinom(suc, size = 100, prob = 0.25)
plot(suc, y, 
     type = "h",
     main = "Sample Size of 100, p = 0.25",
     xlab = "Number of Successes",
     ylab = "Probability of Success")

success <- c(0:8)
plot(success, dbinom(success, size = 8, prob = 1/6), 
     type = "h",
     main = "Sample Size of 8, p = 1/6",
     xlab = "Number of Successes",
     ylab = "Probability of Success",
     lwd = 3)


#Sample distribution

#1.uniform distribution
unif <- c(1:8)
unif

# Mean of our uniform distribution
mean(unif)

# Histogram
hist(unif, main = "Uniform Distribution", xlab = " ")


#Sample distribution with different size 
# 1. Sample size of 3
sample_means <- c( )
for(i in 1:1000){
  sample_means[i] <- mean(sample(8, 3, replace = TRUE))
}
hist(sample_means, xlim = c(0,8), main = "Sample Size of 3", xlab = "Sample Means")
# Give the chart file a name.
png(file = "sample distribution1.png")
#save file
dev()
#check in files, file name sample distribution.pjg will be saved



# 2. Sample size of 10
for(i in 1:1000){
  sample_means[i] <- mean(sample(8, 10, replace = TRUE))
}
hist(sample_means, xlim = c(0,8), main = "Sample Size of 10", xlab = "Sample Means")

# Give the chart file a name.
png(file = "sample distribution2.png")
#save file
dev()
#check in files, file name sample distribution.pjg will be saved


#Sample size of 50
for(i in 1:1000){
  sample_means[i] <- mean(sample(8, 50, replace = TRUE))
}
hist(sample_means, xlim = c(0,8), main = "Sample Size of 50", xlab = "Sample Means")

# Give the chart file a name.
png(file = "sample distribution3.png")
#save file
dev()

##Poisson Distribution

#1. Exactly r P(X=r)
dpois(r,z=np)  #Exact value of r
#Ex.1 : n=10, r=3, p=0.01
dpois(3,0.1)

#Ex.2 : n=8, r=3,p=0.03
dpois(3,0.24)


#2. Atmost P(X<=r)

#Ex.1 : n=10, r=3,p=0.01
#P(x<=3)=P(x=0)+P(x=1)+P(x=2)+P(x=3)
ppois(3,0.1)

#Ex.2 : n=8, r=3 ,p=0.03
#P(x<=3)=P(x=0)+P(x=1)+P(x=2)+P(x=3)
ppois(3,0.24)



#Sampling

data("CO2")
View(CO2)

#for top 10 observation
head(CO2,10)
#for last 10 observation
tail(CO2,10)
#for random 10 observation
set.seed(5) #same random numbers 5 times
popsamp(10,CO2)

#subset
Chilled=subset(CO2,Treatment=="chilled")
Non_chilled=subset(CO2,Treatment=="nonchilled")

#to select random sample from particular subset
set.seed(10)
popsamp(4,Chilled)



