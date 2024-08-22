
 # Office Star Choice Model Analysis

## Project Overview

This project was completed as part of my Marketing Analytics course. The objective was to analyze the factors influencing the choice of "Office Star" using a binary logit model. The dataset used for this analysis was `OfficeChoice2.csv`, which includes various attributes like Expensive, Convenient, Service, and Large Choices that could impact the decision.

## Data Description

The dataset includes the following variables:
1. **Choice**: The outcome variable indicating the selection of Office Star.
2. **Expensive**: Indicates if the office is considered expensive.
3. **Convenient**: Measures the convenience of the office.
4. **Service**: Rates the service quality of the office.
5. **LargeChoice**: The variety of large choices available.

## Analysis and Methodology

The analysis was performed using a binary logit model with the following R code:

```r
mydata <- read.csv("OfficeChoice2.csv")

# View the first few rows of the data
head(mydata)
summary(mydata)

# Binary logit model
mylogit <- glm(Choice ~ Expensive + Convenient + Service + Largechoice, 
               data = mydata, family = "binomial")

# Model summary
summary(mylogit)

# Odds ratios
exp(coef(mylogit))
```
## Interpretation of Results

### Coefficient Estimates

- **Intercept**: The log odds of making a choice when all variables are zero is -0.19797.
- **Expensive**: A one-unit increase in Expensive decreases the log odds of choosing Office Star by approximately 0.28365.
- **Convenient**: A one-unit increase in Convenience increases the log odds of choosing Office Star by approximately 0.11877.
- **Service**: A one-unit increase in Service increases the log odds of choosing Office Star by approximately 0.23079.
- **LargeChoice**: A one-unit increase in LargeChoice decreases the log odds of choosing Office Star by approximately 0.02011.

### Odds Ratios

- **Expensive**: An odds ratio of 0.753 suggests that the likelihood of choosing Office Star decreases by a factor of 0.753 for a one-unit increase in Expensive.
- **Convenient**: An odds ratio of 1.126 suggests that the likelihood of choosing Office Star increases by a factor of 1.126 for a one-unit increase in Convenience.
- **Service**: An odds ratio of 1.259 suggests that the likelihood of choosing Office Star increases by a factor of 1.259 for a one-unit increase in Service.
- **LargeChoice**: An odds ratio of 0.980 suggests that the likelihood of choosing Office Star decreases by a factor of 0.980 for a one-unit increase in LargeChoice.

## Key Findings

Based on the results, the most important factors influencing the choice of Office Star are:

- **Convenience**: With an odds ratio of 1.13, convenience is a significant driver of choice.
- **Service**: With an odds ratio of 1.25, service quality is also a crucial factor in making the choice.

## Conclusion

The analysis highlights that among the attributes considered, convenience and service quality play the most significant roles in the selection of Office Star. This insight can guide marketing strategies and service improvements to enhance customer satisfaction.


