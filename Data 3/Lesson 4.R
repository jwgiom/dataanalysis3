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

# More complicated case: create two (cleaned) variables for people's height in cm
# and weight in kg. (You can use dplyr or base R).

W1mod<- W1%>%
  mutate(heightcm = ifelse(a_hlht==1,
                           a_hlhtf*30.48 + a_hlhti*2.54,
                           ifelse(a_hlht ==2 & a_hlhtc >0,
                                  a_hlhtc,NA))) %>%
  mutate(weightkg = ifelse(a_hlwt ==1,
                           a_hlwts*6.35 + a_hlwtp*0.45,
                           ifelse(a_hlwt==2 & a_hlwtk>0,
                                  a_hlwtk,NA)))%>%
  mutate(bmi=weightkg/(heightcm/100)^2)
  
?arrange()

W1%>%
  arrange(desc(a_dvage))

# 7. Summarising data: summarise()

# a) Use summarise to find mean and median BMI and the proportion of people
# with BMI > 30 in the sample of people aged 25 to 55.

W1mod %>%
  filter(a_dvage >= 25 & a_dvage <= 55) %>%
  mutate(bmiover30 = ifelse(bmi > 30,1,0)) %>%
  summarise(
    meanBMI = mean(bmi, na.rm = TRUE),
    meadianBMI = median(bmi, na.rm = TRUE),
    proportion = mean(bmiover30, na.rm = TRUE))

# 8. Producing summary statistics by group:
# group_by() and summarise()

# Group the same by sex and age ("young": 18-35, "middle-aged": 36-55, "older": >55)
# and produce mean and median BMI and the proportion of people with BMI over 30 in each group.

young<-W1mod %>%
  group_by(a_sex,)
 
# Window functions in dplyr:
#   https://cran.r-project.org/web/packages/dplyr/vignettes/window-functions.html

