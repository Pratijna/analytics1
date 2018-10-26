#data structures

x=1:10
x
x1<-1:20
x1
(x1=1:30)
(x2=c(1,2,13,4,5))
class(x2)

(x3=letters[1:10])
class(x3)
LETTERS[1:26]
(x3b = c('a',"Dhiraj","4"))
class(x3b)

(x4=c(T,FALSE,TRUE,T,F))
class(x4)

x5=c(3L,5L)
class(x5)
x5a = c(3,5)
class(x5a)
(x5b = c(1, 'a',T, 4L))
class(x5b)

(x6 = seq(0,100,by=3))
ls()
x6
length(x6)
x6[20]
x6[3]

x6[seq(1,length(x6),2)]
x6[c(2, 4)]     
x6[-1]          
x6[-c(1:10, 15:20)]
x6[c(2, -4)] 
x6[c(2.4, 3.54)] 
x6[-c(1,5,20)]

set.seed(123)
(x6= sample(1:20))
sort(x6)
sort(x6[-c(1,2)]) #remove 1st 2 elements
sort(x6, decreasing=T)
rev(x6)

(x = -3:2)
x[2] <- 10; x 

(x=1:10)
x<5
x[x<4 | x>6]
x[x<4 | x>6] =100; x  #replace with 100
x
length(x[x==100])
x

x=x[1:4]; x

(x = seq(1,5, length.out = 15))
x = NULL
x[4]

100:111
(m1 = matrix(100:111, nrow=4))
(m2 = matrix(100:111, ncol=3, byrow=T))
x=101:124
length(x)
matrix(x, ncol=6)
class(m1)
attributes(m1)
dim(m1)
m1

m1[1,]
m1[,1]
m1[1,2:3]
m1[c(1,3),]
m1[,-c(1,3)]

paste("C","D",sep="-")
paste("C",1:100,sep="-")

(colnames(m1) = paste('C',1:3, sep=''))
m1
(rownames(m1) = paste('R',1:4, sep=''))
m1
attributes(m1)

m1
colSums(m1); rowSums(m1)
colMeans(m1); rowMeans(m1)
attributes(m1)
dim(m1)

t(m1) # transpose
m1
sweep(m1, MARGIN = 1, STATS = c(2,3,4,5), FUN="+" ) #rowise
sweep(m1, MARGIN = 2, STATS = c(2,3,4), FUN="*" ) #colwise

?addmargins
addmargins(m1,margin=1,sum) #colwise function
addmargins(m1,1,sd) #colwise function

addmargins(m1,2,mean) #rowwise function
addmargins(m1,c(1,2),mean) #row & col wise function

#data frame
(rollno = 1:30)
(sname = paste('student',1:30,sep=''))
(gender = sample(c('M','F'), size=30, replace=T, prob=c(.7,.3)))
(marks = floor(rnorm(30,mean= 50,sd=10)))
(marks2 = ceiling(rnorm(30,40,5)))
(course = sample(c('BBA','MBA'), size=30, replace=T, prob=c(.5,.5)))
prop.table(table(course))
rollno; sname; gender
marks ; marks2; course



(gender=c('M','F','F','M'))
(gender=sample(c('M','F'),size=30, replace=T, prob=c(0.7,0.3)))
table(gender)
prop.table(table(gender))

floor(3.8)
ceiling(3.8)
trunc(3.2)
round(3.8110,2)
(x=rnorm(100, mean=60, sd=10))
summary(x)
quantile(x)
quantile(x, seq(0,1,.1)) #decile
quantile(x, seq(0,1,.01))#percentile
fivenum(x)
boxplot(x)
abline(h=fivenum(x))
stem(x)
hist(x)

plot(density(x))
abline(v=60,col='red')

#create DF
df1= data.frame(rollno, sname, gender, marks, marks2, course, stringsAsFactors = F)
df1$gender  # one column
df1[ , c(2,4)] #multiple columns
df1[1:10 ,] #select rows, all columns
#as per conditionis
df1[ marks > 50 & gender=='F', c('rollno', 'sname','gender', 'marks')]
df1[ marks > 50 & gender=='F', c(1,2)]
df1[ marks > 50 | gender=='F', ]

names(df1)
dim(df1)

aggregate(df1$marks, by=list(df1$gender), FUN=max)
aggregate(marks ~ gender, data=df1, FUN=max)

(df2 = aggregate(cbind(marks,marks2) ~ gender + course, data=df1, FUN=mean))

str(df1) #structure of DF
head(df1) #top 6 rows
head(df1,n=3) #top 3 rows
tail(df1) #last 6 rows
class(df1) # DF
summary(df1) #summary
df1$gender = factor(df1$gender)
df1$course = factor(df1$course)
str(df1)
summary(df1)

