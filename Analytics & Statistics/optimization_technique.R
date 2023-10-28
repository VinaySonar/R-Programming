# OPTIMIZATION TECHNIQUE
#MIN Z = 3A – 2B
#s.t.	5A + 5B > 25
#3A < 30
#6B < 18
#3A + 9B < 36
#where:  A, B > 0
#prod.sol1<-lp("min",obj.fun,constr,constr.dir,int.vec = 1:2,rhs,compute.sens = TRUE)
obj1.fun<-c(3,-2)
constr1<-matrix(c(5,5,3,0,0,6,3,9),ncol = 2,byrow = TRUE)
constr1.dir<-c(">=","<=","<=","<=")
rhs1<-c(25,30,18,36)
library(lpSolve)
sol<-lp("min",obj1.fun,constr1,constr1.dir,rhs1,compute.sens = TRUE)
print(sol)
sol
sol$solution
