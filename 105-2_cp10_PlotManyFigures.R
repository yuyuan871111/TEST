# U10: 多重繪圖與顏色

######################################
# 多張圖形 – mfrow, mfcol

#   mfrow(  )	# 依照橫列 (by row) 順序畫出
#   mfcol(  )	# 依照直行 (by column) 順序畫出
#   cex.axis:	# 座標軸數字，文字及符號相對於內定值之縮放比
#   cex.lab:	# 座標軸標記文字及符號相對於內定值之縮放比
#   cex.main:	# 主標題（上標題）文字及符號相對於內定值之縮放比
#   cex.sub:	# 副標題（下標題）文字及符號相對於內定值之縮放比
  
  
par( mfrow = c(2, 2), mex = 0.8, mar = c(5, 5, 4, 2) + 0.1 )

plot( cars, main = "cars data", cex = 2 ) 
plot( cars, main = "cars data", cex.axis = 2 )
plot( cars, main = "cars data", cex.lab = 2 )
plot ( cars, main = "cars data", cex.main = 2 )

# 多張圖形 – las

#   las:		# 座標軸數字，文字之展現方式
#   las = 0	# 0: always parallel to the axis [default]
#   las = 1	# 1: always horizontal
#   las = 2	# 2: always perpendicular to the axis
#   las = 3	# 3: always vertical

plot( cars, main = "las = 0", las = 0 )
# 0: always parallel to the axis [default]

plot( cars, main = "las = 1", las = 1 )
# 1: always horizontal

plot( cars, main = "las = 2", las = 2 )
# 2: always perpendicular to the axis

plot( cars, main = "las = 3", las = 3 )
# 3: always vertical

plot( cars, main = "las = 0", las = 0 )  # 0: always parallel to the axis [default]
plot( cars, main = "las = 1", las = 1 )  # 1: always horizontal
plot( cars, main = "las = 2", las = 2 )  # 2: always perpendicular to the axis
plot( cars, main = "las = 3", las = 3 )  # 3: always vertical

# 多張圖形 – type

#   type:	# 點跟點之間的展現方式
#   type = "p"		# "p" for points
#   type = "l"		# "l" for lines
#   type = "b"		# "b" for both
#   type = "o"		# "o" for both ‘overplotted’
#   type = "h"		# "h" for histogram-like vertical lines
#   type = "n"		# "n" for no plotting


par( mfrow = c(2, 3), mex = 0.6, mar = c(5, 4, 4, 2) + 0.1 )

plot( cars, type = "p", main = "type = p" )	# "p" for points
plot( cars, type = "l", main = "type = l" )	# "l" for lines
plot( cars, type = "b", main = "type = b" )	# "b" for both
plot( cars, type = "o", main = "type = o" )	# "o" for both ‘overplotted’
plot( cars, type = "h", main = "type = h" )	# "h" for histogram-like vertical lines
plot( cars, type = "n", main = "type = n" )	# "n" for no plotting


plot( cars, type = "p", main = "type = p" )	# "p" for points
plot( cars, type = "l", main = "type = l" )	# "l" for lines
plot( cars, type = "b", main = "type = b" )	# "b" for both
plot( cars, type = "o", main = "type = o" )	# "o" for both ‘overplotted’
plot( cars, type = "h", main = "type = h" )	# "h" for histogram-like vertical lines
plot( cars, type = "n", main = "type = n" )	# "n" for no plotting


######################################
# 多張圖形之位置安排

# layout( M, widths, heights )
# M 是圖形分佈的矩陣，
# widths、heights 各是設定 M 矩陣長、寬的比例，其基準點是左上角

# 幾張圖繪製在一起

layout( matrix( c( 1, 2, 3, 4) , 2, 2, byrow = T ), widths = c(1,1), heights = c(1,1) )
# matrix( c( 1, 2, 3, 4) , 2, 2, byrow = T )

plot( iris[  , 1 ] )
plot( iris[  , 2 ] )
plot( iris[  , 3 ] )
plot( iris[  , 4 ] )

# 幾張圖繪製在一起

layout( matrix( c( 1, 2, 3, 4) , 2, 2, byrow = T ), widths = c(1,1), heights = c(1,1) )

hist( iris[  , 1 ] )
hist( iris[  , 2 ] )
hist( iris[  , 3 ] )
hist( iris[  , 4 ] )

# 幾張圖繪製在一起

