# Simple Linear Regression : Built in Data Set Women
# Check for assumptions of Regression in the data Set
women
?women
str(women)
fit = lm(weight ~ height, data=women)
?plot
#Initial Checks
cor(women$height, women$weight)
#there is Strong and Positive Relationship between height and weight
plot(women$height, women$weight)
par(mfrow=c(2,2))
plot(fit)

#one by one
par(mfrow=c(1,1))
plot(fit, which=2)
residuals

plot(women)

#Assumptions Regression
#Linearity----
#Linearity of the data. The relationship between the predictor (x) and the outcome (y) is assumed to be linear.
# component + residual plot 
plot(women$height, fitted(fit))
plot(residuals(fit) ~ fitted(fit))
plot(fit, which=1)
#residuals should be randomly distributed and not increase or decrease 

#Normality----
#Normality of residuals. The residual errors are assumed to be normally distributed.
plot(density(resid(fit)))
plot(fit, which=2)

#Homoscedasticity----
#Homogeneity of residuals variance. The residuals are assumed to have a constant variance (homoscedasticity - opposite of heteroscedasticity)
plot(fit, which=3)
#No funnel shape, random distribution of residuals
plot(fit, which=4)

#Auto-Correlation----
#Independence of residuals error terms. (Not dependent on previous values)
car::durbinWatsonTest(fit)
#pvalue < 0; Ho that there is no correlation (r2=0) is accepted

#Outliers
plot(fit, which=4)
#potential outliers are highlighted 1, 14, 15 row
women[c(1,14,15),]
summary(fit)
#Lets remove these values and then find R2
fit2 = lm(weight ~ height, data=women[-c(1,14,15),])
summary(fit2)
par(fit1)
