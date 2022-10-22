# exercise 1.1
f <- function(x){
  x^2-x-1
}

fIterative <- function(x){
  x <- 1 + 1/x
}

guess <- 1
root <- function(f , fIterative , guess){
  x <- guess
  i <- 1
  for (i in 1:8){
    x <- 1 + 1/x 
  }
  x
} 
root(f, fIterative , guess)

# exercise 1.2
x0 <- 0
x1 <- 1
tol <- 10^-10
while (abs(x0-x1) > tol){
  x1 <- 1 + 1/x0
}

# exercise 1.3
# introducing an maxit = 30
j <- 1
x0 <- 0
x1 <- 1
tol <- 10^-10
while (abs(x0-x1) > tol){
  x1 <- 1 + 1/x0
  j <- j + 1
    if (j > 30 ){
      break
    }
  }
j;x1 
# exercise 1.4


# exercise 2.1 here i is the index or position and 
exp1 <- 0
m <- 100
for (i in 0:m){
  exp1<- exp1 + sum(1/factorial(i))
}
exp1^3
exp(3)
# exercise 2.2
x <- 3
k_100 <- 0:100
exp2<- sum(1/factorial(k_100))^3 ; exp2

# exercise 2.3
x <- 3
k_5 <- 0:5
exp3 <- sum(1/factorial(k_5)); exp3
exp(3)
# comparing the two 
appro_err <- abs(exp3 - exp(3)) ; appro_err 
# exercise 2.4
m <- 3:20
exp_err <- c()
n <- length(m)
exp_err <- numeric(n)
j <- 1
for (i in seq_along(m)){
  exp_err[j] <- exp_err[j] + abs((sum(1/factorial(m))^3-exp(3)))
}
exp_err
# exercise 2.5
m <- 5
tol <- 10^-10
err <- abs((sum(1/factorial(m))^3 - exp(3)))
while (err > tol) {
  m <- m + 1
}
m  # it does not stop , hence optimal m is infinity if that makes sense

# exercise 2.6
m <- 5
tol <- 10^-10
err <- abs((sum(1/factorial(m))^3 - exp(3)))
i <- 0
while (err > tol){
  m <- m + 1
  i <- i + 1 
  if (i >= 100){
    cat("I'm outside")
    break
  }
}
i ; m # @100-th iteration and m = 105
