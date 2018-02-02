library(tidyverse)
W1<-read.csv("/Users/jamesgallacher/Data 3/W1.csv")
head(W1,5)

new<-select(W1,pidp,a_hlwt,a_hlwts,a_hlwtp,a_hlwtk)
new<-select(W1,pidp,a_hlwt:a_hlwtk)

new<-W1 %>%
  select(pidp,a_hlwt:a_hlwtk)

head(new)


