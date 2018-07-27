#HW06
# Name：楊淯元
# ID：B05603043
# Subject：Phone
# Date: 4/20, 2017

Brand <- c("Apple", "HTC", "HTC", "ASUS", "ASUS")
Model <- c("iPhone7", "OneM8", "OneS9", "ZenFoneDeluxe", "ZenFoneZoom")
Price <- c(24500, 21900, 9990, 8990, 15990)
Screen <- c("4.7", "5", "5", "5.5", "5.5")
Weight <- c(138, 160, 158, 170, 185)
GB <- c(32, 16, 32, 16, 64)
Data <- c(20160916, 20140328, 20160617, 20150827, 20151201)
Number <- matrix(c(Price, Screen, Weight), nrow=5, ncol=3, byrow=FALSE)
Number
Phone <- data.frame(Brand, Model, Price, Screen, Weight, GB, Data)
Phone
PhoneCheap <- Phone[Phone$Price<=10000, ]
PhoneCheap
