# MechaCar_Statistical_Analysis

## Overview
### Purpose
- Become familiar with R and using RStudio.
- Load in, transform, group, and reshape datasets using tidyverse.
- Plot complex visual graphs (bar, box, scatter, line, heatmap) and interpret plot results with ggplot2.
- Introduction to statistical tests and hypothesis testing.
- Use T-tests, ANOVA tests and interpret results. 
- Calculate correlation between variables.
- Create single and multiple linear regression models and interpret summary statistics.
- Compare categorical data using chi-square.
- Become familiar A/B testing, comparing control (unchanged) and experimental (changed).
- Decide which statistical test most suits the data and desired result.


### Resources
- Languages: R
- Interface: RStudio
- Packages and Software: tidyverse, dplyr, corrplot, ggplot2


## Deliverable 1
### Linear Regression to Predict MPG
A simple multiple linear regression was performed on the dataset, including all of the variables.

![Linear Regression Model](https://raw.githubusercontent.com/li-emily/MechaCar_Statistical_Analysis/main/Resources/Images/d1_mlr.png)

Summary statistics of the above multiple linear regression, to determine if the model is a good fit.

![Summary Statistics](https://raw.githubusercontent.com/li-emily/MechaCar_Statistical_Analysis/main/Resources/Images/d1_ss.png)

Based on the Pr( > | t | ) values, the intercept, vehicle length, and ground clearance are likely provide non-random amounts of variance to the linear model predicting mpg values.

The null hypothesis would have been that the slope of the linear model is zero. However, our p-value is 5.35e-11, which is less than our assumed significance level of 0.05%. Thus, we reject the null hypothesis that the slope is zero.

Based on the adjusted R-squared value, this model is able to predict around 68% of the variance of mpg for MechaCars. This is decent, but since there are so many variables, we should look more into which actually should be added to the model.

## Deliverable 2
### Summary Statistics on Suspension Coils
Summary statistics to grab the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

![Total Summary](https://raw.githubusercontent.com/li-emily/MechaCar_Statistical_Analysis/main/Resources/Images/d2_total_summary.png)

Same as above, but grouped data by manufacturing lot for more clear results.

![Lot Summary](https://raw.githubusercontent.com/li-emily/MechaCar_Statistical_Analysis/main/Resources/Images/d2_lot_summary.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The overall total summary was able to have the PSI variance at 62.29, which is within the requirements. While looking at the lots individually, we can see that Lot 1 and Lot 2 have variances of 0.98 and 7.47 respectively. However, Lot 3 has a variance of 170, which greatly exceeds the PSI variance specifications of no more than 100.

## Deliverable 3
### T-Tests on Suspension Coils

Performed t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

---

Overall t-test has a p-value of 0.06. This is greater than the p-value of 0.05, so we do not reject null hypothesis that there is no difference between the means.

![Overall t-test](https://raw.githubusercontent.com/li-emily/MechaCar_Statistical_Analysis/main/Resources/Images/d3_t_test.png)


---
Lot 1 t-test has a p-value of 1. This is greater than the p-value of 0.05, so we do not reject null hypothesis that there is no difference between the means.

![Lot 1 t-test](https://raw.githubusercontent.com/li-emily/MechaCar_Statistical_Analysis/main/Resources/Images/d3_lot1.png)


---

Lot 2 t-test has a p-value of 0.61. This is greater than the p-value of 0.05, so we do not reject null hypothesis that there is no difference between the means.

![Lot 2 t-test](https://raw.githubusercontent.com/li-emily/MechaCar_Statistical_Analysis/main/Resources/Images/d3_lot2.png)


---

Lot 3 t-test has a p-value of 0.04. This is less than the p-value of 0.05, so we do reject null hypothesis that there is no difference between the means. This suggests that there is a statistically significant difference between Lot 3's mean PSI and the population mean PSI of 1500.

![Lot 3 t-test](https://raw.githubusercontent.com/li-emily/MechaCar_Statistical_Analysis/main/Resources/Images/d3_lot3.png)


## Deliverable 4
### Study Design: MechaCar vs Competition

For a comparison of MechaCar against the competition, we will consider safety rating. Our question would then be: "Is there any statistical difference in the safety rating based on brand?"

The null hypothesis would be that there is no significant difference between the means of MechaCar and competitors, while the alternative would be that there is a significant difference.

We will use a one-way ANOVA to easily compare the groups. This is because if we are comparing more than two groups, ANOVA is easier to manage because t-tests would require a separate test to be performed for each pair.

All of the data will need to be in one dataset. Brand type will have to be input as a categorical vector while safety rating should be a continuous numerical vector. 