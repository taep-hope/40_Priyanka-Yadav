#Transportation Problem

#Importing lpsolve
library(lpSolve)

#Set transportation costs matrix
costs=matrix(c(10,2,20,11,12,7,9,20,4,14,16,18),nrow=3,byrow = TRUE)

#Set names for rows and columns
colnames(costs)=c("Customer 1","Customer 2","Customer 3","Customer 4")
rownames(costs)=c("Supplier 1","Supplier 2","Supplier 3")

#Set Unequality/equality signs for suppliers
row.signs=rep("<=",3)

#Set right hand side of coefficient suppliers
row.rhs=c(15,25,10)

#Set unequality/equality signs for customers
col.signs=rep(">=",4)

#Set right hand side of coefficient customers
col.rhs=c(5,15,15,15)

#Final Value(z)
TotalCost=lp.transport(costs,"min",row.signs,row.rhs,col.signs,col.rhs)

#Variables final values
lp.transport(costs,"min",row.signs,row.rhs,col.signs,col.rhs)$solution

print(TotalCost)