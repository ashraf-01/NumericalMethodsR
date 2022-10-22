 v <- c(4,2,6,3,5,3)
 I1 <- (v[3] < 3) || (v[3] > 4) # or 
 I1;!I1
 I2 <- (v[3] >= 3) && (v[3] <= 4) # and
 I2
 (v >= 3) && (v <= 4) 
 # explaining the error because length of vec v above 
 # already declared as 6 v.s. my v >= 3 && v <= 4
 # i.e. comparing a scalar to a vector !
 # function "which" not only when but where the condition is true 
 v <- c(FALSE ,TRUE, TRUE,FALSE , TRUE) ; v
 which(v)
a <- c(1,2,1) ; b <-rep(1,3); a;b 
which(a > b)
v <- c(4,1,6,8,1,4,6) ; v
I1 <- which(v>5) ; I1 
# using for loop to do the same thing 
n <- length(v)
I2 <- logical(n)
for (i in 1:n){
  if(v[i] > 5){
    I2[i]<- TRUE
    
  }
}
print(I2)
# now to turn TRUE /FALSE output in to numerical positions
n <- length(v)
I3 <- c() ; I3 # at the moment of creation length is not known
j <- 0
for (i in 1:n){
  if (v[i] > 5){
    j <- j+1
    I3[j] <- i
  }
}
print(I3) ; print(j) ; print(i) ; n
length(I3)
# notice that dim / length of v is being run by i 
# and both of them are equal but j-th index 
# corresponds only to number of times condition is TRUE 
############################# Matrix-case
A <- rbind(c(1,2,4,3),c(4,3,2,1),c(1,3,2,2));A
B <- rbind(1:4,4:1,2*rep(1,4));B
Ind1 <- which(A>B,arr.ind = TRUE) ; Ind1
# using for loop this time with two indices 
A;B
n <- dim(A)
row <- c() # with unknown length at initiation
col <- c() # with unknown length at initiation
s <- 0 # my counter 
 for (j in 1:n[1]){
   for (i in 1:n[2]){
     if (A[j,i] > B[j,i]){
       s <- s + 1
       row[s] <- i
       col[s] <- j
     }
   }
 }
 print(row);print(col)
 Ind2 <- cbind(row , col) ; Ind2
########################## while loops
 v <- c(1,2,4,3,3,2,1)
 it <- 1 
 while (v[it] < 30){
   it <- it +1
   if (it > length(v)){
     it <- c()
     break
   }
 }
 v[it];it
##################
 z <- 100
 it <- 0 # to track number of divisions until final
 # result of z
 while (z > 0){
   z <- z/2
   it <- it + 1
 }
z ; it