layout( matrix( c( 1, 2, 3, 4, 5, 6, 7, 8) , 4, 2, byrow = T ), widths = c(1,1), heights = c(1,1,1,1) )
# matrix( c( 1, 2, 3, 4, 5, 6, 7, 8) , 4, 2, byrow = T )
# heights = c(1,1,1,1) 

plot( iris[  , 1 ] )
hist( iris[  , 1 ] )

plot( iris[  , 2 ] )
hist( iris[  , 2 ] )

plot( iris[  , 3 ] )
hist( iris[  , 3 ] )

plot( iris[  , 4 ] )
hist( iris[  , 4 ] )

# 幾張圖繪製在一起

layout( matrix( c( 1, 2, 3, 4, 5, 6, 7, 8) , 4, 2, byrow = T ), widths = c(1,2), heights = c(1,1,1,1) )
# widths = c(1,2)

plot( iris[  , 1 ] )
hist( iris[  , 1 ] )

plot( iris[  , 2 ] )
hist( iris[  , 2 ] )

plot( iris[  , 3 ] )
hist( iris[  , 3 ] )

plot( iris[  , 4 ] )
hist( iris[  , 4 ] )

# 幾張圖繪製在一起

layout( matrix( c( 1, 2, 3, 4) , 2, 2, byrow = T ), widths = c(2,1), heights = c(1,1) )
# widths = c(2,1)

plot( iris[  , 1 ] )
hist( iris[  , 1 ] )
plot( iris[  , 2 ] )
hist( iris[  , 2 ] )

# 幾張圖繪製在一起

layout( matrix( c( 1, 2, 3, 4) , 2, 2, byrow = T ), widths = c(1,1), heights = c(2,1) )
# heights = c(2,1)

plot( iris[  , 1 ] )
hist( iris[  , 1 ] )
plot( iris[  , 2 ] )
hist( iris[  , 2 ] )

# 幾張圖繪製在一起
layout( matrix( c( 1, 2, 3, 4) , 2, 2, byrow = T ), widths = c(1,3), heights = c(1,1) )
# widths = c(1,3)

plot( iris[  , 1 ] )
hist( iris[  , 1 ] )
plot( iris[  , 2 ] )
hist( iris[  , 2 ] )

# 幾張圖繪製在一起
layout( matrix( c( 1, 2, 3, 4) , 2, 2, byrow = T ), widths = c(1,3), heights = c(1,3) )
# widths = c(1,3), heights = c(1,3)

plot( iris[  , 1 ] )
hist( iris[  , 1 ] )
plot( iris[  , 2 ] )
hist( iris[  , 2 ] )

# 幾張圖繪製在一起

layout( matrix( c( 1, 2, 3, 0) , 2, 2, byrow = T ), widths = c(1,1), heights = c(1,1) )
# c( 1, 2, 3, 0)

plot( iris[  , 1 ] )
plot( iris[  , 2 ] )
plot( iris[  , 3 ] )

# 幾張圖繪製在一起
layout( matrix( c( 1, 0, 2, 3) , 2, 2, byrow = T ), widths = c(1,1), heights = c(1,1) )
# c( 1, 0, 2, 3)

plot( iris[  , 1 ] )
plot( iris[  , 2 ] )
plot( iris[  , 3 ] )

# 幾張圖繪製在一起
layout( matrix( c( 1, 0, 0, 2) , 2, 2, byrow = T ), widths = c(1,1), heights = c(1,1) )
# c( 1, 0, 0, 2)

plot( iris[  , 1 ] )
plot( iris[  , 2 ] )

# 繪圖 – 圖形位置安排
# par( fig = c( x1, x2, y1, y2 ) )
# par( fig = c( 0, 0.8, 0.7, 1 )  ) 
# 圖1 的 左下角座標 (x1,y1) 是 (   0, 0.7 ) , 
# 圖1 的 右上角座標 (x2,y2) 是 ( 0.8, 1   )

# 幾張圖繪製在一起

par( fig=c(   0, 0.8,   0, 0.7 ), new=TRUE )
plot( iris[  , 1 ] )

par( fig=c(   0, 0.8, 0.7,   1 ), new=TRUE )
plot( iris[  , 2 ] )

par( fig=c( 0.8,   1,    0, 0.7 ), new=TRUE )
plot( iris[  , 3 ] )

par( fig=c( 0.8,   1,   0.7, 1  ), new=TRUE )
plot( iris[  , 4 ] )

