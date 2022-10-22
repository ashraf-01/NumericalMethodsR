# exercise 1.1.a

x <- c(1,8,3,9,5,1) ; x

v <- x^2 ; v

###### 
x <- c(1,8,3,9,5,1)
n <- length(x)
r <- integer(n)

for(i in 1:length(x)){
  r[i] <- x[i]^2
}
print(r)  # same result with same dimension 


# exercise 1.1.b

x <- c(1,8,3,9,5,1)

sum(x)

######
x <- c(1,8,3,9,5,1)
n <- length(x)
r <- 0

for(i in 1:length(x)){
  r <- r + x[i]
}
print(r)  # same result with same dimension 

r == sum(x)
# exercise 1.1.c
 
x <- c(1,8,3,9,5,1)
n <- length(x)
cum <- integer(n)
cum <- 1 
# print(x[0]) # i.e. length = 0 i.e. it does not exist 
for (i in 2:n){
  cum[i] <-  cum[i-1] + x[i]
}
cum # array with same dimension as the original x array
cum == cumsum(x) # gives the same result 
# exercise 1.1.d
x <- c(1,8,3,9,5,1) ; prod(x) 
##########
x <- c(1,8,3,9,5,1)
n <- length(x)
pro <- length(n);n
pro <- 1 
for (i in 1:n){
  pro <- pro * x[i]
}
pro
pro == prod(x)

##############################

# exercise 1.2
rows <- 3
cols <- 4
A <- matrix(runif(n=rows*cols) , ncol = cols) ; A
n <- dim(A)
for (i in 1:n[1]){
  for (j in 1:n[2]){
    if (A[i,j] < 0.2)
      A[i,j] = 0
    else
      A[i,j] = 1
      }
}
A 

# exercise 1.3.1

x <- c(4,1,6) ; y <- c(6,2,7) 
outer(x,y) # matrix of size 3*3
x <- c(4,1,6) ; y <- c(6,2,7)
A <- matrix(0,3,3) ; A
n <- length(x)
m <- length(y)
for(i in 1:n){
  for(j in 1:m){
    A[i,j] <- x[i]*y[j]
  }
}
A 
# exercise 1.3.2
x <- c(4,1,6) ; y <- c(6,2,7)
outer(x,y,'/')
#####
x <- c(4,1,6) ; y <- c(6,2,7)
A <- matrix(0,3,3) ; A
n <- length(x)
m <- length(y)
for(i in 1:n){
  for(j in 1:m){
    A[i,j] <- x[i] / y[j]
  }
}
A

# exercise 1.3.3
x <- c(4,1,6) ; y <- c(6,2,7)
d <- sum(x*y) # scalar 
#####
A <- matrix(0,3,3) ; A
d <- 0
n <- length(x)
m <- length(y)
for(i in 1:n){
  for(j in 1:m){
    A[i,j] <- y[i]*x[j]
  }
}
A


# exercise 1.3.4
x <- c(4,1,6) ; y <- c(6,2,7)
pmin(x,y)

######
n <- length(x)
m <- length(y)
k <- length(e)
r <- integer(k)
for (i in 1:n){
  for (j in 1:m){
    if (x[i] < y[j])
      e[i] <- x[i]
    else 
      e[i] <- y[j]  
  }
}
e

#  exercise 2.1
a <- c(3,8,9,7,6,5) ; a
# without loop 
y <- sum(a^2) ; y
# with the for loop 
y <- 0
for (i in a){
  y <- y + i^2
}

# exercise 2.2
a <- c(3,8,9,7,6,5) ; a
# without the loop 
i <- 1:6 ; i ; a[i]
y <- sum(i*a^(6-i));y
# with the loop
a <- c(3,8,9,7,6,5)
i <- 1:6
y <- 0
for (i in 1:length(a)){
  y <- (y + i*a[i]^(6-i))
}
y
##############################

# exercise 3.1
x <- c(-4,-2,0,2,4,6,8,10,12,14)
y <- c(9,-3,15,6,-8,12,4,0,-7,0)
x ; y
# exercise 3.2.
(x > -1) & (x < 4) # spits out a vector with the same size as the original x vector of logical True False
x[x > 2] # numeric-valued vector of the nested condition 
y[x <= 4] # numeric-valued vector of the nested condition but on the y as the parent condition
x[(x < -1) | (x >= 4)] # numeric-valued vector of the nested condition
y[(x < -1) | (x >= 4)] # numeric-valued vector of the nested condition but on the y as the parent condition
x[y < 0] # numeric-valued vector of the nested condition but this time x is used as the outer condition
# exercise 3.3.a
I1 <- x > 2 ; I1

n <- length(x)
I2 <- logical(n)
for (i in 1:n){
  if (x[i] > 2){
    I2[i] <- TRUE
  } else {
    I2[i] <- FALSE 
  }
    
}
I2
# exercise 3.3.b
I2 <- (x < -1) | (x >= 4) ; I2

n <- length(x)
I3 <- logical(n)
for (i in 1:n){
  if (x[i] < -1){
    I3[i] <- TRUE
  } else if (x[i] >= 4) {
    I3[i] <- TRUE
  }
  
}
I3 == I2
# exercise 3.3.c
I3 <- (x > -1) & (x < 4) ; I3 # this is just the complementary condition

n <- length(x)
I4 <- logical(n)
for (i in 1:n){
  if ((x[i] > -1) & (x[i] < 4)){
    I4[i] <- TRUE
  }
}
I4
I4 == I3
#########################################################



