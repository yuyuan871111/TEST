# Name：楊淯元
# ID：B05603043
# Subject： FormatOperation
# Date: 3/15, 2017

#建立數列並顯示，c:手動輸入，seq：等差，as.numeric：數字的形式
i <- as.numeric(1:10); i
t <- as.numeric(c(0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0)); t
x <- as.numeric(seq(from=1, to=10, by=2)); x
y <- as.numeric(c(x+1)); y

#簡單運算並顯示
t3 <- t*3; t3
#最大、最小、平均、標準差
max(t); min(t); mean(t); sd(t) 
#範圍、數列長度
range(t); length(t)

#變數運算並顯示
xy <- x*y; xy
i2 <- log2(i); i2
tc <- cos(2*t*pi); tc
tci2 <- tc*i2; tci2

#文字處理
mymonth <- as.character(c("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"))
#縮短擷取
substring(mymonth, first=1, last=3) -> mymonthshort
#增加字元並顯示
paste(mymonthshort, ".", sep="")