# 多張圖形 – layout

layout( matrix( 1:4, nrow = 2 ) )
# 2x2 的圖形矩陣，依照指定的位置

layout( matrix( c(1, 2, 1, 3), nrow = 2, ncol = 2 ) )

layout( matrix( c(1, 2, 0, 3), nrow = 2, ncol = 2), width = c(2, 1), height = c(1, 1.5) )



layout( matrix( 1:4, nrow = 2) )
# 1:4

plot( cars, las = 0, main = "las = 0" )  
plot( cars, las = 1, main = "las = 1" )  
plot( cars, las = 2, main = "las = 2" )  
plot( cars, las = 3, main = "las = 3" )  

layout(1)
# re-set as 1x1


layout( matrix( c(1, 2, 1, 3), nrow = 2, ncol = 2) )
# c(1, 2, 1, 3)

plot( cars, las = 1, main = "las = 1" )  
plot( cars, las = 2, main = "las = 2" )  
plot( cars, las = 3, main = "las = 3" )  

layout(1)
# re-set as 1x1

layout( matrix( c(1, 2, 0, 3), nrow = 2, ncol = 2), width = c(2, 1), height = c(1, 1.5))
# c(1, 2, 0, 3)

plot( cars, las = 1, main = "las = 1" )
plot( cars, las = 2, main = "las = 2" )
plot( cars, las = 3, main = "las = 3" )

layout(1)
# re-set as 1x1

###############################################
# 加入圖形元件

# 加入圖形元件 – 點 線 框

# points( )		# 打點
# lines( )		# 畫線
# abline( ) 		# 畫 y = b x + a 的直線
# segments( ) 		# 畫線段
# arrows( ) 		# 畫箭頭
# box( ) 		# 在原圖形最外圍加上框框
# lty			# 直線的樣式
# lwd			# 直線的寬度

# data
x <- c( 2, 3, 4 )
y <- c( 6, 7, 8 )

# widows setting
par( mex = 0.8, mar = c(5, 4, 4, 2) + 0.1 )

# plot data
plot( 0:10, 0:10, xlab = "", ylab = "", pch = 1:11, col = 1:8, axes = FALSE )

# axis
axis( side = 1, at = 0:10 )
axis( side = 2, at = 0:10 )
box()

# add lines
lines( c(1, 2), c(9, 10), col = "yellow", lwd = 3 )
abline( a = -2, b = 1, col = "gold", lwd = 2 )

# horizontal line
abline( h = 1:3, lty = 1:3, lwd = c(1.0, 1.5, 2.0), col = c("red", "green", "blue") ) 

# vertical lines
abline( v = 6:8, lty = 1:3, lwd = c(1.0, 1.5, 2.0), col = c("red", "green", "blue") ) 

# add points
points( x, y, col = "violet", pch = 16, cex = 2 )

# add segments
segments( x[1], y[1], x[2], y[2], col = "violet", lwd = 2) 
segments( x[2], y[2], x[3], y[3], col = "dark violet", lwd = 2 )

# add arrows
arrows( 1, 7, 1, 8, code = 1, length = 0.1, col = "pink", lwd = 2 )
arrows( 2, 8, 3, 9, code = 2, length = 0.1, col = "pink", lwd = 2 )

##########################################
# 呈現多筆數據於一張圖

# matplot( )
# matpoints( )
# matlines( )

x <- seq(from = -pi, to = pi, length = 101)
y1 <- sin(x)
y2 <- cos(x)
y3 <- sin(x) + cos(x)

ylim <- range(y1, y2, y3)

par( mex = 0.8, mar = c(5, 4, 3, 1) + 0.1 )

plot( x, y1, xlim = range(x), ylim = ylim, type = "n", xaxt = "n", xlab = "x", ylab = "", main = "Using matpoints()" )
# 
label <- expression( -pi, -pi / 2, 0, pi / 2, pi )
axis( side = 1, at = c(-pi, -pi / 2, 0, pi / 2, pi), label = label )

#####
matpoints( x, cbind(y1, y2, y3), type = "l", col = c("red", "green", "blue"), lty = 1:3, lwd = 1:3 ) 

legend( "topleft", legend = c("y1", "y2", "y3"), col = c("red", "green", "blue"), lty = 1:3, lwd = 1:3 )


### 
par( mex = 0.8, mar = c(5, 4, 3, 1) + 0.1 )

