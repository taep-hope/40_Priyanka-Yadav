##Solve the linear problem using dual simplex method using R programming
#Max z=40x1+50x2
#Subkect to
#2x1 + 3x2<=3
#8x1 +  4x2<=5
#x1, x2>=0

#Import lpsolve package
library(lpSolve)

#Set coefficients of the objective functions
f.obj=c(40,50)

#Set matrix
f.con=matrix(c(2,3,8,4),nrow=2,byrow=TRUE)

#Set unequality signs
f.dir=c("<=","<=")

#set right handside coefficients
f.rhs=c(3,5)

#Final value(z)
lp("max",f.obj,f.con,f.dir,f.rhs)

#variables final values
lp("max",f.obj,f.con,f.dir,f.rhs)$solution

#Senstivities
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens = TRUE)$sens.coef.from
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens = TRUE)$sens.coef.to

#Dual Values
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens = TRUE)$duals

#Duals lower and upper limits
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens = TRUE)$duals.from
lp("max",f.obj,f.con,f.dir,f.rhs,compute.sens = TRUE)$duals.to