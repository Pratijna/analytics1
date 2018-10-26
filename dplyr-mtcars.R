#analysis of dataset mtcars with dplyr

library(dplyr)
?mtcars
#structure of data set
str(mtcars)
dim(mtcars)
names(mtcars) #col names
rownames(mtcars) #row names
summary(mtcars)
t1=table(mtcars$am) #how many cars have auto transm
pie(t1)
19/32*360
pie(t1, labels=c('Auto','Manual'))

(t2=table(mtcars$gear))
pie(t2, labels=c('3 gear','4 gear','5 gear'))
barplot(t2, col=1:3)
barplot(t2, col=c('green','blue','yellow'), xlab='gear', ylab = 'no. of cars', ylim=c(0,20))
title(main='distribution of gears of cars', sub='no. of gears')
#using dplr %>% is chaining function
mtcars %>% select(mpg,gear) %>% slice(c(1:5,10)) #select from rows 1 to 5 and 10
mtcars %>% arrange(mpg)
#select for columns. slice for rows

(t3=table(mtcars$cyl))
pie(t3, label=c('4 cylinder','6 cylinder','8 cylinder')) #pie chart



