# NTU Computer Programming - HW09
# Name: 楊淯元
# ID: B05603043
# Subject: plot many figures
# Date: 5/12, 2017


data( iris )

#將iris資料放入x1, x2, x3, x4 中
x1 <- iris[, 1]
x2 <- iris[, 2]
x3 <- iris[, 3]
x4 <- iris[, 4]

#設定y軸範圍
ylim <- range(x1, x2, x3, x4)


# mac環境下，設定工作視窗環境
# windows( width = 8, height = 6, pointsize = 8 )
quartz( width = 8, height = 6, pointsize = 8 )

#設定預留邊界參數與多圖擺放設定(加背景顏色)
old.par <- par( mex = 0.8, mar = c(5, 4, 4, 2) + 0.1, bg = "lightgreen" )
layout( matrix( c(1, 2, 0, 3, 4, 5), nrow = 2, ncol = 3), width = c(2,1,4), height = c(2, 3) )
#測試用：
#layout( matrix( c(1, 0, 0, 0, 0, 0), nrow = 2, ncol = 3), width = c(2,1,4), height = c(2, 3) )
#layout( matrix( c(0, 1, 0, 0, 0, 0), nrow = 2, ncol = 3), width = c(2,1,4), height = c(2, 3) )
#layout( matrix( c(0, 0, 0, 1, 0, 0), nrow = 2, ncol = 3), width = c(2,1,4), height = c(2, 3) )
#layout( matrix( c(0, 0, 0, 0, 1, 0), nrow = 2, ncol = 3), width = c(2,1,4), height = c(2, 3) )
#layout( matrix( c(0, 0, 0, 0, 0, 1), nrow = 2, ncol = 3), width = c(2,1,4), height = c(2, 3) )

#第一張圖及文字(更換邊界文字顏色、到邊界距離)
plot( x1, xlab = "index", ylab = "cm", main = "Sepal.Length", sub = "From 1 to 150", cex = 0.8, pch = 16, col = "red" )
mtext( text = c("Bottom", "Left", "Top", "Right"), side =1:4 , col = palette( colors()[ grep( "pink",colors() ) ] ), line = -1.5 )

#第二張圖及文字(更換x座標軸名稱、顏色，點大小、樣式、顏色15種)
plot( x2, xaxt = "n", xlab = "", ylab = "m/1000", main ="Sepal.Width", sub = "From 1 to 150", cex = 1.50, pch = 15.0, col = colors(15.0))
axis( side = 1, col = "honeydew4", col.axis = "navy" )

#第三張圖及文字(更改標題大小，移除x軸標籤，加上中間那點漣漪、箭頭)
plot( x3, main = "Petal Length", cex = 0.7, cex.axis = 2, cex.lab = 1.5, xlab = "" )
for ( k in 1:5 ){ points( 99, x3[99] ,col = rainbow(1, start = 0+k/5.1 ), cex = 1+k )}
arrows(99, 2, 99, 2.65, code = 2, length = 0.1 ,lwd = 2.76, col = "steelblue2" )

#第四張圖及文字(更改數據點大小、樣式，標題大小，移除x座標軸標籤)
plot( x4, main = "Petal Width", xlab = "", cex.main = 2, las = 2, cex = 1, pch = 54 )

#第五張圖(隱藏座標軸、更改點的顏色)
plot(0, xlim = range(x1), ylim = ylim, type = "n", xlab = "", ylab = "", axes = F)
matpoints( x1, cbind(x2, x3, x4), col = c("purple", "red", "blue") )

#第五張圖的文字及座標軸
title( main = "Sepal.Length vs Sepal.Width, Petal.Length, Petal.Width", xlab = "Sepal.Length", ylab = "The Others", cex.main = 1.5, cex.lab = 0.9 )
legend( "topleft", legend = c("Sepal.Width","Petal.Length", "Petal.Width") )
axis( side = 2, col = "royalblue", col.axis = "darkcyan" )
axis( side = 1, col = "mediumpurple1", col.axis = "dodgerblue4" )



