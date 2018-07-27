#HW07
# Name：楊淯元
# ID：B05603043
# Subject：ReadData
# Date: 4/30, 2017

#輸入資料前處理：清空暫存區
rm(list=ls())

#以資料框方式直接讀txt檔
myPhoneTxt <- read.table("HW07_Phone.txt")
#以資料框方式直接讀csv檔
myPhoneCsv <- read.table("HW07_Phone.csv")
#以資料框方式直接讀網路資料
myPhoneWebTab <- read.table("https://goo.gl/XHtXw8")
#以csv方式直接讀網路資料
myPhoneWebCsv <- read.csv("https://goo.gl/XHtXw8")
#以逐行方式直接讀html檔
myPhoneHTML <- readLines("HW07_Phone.html", warn=FALSE)

#顯示資料
myPhoneTxt
myPhoneCsv
myPhoneWebTab
myPhoneWebCsv
myPhoneHTML

#重讀資料
#第一列設為標題
myPhoneTxt <- read.table("HW07_Phone.txt", header=TRUE)
myPhoneTxt
#第一列設為標題，分隔資料
myPhoneCsv <- read.table("HW07_Phone.csv",sep=",", header=TRUE)
myPhoneCsv
#第一列設為標題，分隔資料
myPhoneWebTab <- read.table("https://goo.gl/XHtXw8", sep=",", header=TRUE)
myPhoneWebTab
#維持原樣
myPhoneWebCsv <- read.csv("https://goo.gl/XHtXw8")
myPhoneWebCsv
#擷取HTML檔中的資料框，行標題重新填
myPhoneHTML <- as.data.frame(readHTMLTable("HW07_Phone.html"))
colnames(myPhoneHTML)[c(1:7)] <- c("Brand", "Model", "Price", "Screen", "Weight", "GB", "Date")
myPhoneHTML

#建立矩陣
#輸入其中一個檔案(txt)資料中的三行資料，形成矩陣
Number <- matrix(c(myPhoneTxt[ ,3],myPhoneTxt[ ,4],myPhoneTxt[ ,5]), ncol=3, nrow=5)
Number
