# define variables
x = 2
y <- 2
x == y 
message <- paste('Hello','world')
message

# while true 
while(TRUE){
  print('Hello')
  
}

# example #1
counter <-1 
while(counter < 12 ){
  print(counter)
  counter <- counter + 1
}

# example #2
var1 <- 10
while(var1>0){
  print(var1)
  var1 <- var1 - 1
}

# for loop 
for(i in 5:10){
  print('Hello R')
  print(i)
}

# remove allocated value 
rm(answer)
x <- rnorm(1)

if(x > 1){
  answer <- 'Greater than 1'
} else if(x>=-1) {
  answer <- 'Between -1 and 1'
} else {
  answer <- 'Less or equal than -1'
}

rm(counter)
counter <- 0
N <- 10000
for(i in 1:N) {
  x <- rnorm(1)
  print(x)
  if(x>=-1 & x<= 1){
    counter <- counter + 1
  }
}

answer <- counter/N
answer

x <- 41.21
typeof(x)





