#HW05
# Name：楊淯元
# ID：B05603043
# Subject：myNorm
# Date: 4/1, 2017

source('myNorm.R')

myNorm_iris <- 0; scale_iris <- 0 #歸零
#把iris資料庫第一行經自訂標準化函數後，取小數點後8位，並顯示
myNorm_iris <- sprintf("%.8f", myNorm(iris[ ,1])); myNorm_iris
#把iris資料庫第一行經內建標準化函數後，取小數點後8位，並顯示
scale_iris <- sprintf("%.8f", scale(iris[ ,1])); scale_iris 
#測試以上兩組數據是否一樣
all(myNorm_iris == scale_iris)

myNorm_CO2 <- 0; scale_CO2 <- 0 #歸零
#把CO2資料庫第五行經自訂標準化函數後，取小數點後8位，並顯示
myNorm_CO2 <- sprintf("%.8f", myNorm(CO2[ ,5])); myNorm_CO2
#把CO2資料庫第五行經內建標準化函數後，取小數點後8位，並顯示
scale_CO2 <- sprintf("%.8f", scale(CO2[ ,5])); scale_CO2
#測試以上兩組數據是否一樣
all(myNorm_CO2 == scale_CO2)
