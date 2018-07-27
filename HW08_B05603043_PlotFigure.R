#HW08
# Name：楊淯元
# ID：B05603043
# Subject：PlotFigure
# Date: 5/7, 2017

par(mex=0.8, mar=c(6, 6, 3, 3))
plot(iris$Sepal.Length, xlim=c(-10,160), ylim=c(4,10), xlab="PLantID", ylab="Length of Sepal", main="IRIS Data", col="blue", pch=2, cex=0.7)
axis(side=1, col="green", col.axis="red")
legend("topleft", legend=c("Plant ID vs Sepal.Length"))
text(120, 4, label=c("Plot the IRIS data, Sepal.Length"))
text(120, 4.5, expression(y==x^2+5))
