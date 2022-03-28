x <- c('a','b','c','d','e')
# vectors
x

x[c(1,5)]

x[1]

#matrix
Games
Games[1:3,6:10]
Games[c(1,10),]
Games[,c("2008","2009")]

# design of the language
is.matrix(Games[1,])
is.vector(Games[1,])

is.vector(Games[1,5])

# fix design of language
Games[1,,drop=FALSE]

# visualize subsets
Data <- MinutesPlayed[1:3,]

matplot(t(Data),type='b',pch=15:18,col=c(1:4,6))
legend('bottomleft',inset=0.01,legend=Players[1:3], col=c(1:4,6), pch=15:18)


Data <- MinutesPlayed[1,,drop=FALSE]

matplot(t(Data),type='b',pch=15:18,col=c(1:4,6))
legend('bottomleft',inset=0.01,legend=Players[1], col=c(1:4,6), pch=15:18)












