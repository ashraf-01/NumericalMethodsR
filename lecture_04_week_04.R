myeps <- 100
it <- 1
while (1+ myeps > 1 ) {
  #myeps <- myeps/2
  #myeps <- myeps*2
  it <- it + 1 
  
}
myeps ; it

############
# Repeatedly generate a uniform random number until a value less
# than 0.001 (10−3) is obtained. Count the number of repetitions
it <- 0
while (runif(1) < 0.001) {
  it < it + 1
}
it

# to stop the above code from running indefinitly 
# we add control instruction i.e. break at certain number of iterations

it <- 0
itmax <- 10
while (runif(1) >= 0.001){
  it <- it + 1
  if (itmax >= 10){
    message("get out")
    break
  }
  
}
it; itmax
###############################
# let us reverse the order of conditions in the example above
it <- 0 ; itmax <- 10
while (it < itmax){
  it <- it + 1
  u <- runif(1)
  if ( u < 0.001){
    break
  }
}
it ; u
###############Repeatloop#################
it <- 0 ; itmax <- 10
repeat {
  it <- it + 1
  u <- runif(1)
  if(u < 0.001){
    break
  } else if(it > itmax){
    message("I'm out")
    break
  }
  
}
it ; u 

##########functions################
Mean <- function(X){
  # calculates mean of a set of numbers
  n <- length(X)
  m <- sum(X)/n
  return(m) # notice this part is not mandatory
}
# let us call it 
a <- 1:5 ; a
a_bar <- Mean(a) ; a_bar
# or 
a_bar <- Mean(1:5) ; a_bar

###############
# area of a triangle and it's perimeter given length of its sides
triangle <- function(a,b,c){
  P <- a + c + b
  s <- P / 2
  A <- sqrt(s*(s-a)*(s-b)*(s-c))
  S <- list(A,P)
}

# let us call it 
x <- 3 ; y <- 4 ; z <- 5
S <- triangle(x,y,z); S; S[1] ; S[2]

# alternatively 
S <- triangle(3,4,1)
A <- unlist(S[1])  
P <- unlist(S[2])
A;P
############## function within function ##################
perimeter <- function(a,b,c){
  # given lengths , calculate the perimeter 
  a + b + c
}

triangle <- function(a,b,c){
  # calculates the area and the perimeter of a triangle
  # from the length of its sides
  P <- perimeter(a,b,c)
  s <- P / 2
  A <- sqrt(s*(s-a)*(s-b)*(s-c))
  S <- list(A,P)
}

# let us call it 

S4 <- triangle (b=4 , a =3 ,c =2); S4

# 2-D plotting 
x <-seq( 1 , 5 ,length=10); x
y <- x^2 ; y

plot(x , y , type = "b")

x <-seq( 1 , 5 ,length=10)
y <- x^2 

plot(x,y,type = "o" , xlab = "x values", ylab = "y values ",
     xlim = c(0.5,2.5) , ylim = c(0,2))
grid(10)
title("Plot of y = x^2")
