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