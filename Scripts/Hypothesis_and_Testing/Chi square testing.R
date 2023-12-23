############Chi Square Testing########################
library("tidyverse")
data()


#Example 1##############
View(msleep)
summary(msleep)
vore.tab<-table(msleep$vore)
barplot(vore.tab)
chisq.test(vore.tab,y=NULL)


###Check the output for different data sets like orange, mtcars,diamonds, etc
#where categorical data can be observed
