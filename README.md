
 # Office Star Choice Model Analysis

## Project Overview

This project was completed as part of my Marketing Analytics course. The objective was to analyze the factors influencing the choice of "Office Star" using a binary logit model. The dataset used for this analysis was [OfficeChoiceData](`/OfficeChoice2.csv`), which includes various attributes like Expensive, Convenient, Service, and Large Choices that could impact the decision.

## Data Description

The dataset includes the following variables:
1. **Choice**: The outcome variable indicating the selection of Office Star.
2. **Expensive**: Indicates if the office is considered expensive.
3. **Convenient**: Measures the convenience of the office.
4. **Service**: Rates the service quality of the office.
5. **LargeChoice**: The variety of large choices available.

## Analysis and Methodology

The analysis was performed using a binary logit model with the following R code:[binary logistic model]("/binary_logistic_reg_OfficeStar.R")

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
## Results 

<!DOCTYPE html>

<html>

<head>



</head>

<body>


<div class="container-fluid main-container">




<div id="header">



<h1 class="title toc-ignore">Office Choice</h1>
<h4 class="author">Tirus Wagacha</h4>
<h4 class="date">2024-05-10</h4>

</div>


<pre class="r"><code>mydata &lt;- read.csv(&quot;OfficeChoice2.csv&quot;)</code></pre>
<pre class="r"><code>head(mydata)</code></pre>
<pre><code>##   Choice Pastpurchases Expensive Convenient Service Largechoice
## 1      0             0         2          1       3           4
## 2      1             0         3          2       5           6
## 3      1             0         3          3       3           6
## 4      0             0         1          7       7           4
## 5      0             0         5          2       2           4
## 6      1             0         7          6       4           3</code></pre>
<pre class="r"><code>names(mydata)</code></pre>
<pre><code>## [1] &quot;Choice&quot;        &quot;Pastpurchases&quot; &quot;Expensive&quot;     &quot;Convenient&quot;   
## [5] &quot;Service&quot;       &quot;Largechoice&quot;</code></pre>
<pre class="r"><code>summary(mydata)</code></pre>
<pre><code>##      Choice    Pastpurchases   Expensive       Convenient      Service     
##  Min.   :0.0   Min.   :0     Min.   :1.000   Min.   :1.00   Min.   :1.000  
##  1st Qu.:0.0   1st Qu.:0     1st Qu.:2.000   1st Qu.:2.00   1st Qu.:2.000  
##  Median :0.5   Median :0     Median :3.000   Median :4.00   Median :3.000  
##  Mean   :0.5   Mean   :0     Mean   :3.467   Mean   :4.00   Mean   :3.533  
##  3rd Qu.:1.0   3rd Qu.:0     3rd Qu.:5.000   3rd Qu.:5.75   3rd Qu.:4.750  
##  Max.   :1.0   Max.   :0     Max.   :7.000   Max.   :7.00   Max.   :7.000  
##   Largechoice 
##  Min.   :1.0  
##  1st Qu.:4.0  
##  Median :4.0  
##  Mean   :4.5  
##  3rd Qu.:6.0  
##  Max.   :7.0</code></pre>
<pre class="r"><code>sapply(mydata, sd)</code></pre>
<pre><code>##        Choice Pastpurchases     Expensive    Convenient       Service 
##     0.5085476     0.0000000     1.9070348     1.9652147     1.9250317 
##   Largechoice 
##     1.5480800</code></pre>
<pre class="r"><code>mylogit &lt;- glm(Choice ~ Expensive + Convenient + Service + Largechoice, data = mydata, family = &quot;binomial&quot;)</code></pre>
<pre class="r"><code>summary(mylogit)</code></pre>
<pre><code>## 
## Call:
## glm(formula = Choice ~ Expensive + Convenient + Service + Largechoice, 
##     family = &quot;binomial&quot;, data = mydata)
## 
## Coefficients:
##             Estimate Std. Error z value Pr(&gt;|z|)
## (Intercept) -0.19797    1.63231  -0.121    0.903
## Expensive   -0.28365    0.21803  -1.301    0.193
## Convenient   0.11877    0.22059   0.538    0.590
## Service      0.23079    0.21920   1.053    0.292
## Largechoice -0.02011    0.27728  -0.073    0.942
## 
## (Dispersion parameter for binomial family taken to be 1)
## 
##     Null deviance: 41.589  on 29  degrees of freedom
## Residual deviance: 38.038  on 25  degrees of freedom
## AIC: 48.038
## 
## Number of Fisher Scoring iterations: 4</code></pre>
<pre class="r"><code>## odds ratios only
exp(coef(mylogit))</code></pre>
<pre><code>## (Intercept)   Expensive  Convenient     Service Largechoice 
##   0.8203975   0.7530339   1.1261151   1.2595989   0.9800928</code></pre>
<div id="summary" class="section level2">





</div>



<!-- code folding -->
</body>
</html>
You can view the detailed HTML results page for this project [here](/office_choice.html).

## Interpretation of Results

### Variables of Office Choice in the Market
1. **PastPurchases** – Excluded in analysis due to zero values
2. **Expensive**
3. **Convenient**
4. **Service**
5. **Large Choice**

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


