student_mat <- read_csv("C:/Users/dbda/Downloads/student-mat.csv")
str(student_mat)
student_mat[student_mat$G1<11,]
student_mat[student_mat$sex=="F",]
M1=student_mat[student_mat$sex=="F",c("G2")] 
M2=student_mat[student_mat$sex=="M",c("G2")]
attach(student_mat)
library(moments)
skewness(M1)
skewness(M2)
kurtosis(M1)
df=read.csv("C:/Users/dbda/Downloads/76_attributes_heartdiseases.csv")
summary(df)

#create subset of a dataframe
