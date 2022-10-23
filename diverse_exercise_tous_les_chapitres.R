# diverse set of exercises 
v <- c(1,2,3,8,9,5)
it <- 1
while (v [it] < 3){
  it <- it +1 
  if (it > length(v)){
    print('no element satisfies the condition >= 3')
    break
  }
}
v[it] ; it 

####################################

set.seed(0)
n <- 4
v <- numeric(n)
i <- 0
while (i < n){
  ith <- runif(1)
  if (sum(c(v, ith)) < 1){
    i <- i+1
    v[i] <- ith
  }
}
v
# alternatively 
samp <- function(n) {
  v <- rep(0, n)
  for (i in 1:n) {
    v[i] <- runif(1, 0, 1-sum(v))
  }
  v
}
v
set.seed(144)
system.time(samples.josliber <- replicate(100, samp(0)))
###########################################
# simpler example using for loop to generate 500 simulations with 20 each
nsamples <- 500 
e <- list(mode="vector" , length=nsamples) # define e as a list
for (i in 1:nsamples){
  e[[i]] <- rnorm(n=20 , mean = 0 , sd = 1)
}
e # accessing the whole object which is a list 
vec_01 <- e[[1]] ; vec_01 # accessing only the first vector   
vec_01[[3]] # for accessing the 3-d element within a vector
########################################################
