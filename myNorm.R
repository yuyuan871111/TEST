# Name：楊淯元
# ID：B05603043
# Subject：function-myNorm
# Date: 4/1, 2017

myNorm <- function(x){
  
  #average function
    data_length <- as.numeric(length(x))    #找出資料的長度（重複做的次數）
    data_sum <- 0                           #歸零data_sum
    #加總：下一項加前一項
    for(k in 1:data_length){
     data_sum <- data_sum+x[k]
    }
  data_mean <- data_sum/data_length         #平均：加總/資料長度

  #std
    data_diff <- rep(0, times=data_length)  #data_diff整組數據歸零
    #算出各項差值
    for(k in 1:data_length){
      data_diff[k] <- x[k]-data_mean
    }
    #差值平方加總：各項先平方後，再相加
    data_sqsum <- 0                         #data_sqsum歸零
    for(k in 1:data_length){
      data_sqsum <- data_sqsum+data_diff[k]^2   
    }
  data_std <- sqrt(data_sqsum/(data_length-1))  #標準差：data_sqsum 除以（總數-1），再開根號
  
  #Normalization
  data_Norm <- rep(0, times=data_length)        #歸零data_Norm
  #標準化：各項差值/標準差
  for(k in 1:data_length){
    data_Norm[k] <- data_diff[k]/data_std
  }
  return(data_Norm)
}
