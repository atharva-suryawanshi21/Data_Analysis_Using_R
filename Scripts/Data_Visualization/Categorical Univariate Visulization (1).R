install.packages("ggplot2")
library(ggplot2)
View(CO2)

#BAR GRAPH#

ggplot(CO2, aes(x=Treatment))+geom_bar()

# Title of the Plot#
ggplot(
  CO2, aes(x=Treatment))+
  geom_bar()+
  ggtitle("CO2")

#Flip the coordinates#
ggplot(
  CO2, aes(x=Treatment))+
  geom_bar()+
  coord_flip()+
  ggtitle("CO2")

    
#Outline color#
ggplot(
  CO2, aes(x=Treatment))+
  geom_bar(color="red")+
  ggtitle("CO2")

#Change the fill color#
ggplot(
  CO2, aes(x=Treatment))+
  geom_bar(color="red", fill="blue")+
  ggtitle("CO2")


#Change Axis Titles#
ggplot(
  CO2, aes(x=Treatment))+
  geom_bar(color="red", fill="blue")+
  ggtitle("CO2")+
  xlab("Treatment")+
  ylab("Count")

#Transparency of the Plot#
ggplot(
  CO2, aes(x=Treatment))+
  geom_bar(color="red", fill="blue", alpha=0.5)+
  ggtitle("CO2")+
  xlab("Treatment")+
  ylab("Count")


#Width of bars#
ggplot(
  CO2, aes(x=Treatment))+
  geom_bar(color="red", fill="blue",width = 0.1, alpha=0.5)




#Axis text color Change#
ggplot(
  CO2, aes(x=Treatment))+
  geom_bar(color="red", fill="blue",width = 0.1, alpha=0.5)+
  theme(axis.text = element_text(size=12, colour =  'Green')
  )

#Axis title & Plot Title Size & color#
ggplot(
  CO2, aes(x=Treatment))+
  geom_bar()+
  ggtitle("CO2")+
  xlab("Treatment")+
  ylab("Count")+
  theme(axis.text = element_text(size=12, colour =  'Green'), axis.title=element_text(size=12, colour =  'Green'),plot.title = element_text(size=12, colour =  'Green'))
  
# Point Graph#
ggplot(CO2, aes(x=Treatment))+geom_point(stat="Count")+
  ggtitle("Count of uptake w r to treatment")


#Pie Graph#
ggplot(
  CO2, aes(x="", fill=Treatment))+
  geom_bar()+
  coord_polar(theta="y")+
  ggtitle("CO2")

# Dot Plot#
ggplot(CO2, aes(x=Type, y=uptake))+geom_point()





