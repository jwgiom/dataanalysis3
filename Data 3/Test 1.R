#Install Packages####

install.packages("tidyverse")
y
library(tidyverse)

#Read Data####

Data<-read_tsv("/Users/jamesgallacher/Desktop/R/UKDA-6614-tab/tab/us_w1/a_indresp.tab")
#File chosen is  a_indresp.tab

#Subsetting####

Gender<-Data$a_scsex
Educ<-c(Data$a_nqfhigh_dv,Data$a_qfhighfl_dv,Data$a_qfhigh_dv,Data$a_hiqual_dv)
Pol<- c(Data$a_vote1,Data$a_vote2,Data$a_vote3,Data$a_vote4,Data$a_vote5,Data$a_vote6)


