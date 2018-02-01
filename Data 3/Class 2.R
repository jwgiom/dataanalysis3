setwd("/Users/jamesgallacher/Desktop")

table0<-read.table("https://raw.githubusercontent.com/abessudnov/dataanalysis3/master/exData/Table0.txt", 
                   header=FALSE)
table01<-read.table(file.choose(), 
                    header=FALSE)

table3<-read.table("https://raw.githubusercontent.com/abessudnov/dataanalysis3/master/exData/Table3.txt", 
                   header=TRUE, 
                   skip=2, 
                   na.strings= c("--","*","**"))


install.packages("readxl")
library(readxl)

table4<-read_excel("tableExcel.xlsx")

Hamlet<-read_lines("http://www.gutenberg.org/cache/epub/2265/pg2265.txt",skip=377)

hamlet<-as.data.frame(Hamlet)
