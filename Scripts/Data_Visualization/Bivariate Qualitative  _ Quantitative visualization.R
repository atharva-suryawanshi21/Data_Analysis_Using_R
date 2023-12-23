install.packages("ggplot2")
library(ggplot2)
View(diamonds)

#Bivariate Visualization for#
#both a qualitative and a Quantitative variable#

#Create a bivariate Bar Chart#
ggplot(
  diamonds, aes(x=color, y=depth))+
  geom_bar(stat="identity")

#Create a bivariate Box Plot#
ggplot(
  diamonds, aes(x=color, y=depth))+
  geom_boxplot()

#Create a bivariate Notched Box Plot#
ggplot(
  diamonds, aes(x=color, y=depth))+
  geom_boxplot(notch=TRUE)

#Create a Violin Plot#
ggplot(
  diamonds, aes(x=color, y=depth))+
  geom_violin()


#Create a Violin Plot#
ggplot(
  diamonds, aes(x=color, y=depth))+
  geom_violin()