plot( x, y1, xlim = range(x), ylim = ylim, type = "n", xaxt = "n", xlab = "x", ylab = "", main = "Using matlines()" )

label <- expression( -pi, -pi / 2, 0, pi / 2, pi )
axis( side = 1, at = c(-pi, -pi / 2, 0, pi / 2, pi), label = label )

#####
matlines( x, cbind(y1, y2, y3), col = c("red", "green", "blue"), lty = 1:3, lwd = 1:3 )

legend( "topleft", legend = c("y1", "y2", "y3"), col = c("red", "green", "blue"), lty = 1:3, lwd = 1:3 )

####################################
# 顏色

# palette( )

par( mex = 0.8, mar = c(4, 2, 2, 2) + 0.1 )

barplot( 1:8, col = palette(), names.arg = 1:8, yaxt = "n" )

# 顏色 – 調色盤

n <- 10

par( mfrow = c(2, 3), mex = 0.6, mar = c(5, 4, 4, 2) + 0.1 )

barplot( 1:n, col = colors(n), names.arg = 1:n, yaxt = "n", main = "colors" )

barplot( 1:n, col = rainbow(n), names.arg = 1:n, yaxt = "n", main = "rainbow" )

barplot( 1:n, col = heat.colors(n), names.arg = 1:n, yaxt = "n", main = "heat.colors" )

barplot( 1:n, col = terrain.colors(n), names.arg = 1:n, yaxt = "n", main = "terrain.colors" )

barplot( 1:n, col = topo.colors(n), names.arg = 1:n, yaxt = "n", main = "topo.colors" )

barplot( 1:n, col = cm.colors(n), names.arg = 1:n, yaxt = "n", main = "cm.colors" )
# cm: cyan-magenta

# 顏色 – 灰階圖

layout(1)

gray.scale <- seq( from = 0, to = 1, length = 10 )

par( mex = 0.8, mar = c(4, 2, 2, 2) + 0.1 )

barplot( 1:10, col = gray(gray.scale), names.arg = 1:10, yaxt = "n", main = "gray scale" )
# From 0 (black) -> 1 (white)

# 顏色 – 自行定義調色盤
# palette( terrain.colors(20) )  		# redefine palette
# palette( )

layout(1)
par( mex = 0.8, mar = c(4, 2, 2, 2) + 0.1 )

palette( terrain.colors(20) )  	

barplot( 1:20, col = 1:20, names.arg = 1:20, yaxt = "n" )  

palette( "default" )  	

barplot( 1:20, col = 1:20, names.arg = 1:20, yaxt = "n" )  

# 顏色有關的指令

colors( )				# 所有的內建顏色的指令

colors()[ grep( "pink", colors() ) ]	# 所有與粉紅色有關的指令

# show.colors( )			# 展現各種內顏色的名稱與顏色

library( DAAG )			# Tools/Install Packages : DAAG

show.colors( type = "singles", order.cols = TRUE )  	# single shade
show.colors( type = "shades", order.cols = TRUE )  	# multiple shades
show.colors( type = "gray", order.cols = TRUE )  	# gray shades


# 使用顏色圖形參數
#   col 			# 一般狀況之繪圖顏色設定
#   col.axis		# 座標軸的顏色：內定是黑色
#   col.lab		# 座標軸標記文字的顏色：內定是黑色
#   col.main		# 主標題（上標題）的顏色：內定是黑色
#   col.sub		# 副標題（下標題）的顏色：內定是黑色
#   bg 			# 背景顏色：內定是透明

par( bg = "lightyellow", col.main = "navy", col.lab = "magenta", mex = 0.8, mar = c(5, 5, 4, 3) + 0.1 )

plot( 0:10, 0:10, pch = 16, col = rainbow(10), main = "Main title", xlab = "X axis", ylab = "Y axis", axes = FALSE )

# 設定四邊的文字符號
axis( side = 1, col = "black", col.axis = "red", at = 0:10, label = LETTERS[1:11] )

axis( side = 2, col = "green", col.axis = "blue", at = seq(from = 0, to = 10, by = 1) )

axis( side = 3, col = "cyan", col.axis = "magenta", at = seq(from = 0, to = 8, by = 1) )

axis( side = 4, col = "yellow", col.axis = "gray", at = seq(from = 2, to = 10, by = 2), label = c(20, 40, 60, 80, 100) )

mtext( text = c( "Bottom", "Left", "Top", "Right" ), side = 1:4, col = 1:4, line = -2 )


