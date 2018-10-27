#create vector of student names
studentname= paste('Student',1:1000, sep='-')
summary(studentname)


xy=101:200
xy= studentname
length(xy)
(index= sample(length(xy), size=.6*length(xy)))
length(index)

train1= xy[index]
test1 = xy[-index]
train1
test1


#create a large df
sname= paste('S',1:1000, sep='-')
gender= sample(x=c('male', 'female'), size = 1000, prob = c(.6,.4), replace = T)
marks= ceiling(rnorm(1000,60,10))
df= data.frame(sname, gender, marks)
head(df)
table(df$gender)
length(df) #no. of rows
?sample
#split df inti 2 part 70% and 30%, train 70% test 30%
index2 = sample( x= nrow(df), size = 0.7*nrow(df)) #nrow gives length for data frame
index2
length(index2)
df[1,]  #print 1st row
df[1:5,] #print 1 to 5 rows
df[c(1,5,7),]  #print 1, 5, 7 rows
train2 = df[index2,]
nrow(train2)
test2= df[-index2,]
nrow(test2)

#using caret
library(caret)
table(df$gender)
prop.table(table(df$gender))
(index3= createDataPartition(y=df$gender, p=0.7, list=F))
length(index3)
(train3= df[index3,])
(test3= df[-index3,])
(t3a=table(train3$gender))
prop.table(t3a)
(t3b=table(test3$gender))
prop.table(t3b)
#same proportion in both samples
nrow(women)
