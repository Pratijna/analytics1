#Word Cloud 2

#(https://www.r-graph-gallery.com/the-wordcloud2-library/)

# library : install it first
library(wordcloud2) 

# have a look to the example dataset
head(demoFreq)

#wordcloud
wordcloud2(demoFreq, size=1.6)
word1=c('marketing','consumer','demand','price')
freq1=c(30,20,15,36)
df1=data.frame(word,freq)
rownames(df1)=word1
head(df1)
wordcloud2(df1, size=0.4)

#cloud2
word3=c('Happiness','Food','Cats','Sleep' )
freq3=c(10,22,15,32)
df2=data.frame(word3, freq3)
rownames(df2)=word1
head(df2)
wordcloud2(df2, size=0.2, color='random-light', shape='pentagon')
?wordcloud2

word4=c('Analytics','Business','Dynamic','Sleep','NITK','Marketing','PPT','Data mining' )
freq4=c(77,42,35,22, 30, 36,38,55 )
df3=data.frame(word4, freq4)
rownames(df3)=word4
head(df3)
wordcloud2(df3, size=0.2, color='random-light', shape='cardiod')
?wordcloud2
# Gives a proposed palette
wordcloud2(demoFreq, size=1.6, color='random-dark')

# or a vector of colors. vector must be same length than input data
wordcloud2(demoFreq, size=1.6, color=rep_len( c("green","blue"), nrow(demoFreq) ) )

# Change the background color
wordcloud2(demoFreq, size=1.6, color='random-light', backgroundColor="black")


# Change the shape:
wordcloud2(demoFreq, size = 0.7, shape = 'star')
#It is possible to change the shape of the wordcloud. Several shapes are available within the package: ‘circle’ (default), ‘cardioid’, ‘diamond’ (alias of square), ‘triangle-forward’, ‘triangle’, ‘pentagon’, and ‘star’).

#It is also possible to use any image you have as a mask! Just insert the image in the current working directory and use it as in the code below
# Change the shape using your image - not working
#wordcloud2(demoFreq, figPath = "peace.png", size = 1.5, color = "skyblue", backgroundColor="black")


#rotation
ww=wordcloud2(demoFreq, size = 2.3, minRotation = -pi/6, maxRotation = -pi/6, rotateRatio = 1)
ww

#chinese
demoFreqC
wordcloud2(demoFreqC, size = 2, fontFamily = "微软雅黑", color = "random-light", backgroundColor = "grey")


#notworking : clear the plot area
#The lettercloud function allows to use a letter or a word as a shape for the wordcloud.
letterCloud( demoFreq, word = "R", color='random-light' , backgroundColor="blue")
letterCloud( demoFreq, word = "PEACE", color="white", backgroundColor="pink")