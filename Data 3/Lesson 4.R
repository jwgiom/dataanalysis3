library(tidyverse)
W1<-read.csv("/Users/jamesgallacher/Data 3/W1.csv")
head(W1,5)

new<-select(W1,pidp,a_hlwt,a_hlwts,a_hlwtp,a_hlwtk)
new<-select(W1,pidp,a_hlwt:a_hlwtk)

new<-W1 %>%
  select(pidp,a_hlwt:a_hlwtk)

head(new)


new2<- subset(W1, select = c("pidp","a_hlht"))

new3<-W1[,c(1,6:13)]


women<-filter(W1,a_sex<18,a_sex>25)
head(women)


women<-W1%>%
  filter(a_sex == 2 & a_dvage>=18 & a_dvage<=25)

inbred<-W1%>%
  filter((a_ukborn==3 |a_ukborn==4) & a_dvage>40)%>%
  head(2)

scot<-W1%>%
  mutate(soctland = ifelse(a_ukborn==2, 1,0))

?mutate()
