
library(rpart)
library(rpart.plot)

gender= sample(c('M','F'), size=10000, prob=c(.6,.4), replace=T)
age= ceiling(rnorm(10000,35,3))
buy = sample(c('Yes', 'No'), size=10000, prob = c(.5,.5), replace= T)
df= data.frame(buy, age, gender)
head(df)

dtree1= rpart( buy~ gender+ age, data=df, minsplit=10, cp=.007)
dtree1
dtree1$variable.importance
rpart.plot(dtree1)

dtree1= rpart(buy ~ gender+age, data= df, minsplit=10, minbucket=4, cp= 0.005) #complexity parameter
dtree1
dtree1$variable.importance
rpart.plot(dtree1, cex=0.8, nn=T)

