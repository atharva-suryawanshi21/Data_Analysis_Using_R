##############Correlation in R#####################3

data()
View(iris)
head(iris)
plot(iris)
d<-iris[,c(-5)]
plot(d)


cor(d)
cor(d,method="pearson")
cor(d,method="kendall")
cor(d,method="spearman")
cor.test(d$Sepal.Length,d$Sepal.Width)



liabrary("corrplot")
d1<-cor(d)
d1
corrplot(d1,method="pie")
corrplot(d1,method="color")
corrplot(d1,method="number")
corrplot(d1,type="lower")
corrplot(d1,type="upper")
##corrplot by default gives circle
corrplot(d1)




##NA values###
View(lures)
cor(lures$QUANTITY, lures$REVENUE)
cor(lures$QUANTITY, lures$REVENUE, use="complete.obs")


