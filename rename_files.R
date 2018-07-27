setwd("/Users/yuyuan/Desktop/summer_intern/working_data/image_data/pdf/")
for(i in 105:114){
  file_name <- paste("Bergey_page", i, "_Table3.pdf", sep = '')
  # print(file_name)
  file_new_name <- strsplit(file_name, split="_Table3.",fixed=T)
  file_new_name <- paste(file_new_name[[1]], "_Table4.pdf", sep = '')
  # print(file_new_name[[1]])
  file.rename(file_name, file_new_name[[1]])
}

