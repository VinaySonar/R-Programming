#Simple Linear Reggresssion
Linear_Regg <- read_excel("C:/Users/dbda/R_PRACTICE/Linear Regg.xlsx")
attach(Linear_Regg)
library(nortest)
shapiro.test(Compansation)
shapiro.test(Performance)
plot(Compansation,Performance)
boxplot(Compansation)
boxplot(Performance)
#Regression Analysis
Model=lm (Performance~Compansation,data = Linear_Regg)
summary(Model)



