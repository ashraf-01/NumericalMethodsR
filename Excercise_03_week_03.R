# exercise 1.1
n <- 10000
v <- rnorm(n,0,1) ; v

# exercise 1.2
sum(v[i] < -3 | v[i] > 3)

# using for loop
v
n <- length(v)
r <- 0

for(i in 1:n){
  if ((v[i] < -3) | (v[i] > 3)){
    r <- r + 1
  }
}
print(r)

# exercise 1.3

res_per <- r/length(v)
res_per # yes it does conform to expectations , alternatively
########################
m <- mean(v) ; s <- sd(v) ; m ; s
m + 3*s ; m - 3*s
plot(density(v))
sum(v > (m + 3*s))/10000
sum(v < (m - 3*s))/10000
########################
# exercise 1.4
# using the match function
match((v[i] < -3) | (v[i] > 3),v)
which((v[i] < -3) | (v[i] > 3))
# using for loop
# let us return the indices of elements corresponding to x[i] > 3
# without 
p1 <- which((v[i] < -3) | (v[i] > 3)) ; p1
# with for loop 
p2 <- c() # this is of unknown size but empty 
j <- 0
for (i in 1:length(v)){
  if ((v[i] < -3) | (v[i] > 3)){
    j <- j+1
    p2[j] <- i
  }
}
print(v[p2]) ; print(p2)
min(v[p2]) ; max(v[p2])

# exercise 1.6

n <- 10000
v <- rnorm(n,0,1) ; v 
b <- 1    
while (max(abs(v)) > 5){
  v <- rnorm(n,0,1)
  b <- b + 1
}
b 
# exercise 2.1
n <- 1 # it says a number u hence n <- 1
u <- runif(n,0,1) ; u # it is more than 0.1 
# exercise 2.2
n <- 50
U <- runif(n,0,1) ; U ####### this is the same code used for the standard uniform
U[3]
# exercise 2.3
n <- 50
U <- runif(n,0,1);U
k <- 1 
for (i in seq_along(U)){
  if ( U[i] < 0.1 ){
    k <- k + 1
  }
}
k 
U[k]
# exercise 2.4
n <- 50
U <- runif(n,0,1)
for (i in seq_along(U)){
  if ( U[i] < 0.1 ){
    break
  }
}
print(U[i]);print(i) # hence it's position or round is 14 and value = 0.035586
# exercise 2.6
j <- 1 
while (U[j] < 0.1){
  if (U[j] < 0.1){
    break
  }
}
print(U[j]);print(j) # now they provide the same results 
# exercise 2.5.a
U <- runif(1)  # I need only one copy of such R.V.
j <- 1
while (U >= 0.1){
  U <- runif(1)
  j <- j + 1
}

# exercise 2.5.b
j <- 1
U <- runif(1)
while (U[j] < 0.1){
  j <- j + 1 
  print(j)
}
j 
# exercise 2.7 contrary to situation of exercise 2.6
n <- 50
U <- runif(n,0,1)
j <- 1 # serves as an index to access the elements  
i <- 0 # serves as a counter of number of iterations 
while (U[j] >= 10^-5){
  i <- i+1
  j <- j+1
  if (i == 50) {
    cat("I'm out")
    break
  }
}
i;j
