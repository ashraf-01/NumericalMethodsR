# Exercise 2 / part 1
x <- c(4,6,2,5,8)

x[1:5] # choosing the 1-st five elements 
x[2:length(x)] # choosing from 2-nd to last element 
x[1:(length(x)-1)] # choosing from 1-st to the second last element i.e. ignoring last element 
x[seq(1, length(x), 2)] # creating seq in increment of 2 with first element and last elements
x[5:1] # choosing same components of the vector but in reversed order 
x[c(1,3,5)] # only picking those on position 1 , 3 and 5

# Exercise 2 / part 2

E <- rbind(c(2, 4, 1, 5),
           c(6, 7, 2, 1),
           c(3, 5, 9, 8))
E    # showing E 
dim(E) # i.e. non-square matrix 
E[1,] # this is to access 1-st row of E
E[,1] # this is to access 1-st col of E 
x1 <- E[,2] # access 2nd col of E and assigning it to x1 vector / submatrix 
x1 
# Y <- E[c(1,2),c(2,4)] this is to access elements 
Y <- E[,c(2,4)] # access 2nd and 4th of E and assigning it to Y new matrix 
Y
# summing the col and rows of matrix E 
sum(E[,c(1,2,3,4)]) # of the col
sum(E[c(1,2,3),]) # of the rows

# example a side to understand both cbind and rbind 
a <- 1:4 
b <- 6:9
a 
b
M <- rbind(a,b) # am binding rows together 
M
N <- cbind(a,b) # am binding columns together 
N 
# Exercise 2 / part 3

x <- c(1, 4, 8)
y <- c(2, 1, 5)
A <- rbind(
  c(3, 1, 6),
  c(5, 2, 7))
dim(A) # 2*3 
x+y # intuitive and correct as dimensions match , output is a new vector with same DIM
x + A # forgot ?
t(x) + y # legit as it spits out a number   
t(x) + A # forgot ?
A-rbind(x,y) # works as dimensions match and gives out a new output with same dimension of A
A-3 # works as subtracting a scalar from each element in the matrix and gives a new matrix with same dimension of A 
#########################################################
# Exercise 2 / part 4

n <- 10 # specifying number of rows / columns of the matrix 
# hence number of entries in such matrix = 10^2 = 100
v <- seq(2, 20, 2) # here we create a sequence with increments of 2 starting at 2 and finishing at 20
A <- diag(v) # making it diagonal of size/dim 10 * 10 with all off-diagonal entries all zeros
A
# let us compose matrix B 
B <- rbind(matrix(0, 1, n), diag(n)) 
B # is just a unit matrix done via (matrix(0,1,n)) of size n^2 where n = 10 
# via diag(n) 

B <- B[1:n,]  # here we are adding an extra column of zeros 
B 
t(B)
A <- A + B - t(B) # just spits out a new matrix of order 10 which is the original
# traidiagonal 1


#################################################

# Exercise 3

u1 <- c(1,2,3)
u2 <- c(-5,2,1)
u3 <- c(-1,-3,7)
cat (u1 , u2 ,u3)

u1+u2
u1+3*u2+5*u3
u3/5
euc_norm <- sqrt(sum(u1^2)) # 1-d number / l2 distance and spits out a scalar quantity
euc_norm
absolute_norm <- sum(abs(u2)) # l1 distance ad spits out a scalar quantity 
absolute_norm
maximum_norm <- max(abs(u3))     # maximum absolute value in a vector / spits out a number 
maximum_norm

# Exercise 4 / part 1
A <- matrix(runif(16),4,4) # 4*4 matrix 
A
det(A)
B <- matrix(runif(16),4,4)
B
C = A%*%B # product matrix 
C
D = solve(C) # inverse of C
D
d <- solve(B)
f <- solve(A)
E = d%*%f 
E
all.equal(E,D,tolerance = 1e-5) # SPITS OUT TRUE or FALSE
# so two matrices are identical within some distance of error 

# Exercise 4 / part 2 #  
install.packages("expm")
library(expm)

A <- matrix(c(1,2,3,5),2,2) # 2*2 matrix
A
B = A%^% 2

#########################
eigen(A)$values
eigen(A)$vectors

# 











