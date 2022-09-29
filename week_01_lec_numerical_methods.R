v <- c(2,1,3,5,8)
v[] # all elements 
v[1:2] # first two elements 
v[1] 
v[length(v)] # just last element 
v[2:length(v)] # second to last element 
M <- matrix(c(0,1,2,3,4,5,6,7,8), nrow = 3, byrow = TRUE)
M
M[1:nrow(M),2]
M[1:nrow(M),3]
dim(M)
M[2,3] # single element 
M[2:nrow(M),1:2] # extracting a subspace / submatirx 
M[1,] # only 1-st row
M[,-1] # 1-st col ignored 
M[,2:3] # 1-st col ignored
###########################################
v <- rep(0,3) # 0 matrix with 3 col and only one row matrix
v
dim(v)
v <- matrix(0,5,5)
v
V <- diag(1,5)
V





