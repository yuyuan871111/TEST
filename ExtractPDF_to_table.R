setwd("/Users/yuyuan/Desktop/summer_intern/working_data/")
library(pdftools)
pdf_text("PAGE.pdf") -> data_pages
data_pages
paste(data_pages[1],data_pages[2], data_pages[3], sep = '') -> data_pages_raw
as.character(data_pages_raw)
data_pages_raw <- paste("\n", data_pages_raw, sep = "")
data_pages_raw <- gsub("P", replacement="p", data_pages_raw)
data_pages_split <- strsplit( data_pages_raw, split = "\np" )
data_pages_split
data_pages_dataframe <- as.data.frame(data_pages_split)
data_pages_dataframe
write.csv2(data_pages_dataframe, file = "PAGE.csv") 
?as.data.frame
