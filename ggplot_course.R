getwd()
setwd('./r_lang')
movies <- read.csv('P2-Movie-Ratings.csv',stringsAsFactors = T)

# -- course 1 - Factor 
head(movies)
colnames(movies)
colnames(movies) <- c('Film','Genre','CriticRating','AudienceRating','BudgetMillions','Year')
str(movies)
summary(movies)


factor(movies$Year)
movies$Year <- factor(movies$Year)

# -- course 2 - Aesthetics

library(ggplot2)
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))

# add geometry 
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating)) + 
  geom_point()

# add color 
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,
                        color=Genre)) + 
  geom_point()

# add size
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,
                        color=Genre,
                        size=Genre)) + 
  geom_point()

# add size - better way 
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,
                        color=Genre,
                        size=BudgetMillions)) + 
  geom_point()


# This is #1 (we will improve it)
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,
                        color=Genre,
                        size=BudgetMillions)) + 
  geom_point()




# -- course3 - plotting with Layers

p <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,
                             color=Genre,
                             size=BudgetMillions))
# point 
p + geom_point()

# line 
p + geom_line()

# point and line 
p + geom_point() + geom_line()

# line and point 
p+ geom_line() + geom_point() 


# course4 - overriding Aesthetics 
q <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, 
                             color=Genre, size=BudgetMillions))

# add geom layer
q+geom_point()


# overriding aes - example 1
q + geom_point(aes(size=CriticRating))

# overriding aes - example 2
q + geom_point(aes(color=BudgetMillions))

# overriding aes - example 3
q + geom_point(aes(x=BudgetMillions)) + xlab("Budget Millions $$$")

# line and point 
p+ geom_line(size=1) + geom_point(size=2)

# Mapping vs Setting
r <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))
r+geom_point()

# add color 
# 1. Mapping 
r + geom_point(aes(color=Genre))
# 2. Setting
r + geom_point(color="DarkGreen")

# ERROR - You creating a class of DarkGreen for color
r + geom_point(aes(color="DarkGreen"))

# add color 
# 1. Mapping 
r + geom_point(aes(size=BudgetMillions))
# 2. Setting
r + geom_point(size=10)
# ERROR - You creating a class of 10 for size 
r + geom_point(aes(size=10))

# course5 - Histograms and Density Charts 
s <- ggplot(data=movies, aes(x=BudgetMillions))
s + geom_histogram(binwidth=10)


# add color 
# setting 
s + geom_histogram(binwidth=10, fill='Green')

# mapping 
s + geom_histogram(binwidth=10, aes(fill=Genre))

# add a border 
s + geom_histogram(binwidth=10, aes(fill=Genre), color='Black')

# Density charts 
s + geom_density()
s + geom_density(aes(fill=Genre))
s + geom_density(aes(fill=Genre),position='stack')


# course6 - starting layer tips

t <- ggplot(data=movies, aes(x=AudienceRating))
t+geom_histogram(binwidth = 10, 
                 fill='white',
                 color='blue')


# another way 
t <- ggplot(data=movies)
t + geom_histogram(binwidth = 10,
                   aes(x=AudienceRating),
                   fill='white',
                   color='blue')

# quick change
t + geom_histogram(binwidth = 10,
                   aes(x=CriticRating),
                   fill='white',
                   color='blue')

# different datasets 

t <- ggplot()



# course7 - statistical transformations 
?geom_smooth()

u <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, color=Genre))
u + geom_point() + geom_smooth(fill=NA)

#box plots
u <- ggplot(data=movies, aes(x=Genre, y=AudienceRating, color=Genre))
u + geom_boxplot(size=1.2)
u + geom_boxplot(size=1.2) + geom_point()

# tip / hack 
u + geom_boxplot(size=1.2) + geom_jitter()
# another way 
u + geom_jitter() + geom_boxplot(size=1.2, alpha=0.5)

# course8 - facets 
v <- ggplot(data=movies, aes(x=BudgetMillions))
v + geom_histogram(binwidth = 10)
v + geom_histogram(binwidth = 10, aes(fill=Genre))
v + geom_histogram(binwidth = 10, aes(fill=Genre),
                   color="Black"
                   )

# facets 
v + geom_histogram(binwidth = 10, aes(fill=Genre),
                   color="Black"
)+facet_grid(~BudgetMillions)

v + geom_histogram(binwidth = 10, aes(fill=Genre),
                   color="Black"
)+facet_grid(Genre~., scales="free")

# scatter plots 
w <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, color=Genre))

w+geom_point(size=3)

# facets 
w+geom_point(size=3) + facet_grid(Genre~.)

w+geom_point(size=3) + facet_grid(Genre~Year)

w+geom_point(size=3) + geom_smooth()+facet_grid(Genre~Year)

w+geom_point(aes(size=BudgetMillions)) + geom_smooth()+facet_grid(Genre~Year)

w+geom_point(aes(size=BudgetMillions)) + geom_smooth()+facet_grid(Genre~Year)

# course9 - coordinates 
#limits 
#zoom


m <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, 
                             size=BudgetMillions, 
                             colour=Genre))

m + geom_point()

m + geom_point() +
  xlim(50,100) + ylim(50,100)

n <- ggplot(data=movies, aes(x=BudgetMillions))
n + geom_histogram(binwidth = 10, aes(fill=Genre), color='Black')


# won't always work 
n + geom_histogram(binwidth = 10, aes(fill=Genre), color='Black') + ylim(0,50)

# solution : zoom 
n + geom_histogram(binwidth = 10, aes(fill=Genre), color='Black') + 
  coord_cartesian(ylim=c(0,50))

# improve n.1
w+geom_point(aes(size=BudgetMillions)) + 
  geom_smooth()+
  facet_grid(Genre~Year)+
  coord_cartesian(ylim=c(0,100))

# course10 - themes 
o <- ggplot(data=movies, aes(x=BudgetMillions, 
                             ))
h <- o +geom_histogram(binwidth = 10, aes(fill=Genre),color='black')

h
# axes label
h + xlab("Money axes")
h + xlab("Money axes") + ylab('Number of movies') + 
  theme(axis.title.x=element_text(color='DarkGreen', size=30),
        axis.title.y=element_text(color='Red',size=30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20),
        )


# legend formatting 
h + xlab("Money axes")
h + xlab("Money axes") + ylab('Number of movies') + 
  theme(axis.title.x=element_text(color='DarkGreen', size=30),
        axis.title.y=element_text(color='Red',size=30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20),
        legend.title=element_text(size=30),
        legend.text=element_text(size=20),
        legend.position = c(1,1),
        legend.justification = c(1,1)
  )

# ggtitle 

h + xlab("Money axes")
h + xlab("Money axes") + ylab('Number of movies') + 
  ggtitle('my Title') + 
  theme(axis.title.x=element_text(color='DarkGreen', size=30),
        axis.title.y=element_text(color='Red',size=30),
        axis.text.x = element_text(size=20),
        axis.text.y = element_text(size=20),
        legend.title=element_text(size=30),
        legend.text=element_text(size=20),
        legend.position = c(1,1),
        legend.justification = c(1,1),
        plot.title = element_text(color='DarkBlue', size=40, family='Courier')
  )


