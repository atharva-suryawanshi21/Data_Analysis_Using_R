#Bivariate visulization for two qualitative variables#

install.packages("ggplot2")
library("ggplot2")
df=data.frame(HairEyeColor)

#Grouped Bar Plot#
ggplot(
  df, aes(x=Hair, fill=Eye))+
  geom_bar(position="dodge")+
  scale_fill_discrete(labels=c("Brown", "Blue", "Hazel"))


#STACKED FREQUENCY Bar Plot#
ggplot(
  df, aes(x=Hair, fill=Eye))+
  geom_bar()+
  scale_fill_discrete(labels=c("Brown", "Blue", "Hazel"))

#100% STACKED FREQUENCY Bar Plot#
ggplot(
  df, aes(x=Hair, fill=Eye))+
  geom_bar(position="fill")+
  scale_fill_discrete(labels=c("Brown", "Blue", "Hazel"))

# Note: We can't plot spine & Mosaic in ggplot2