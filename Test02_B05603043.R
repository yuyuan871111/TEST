#HW02
# Name：楊淯元
# ID：B05603043
# Subject：Compute and Plot data
# Date: 2/23, 2017

mydata<-iris
iris
iris[1,1]
iris[1, ]
iris[ ,1]
iris[1,2]
mydata
str(mydata)
summary(mydata)
head(mydata)
?str
mydata[mydata$Species=="setosa",1:3]
str(iris)
mydata[ ,5]=="setosa"
mydata[mydata[ ,5]=="virginica", ]
subset(mydata,Species=="setosa",select=Sepal.Length)
data1 <- mydata[ ,1]
boxplot(data1)
boxplot(mydata)
hist(data1, probability = T )
stem(data1)
stripchart(mydata)
