install.packages("ggplot2")
library(ggplot2)
View(ChickWeight)

#dotplot#
ggplot(
  ChickWeight, aes(x=Diet, stat="count"))+
    geom_dotplot(binwidth = 1)
  

# Box Plot#
ggplot(
  ChickWeight, aes(x=weight, stat="count"))+
  geom_boxplot()


# Flip coordinates Box Plot#
ggplot(
  ChickWeight, aes(x=weight, stat="count"))+
  geom_boxplot()+
  coord_flip()


# Flip coordinates Box Plot with theme function#
ggplot(
  ChickWeight, aes(x=weight, stat="count"))+
  geom_boxplot()+
  coord_flip()+
  theme(axis.text.y=element_blank(), axis.ticks.y=element_blank())


# Histogram#
ggplot(
  ChickWeight, aes(x=weight, stat="count"))+
  geom_histogram(binwidth=20)

# Density#
ggplot(
  ChickWeight, aes(x=weight, stat="count"))+
  geom_density()

dev.off()

library(grid)

viewport<- viewport(
  layout=grid.layout(4,1))

pushViewport(viewport)

dot<-ggplot(
  ChickWeight, aes(x=Diet, stat="count"))+
  geom_dotplot(binwidth = 0.25)
print(x=dot,
      vp=viewport(
        layout.pos.row = 1,
        layout.pos.col=1))
box<-ggplot(
  ChickWeight, aes(x=weight, stat="count"))+
  geom_boxplot()
print(x=box,
      vp=viewport(
        layout.pos.row = 2,
        layout.pos.col=1))
Hist<-ggplot(
  ChickWeight, aes(x=weight, stat="count"))+
  geom_histogram(binwidth=20)
print(x=Hist,
      vp=viewport(
        layout.pos.row = 3,
        layout.pos.col=1))
Density<-ggplot(
  ChickWeight, aes(x=weight, stat="count"))+
  geom_density()
print(x=Density,
      vp=viewport(
        layout.pos.row = 4,
        layout.pos.col=1))


