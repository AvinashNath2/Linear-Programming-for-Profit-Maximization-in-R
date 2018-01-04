obj.fun <- c(-2000,5000)
# Install and Load Library
library(lpSolve)
# Matrix of 2*5 to make the equations 
constr <- matrix(c(1,0,0,1,1,0,0,1,1,1), ncol = 2,byrow = TRUE)
# Direction of each euation 
constr.dir <- c(">=",">=","<=","<=",">=")
# Right-Hand--Side of the equation 
rhs <- c(100,80,200,170,200)
prod.sol <- lp("max",obj.fun,constr,constr.dir,rhs,compute.sens = TRUE)
# Final Solution
prod.sol$solution