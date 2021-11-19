#deliverable 1

#load in dplyr package
library(tidyverse)
library(dplyr)

#read in mechacar_mpg.csv
car_mpg_df <- read.csv(file="Resources/MechaCar_mpg.csv",check.names=F,stringsAsFactors = F)

#generate multiple linear regression model
lm(mpg ~ vehicle_length
   + vehicle_weight
   + spoiler_angle
   + ground_clearance
   + AWD,data=car_mpg_df) 

#generate summary stats
summary(lm(mpg ~ vehicle_length
           + vehicle_weight
           + spoiler_angle
           + ground_clearance
           + AWD,data=car_mpg_df))

#deliverable 2
# suspension_coil_df <- read.csv("~/Documents/Bootcamp/Homework/MechaCar_Statistical_Analysis/Resources/Suspension_Coil.csv")
# used import dataset > text (base) > resources > suspension_coil.csv

#summarize
total_summary <- suspension_coil_df %>% summarize(mean = mean(PSI), median = median(PSI), variance = var(PSI), SD = sd(PSI))
total_summary

#groupby lot and summarize
lot_summary <- suspension_coil_df %>% group_by(Manufacturing_Lot) %>% summarize(mean = mean(PSI), median = median(PSI), variance = var(PSI), SD = sd(PSI), .groups ='keep')
lot_summary

#deliverable 3
#determine if PSI across all manufacturing lots differs from population mean of 1,500 pounds per square inch
t.test(suspension_coil_df$PSI, mu=1500)

#t_test for each individual lot
t.test((subset(suspension_coil_df, Manufacturing_Lot == "Lot1"))$PSI, mu = 1500)

t.test((subset(suspension_coil_df, Manufacturing_Lot == "Lot2"))$PSI, mu = 1500)

t.test((subset(suspension_coil_df, Manufacturing_Lot == "Lot3"))$PSI, mu = 1500)

#deliverable 4

#create correlation matrix for car_mpg_df

library(corrplot)
df_cor <- cor(car_mpg_df)
corrplot(df_cor, method='number')

#linear regression model for vehicle length & mpg
lm(mpg ~ vehicle_length, data=car_mpg_df)

#summary stats
summary(lm(mpg ~ vehicle_length, data=car_mpg_df))

#add in ground_clearance
summary(lm(mpg ~ vehicle_length + ground_clearance, data=car_mpg_df))