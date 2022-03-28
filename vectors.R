
# c combines numbers to a vector 
myFirstVector <- c(1,21,34,49,53)
myFirstVector
typeof(myFirstVector)
is.numeric(myFirstVector)
is.integer(myFirstVector)
is.double(myFirstVector)

mySecondVector <- c(1L,21L,34L,49L,53L)
is.numeric(mySecondVector)
is.integer(mySecondVector)
is.double(mySecondVector)

v3 <- c('T','ASSOS','V','ANIS')
v3
is.character(v3)


v4 <- c('T','ASSOS','V','ANIS',3)
is.character(v4)


seq() # sequence - like ":", more flexibility

rep() # replicate

typeof(seq(1,15))
typeof(1:15)

seq(1,15,2)
z <- seq(1,15,4)
z



d <- rep(3, 50)
d

rep('a',5)
x <- c(80,20)

rep(x, 10)







