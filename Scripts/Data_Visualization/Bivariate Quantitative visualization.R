install.packages("ggplot2")
library(ggplot2)
data()
View(Orange)


#Bivariate Visualization for two quantitative variables#

#Scatter Plot#
ggplot(
  Orange, aes(y=age, x=circumference))+
  geom_point()

#Linear Regression Line#
ggplot(
  Orange, aes(y=age, x=circumference))+
  geom_point()+
  geom_smooth(method='lm')


#Heat Map#
ggplot(
  Orange, aes(y=age, x=circumference))+
  stat_bin2d()

#Heat Map#
ggplot(
  Orange, aes(y=age, x=circumference))+
  stat_binhex()

#Create a Contour plot of density#
ggplot(
  Orange, aes(y=age, x=circumference))+
  stat_density2d(aes(fill=..level..), geom="polygon")


#Note: 3D plots are not exists in ggplot2

#Step Chart#
ggplot(
  Orange, aes(y=age, x=circumference))+
  geom_step()+
  expand_limits(y=0)

#Line Chart#
ggplot(
  Orange, aes(y=age, x=circumference))+
  geom_line()+
  expand_limits(y=0)

#Area Chart#
ggplot(
  Orange, aes(y=age, x=circumference))+
  geom_area()

