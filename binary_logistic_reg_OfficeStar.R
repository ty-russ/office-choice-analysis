


# Office Star Choice 

# Make sure that you correctly write the data file name into """ below.
mydata <- read.csv("OfficeChoice2.csv")


## view the first few rows of the data
head(mydata)
summary(mydata)

## Using the logit model
# using glm function
mylogit <- glm(Choice ~ Expensive + Convenient + Service + Largechoice, data = mydata, family = "binomial")


summary(mylogit)



## odds ratios only
exp(coef(mylogit))


