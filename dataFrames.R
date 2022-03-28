data <- read.csv(file.choose())

# get working directory
getwd()
# set working directory 
setwd("./r_lang")
rm(data)
data <- read.csv('./P2-Demographic-Data.csv', stringsAsFactors = T)
typeof(data)
data


# ----- second course - Explore data 

# read your data
data 

# number of data rows
nrow(data)
# number of data columns
ncol(data)

# top 6
head(data, n=2)
# last 6
tail(data, n=9)

# structure details 

# str(), runif(), rnorm()
str(data)    

# breakdown for every single column
summary(data)

# ----- section3 - the dollar sign $ 
data
head(data)
data[3,3]
data[3,'Birth.rate']

# accessing internet users column 
data$Internet.users == data[,'Internet.users']
data$Internet.users[3]


levels(data$Country.Code)

# ----- section4 - operations with dataFrame 
# subsetting
data[1:10, ] 
data[3:9,]
data[c(4,100),]

data[1,]
# checking the type
is.data.frame(data[1,])
data[,1,drop=F]
is.data.frame(data[,1,drop=F])
is.vector(data[,1])
is.matrix(data[,1])

# maths - multiply
head(data)

data$Birth.rate * data$Internet.users
data$Birth.rate + data$Internet.users

# add column 
data$MyCalc <- data$Birth.rate * data$Internet.users
head(data)

# test of knowledge, prepei na nai pollaplasio twn rows 
data$xyz <- 1:5
head(data)

# remove a column 
head(data)
data$xyz <- NULL
head(data)


# ----- section5 - filtering data frames
head(data)
filter <- data$Internet.users < 2
data[filter,]

data[data$Birth.rate >40 & data$Internet.users > 2,]
data[data$Income.Group == 'High income',]
levels(data$Income.Group)

# filter by Country Name 
levels(data$Country.Name)
data[data$Country.Name == 'Greece',]


# ---- section 6 qPlot
library(ggplot2)
?qplot()

qplot(data=data, x=Internet.users)
qplot(data=data, x=Income.Group, y=Birth.rate)
qplot(data=data, x=Income.Group, 
      y=Birth.rate, size=I(3), 
      colour=I('lightblue'))


qplot(data=data, x=Income.Group, 
      y=Birth.rate, 
      colour=I('lightblue'), geom="boxplot")


# section7 - visualizing w/qplot what we need 

qplot(data=data, x=Internet.users, y=Birth.rate)
qplot(data=data, x=Internet.users, y=Birth.rate,
      size=I(4))
qplot(data=data, x=Internet.users, y=Birth.rate,
      size=I(4),
      colour=I('red'))

qplot(data=data, x=Internet.users, y=Birth.rate,
      size=I(5),
      colour=Income.Group)

# ------- section 8 - Building Data Frames

mydf <- data.frame(Countries_2012_Dataset, 
                   Codes_2012_Dataset, 
                   Regions_2012_Dataset)
head(mydf)
head(data)
colnames(mydf) <- c("Country","Code","Region")
head(mydf)  

rm(mydf)
  
qplot(data=data, x=Internet.users, y=Birth.rate,
      size=I(5),
      colour=Region)

mydf <- data.frame(Country=Countries_2012_Dataset, 
                   Code=Codes_2012_Dataset, 
                   Region=Regions_2012_Dataset)

head(mydf)
mydf[mydf$Country]
mydf[mydf$Country == 'Greece',]


#------ section9 Merging Data Frames 
head(data)
head(mydf)


merged <-merge(data, mydf, by.x="Country.Code", by.y="Code")
head(merged)

rm(merged)
merged <-merge(data, mydf, by.x="Country.Code", by.y="Code")
merged$Country <- NULL
str(merged)
tail(merged)


# ------ section10 - Visualizing with the new Split 

qplot(data=merged, x=Internet.users, y=Birth.rate,
      colour=Region)

# 1.shapes
qplot(data=merged, x=Internet.users, y=Birth.rate,
      colour=Region,
      size=I(5), shape=I(23))

qplot(data=merged, x=Internet.users, y=Birth.rate,
      colour=Region,
      size=I(5), shape=I(2))

qplot(data=merged, x=Internet.users, y=Birth.rate,
      colour=Region,
      size=I(5), shape=I(15))

# 2. Transparency 
qplot(data=merged, x=Internet.users, y=Birth.rate,
      colour=Region,
      size=I(5), shape=I(19))

qplot(data=merged, x=Internet.users, y=Birth.rate,
      colour=Region,
      size=I(5), shape=I(19), 
      alpha=I(0.6)
      )

# 3. Title 

qplot(data=merged, x=Internet.users, y=Birth.rate,
      colour=Region,
      size=I(5), shape=I(19), 
      alpha=I(0.6),
      main='Birth rate vs Internet Users'
)


