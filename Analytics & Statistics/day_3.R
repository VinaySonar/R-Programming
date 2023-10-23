?seq
seq(10,20)
seq(20,10,length.out = 10)
seq(1,30,by=2)
seq.int(3,12,0.5)
seq(99,90,-2)
seq(90,99,-2)
seq(99,90,length.out=10) # divide the range into equal
seq_len(10)
seq(length.out=10)
#sequence along (print the indexes)
v=c(45,56,67,30,23,100,66)
print(v)
seq_along(v)
seq(along.with=v)
cat(v,seq_along(v))
seq(length.out=5.5)
seq(11,20,length.out=2)
# create vector using repeation vector
rep(1:5,3)
rep(1:5,each=3)
rep(1:5, times=1:5)
rep(c("Happy","Birthday","to u!"),times=c(1,2,3))
rep(1:5,times = c(1,4))
M<- matrix(c(3:14),nrow=3)    
print(M)
M<- matrix(c(3:14),nrow=4)
print(M)
#Access particular row and particular column
cat("\n print element row1 col3 M[1,3]",M[2,3])
M[2,3]=20
print(M)
#SUBTRACTION
M<- matrix(c(3:14),nrow=3)    
print(M-30)
# cREATE a matrix from all odd numbers from 0 to 100 and size of matrix will have 
#5 rows divide every element by 10 and add 100 to every ele

M = matrix(seq(1,100,2),nrow=5)
#M <- print(M/10)
M <- M + 100
print (M)


N=matrix(seq(2,100,2),nrow=5)
new= N*2  
print(new)
#access elements by condition
M[M<10]
print(M)
M[M<10]=100
print(M)
#add new column to matrix
M<- matrix(c(3:14),nrow=4)
print(M)
M=cbind(M,c(0,0,0,0))
print(M)
#Reshape matrix
M<- matrix(c(3:14),nrow=4)
print(M)
cat("Dim of M is",dim(M))
dim(M)=c(1,2)
M[c(-3,-4)]
M[-1,]
M[,-2]
M[-1,-5]
M
M[-1,-2]


#Write a program in R given a matrix of marks out of 40 size of matrix is 3x3
#Find the per of every student

# matrix operation
mar<-matrix(25:33,nrow = 3)
print(mar)
M=mar/40*100
print(M)


v=c(5,6,7,8,9)
mean(v)
mode(v)


x <- 1:4
lapply(x, runif, min = 10, max = 80)

?runif
#create dataframe

M1 = matrix(c(1,2,3,4),nrow=2)
#M1
df <- as.data.frame(M1)
df
df$V1


str(df)
is.data.frame(df)
nrow(df)
ncol(df)
rownames(df)
colnames(df)
#exmaple
#nominal varible doesn't have any order
emp = c("John Doe", "Peter Gynn", "Jolie Hope")
#Ordinal varible has order
designation <- factor(c("Manager", "Team Lead","SME"), ordered =TRUE,          levels = c("SME", "Team Lead","Manager"))
salary <- c(41000, 33400, 26800)
startdate <- as.Date(c("2010-11-1", "2008-3-25", "2007-3-14"))
employee.data <- data.frame(emp, designation,salary, startdate)

str(employee.data)
employee.data
?data.frame
# select rows based on condition
employee.data[employee.data$salary>35000,]
employee.data["salary"]
employee.data[c("salary","emp")]
employee.data[employee.data$salary>35000,c("emp","salary")]
