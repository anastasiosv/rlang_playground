
x <- c(1,123,543,13,4) #combine
y <- seq(201,250,11)   #sequence
z <- rep('Hi!',3)      #replicate


w <- c("a","b","c","d","e")
w

w[1]
w[-1]
w[-3]
vectorwithoutmiddlecharacter <- w[-3]
w[3:5]
w[c(1,3,5)]
w[c(-2,-4)]
w[-3:-5]
w[1:2]




a <- c(1,2,3,4)
b <- c(10,10,10,10)
d <- a + b - 3^0
d




a <- c(1,2,3,4)
b <- c(10,10,10,10,10,10,10)
d <- a + b
d


x <- rnorm(5)
x

for(i in x){
  print(i)
  
}

print(x[1])
print(x[2])

for(j in 1:5){
  print(x[j])
  
}



#----- second part 
N <- 100
a <- rnorm(N)
b <- rnorm(N)

# vectorized approach // FASTER
c <- a * b

# devectorized approach //
d <- rep(NA,N)

for(i in 1:N){
  d[i] <- a[i] * b[i]
}

d == c


















