CR <- read_excel("C:/Users/dbda/Downloads/CR.xlsx")                     
attach(CR)
#Assumptions
library(nortest)
shapiro.test(advt)
shapiro.test(sales)
plot(advt,sales)
boxplot(sales)
#correletion Analysis
cor(advt,sales)
cor.test(advt,sales)
cor.test(advt,sales,method = "pearson")

