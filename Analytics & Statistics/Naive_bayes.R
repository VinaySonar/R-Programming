#naive Bayes in R-classification
naive_Bayes <- read_excel("C:/Users/dbda/Downloads/naive Bayes.xlsx")
attach(naive_Bayes)
library(naivebayes)
library(dplyr)
library(ggplot2)
library(psych)
str(naive_Bayes)
naive_Bayes$admit<-as.factor(naive_Bayes$admit)
naive_Bayes$Rank<-as.factor(naive_Bayes$Rank)
str(naive_Bayes)
xtabs(~admit+Rank,data = naive_Bayes)
pairs.panels(naive_Bayes[-1])
naive_Bayes%>%ggplot(aes(x=admit,y=grade,fill=admit))+geom_boxplot()+ggtitle("Box plot")
naive_Bayes%>%ggplot(aes(x=admit,y=gpa,fill=admit))+geom_boxplot()+ggtitle("Box plot")
naive_Bayes%>%ggplot(aes(x=grade,fill=admit))+geom_density(alpha=0.8,color="black")+ggtitle("Density Plot")
naive_Bayes%>%ggplot(aes(x=gpa,fill=admit))+geom_density(alpha=0.8,color="black")+ggtitle("Density Plot")


#Data Partition
ind<-sample(2,nrow(naive_Bayes),replace = T,prob = c(0.8,0.2))
train<-naive_Bayes[ind==1,]
test<-naive_Bayes[ind==2,]
model<-naive_bayes(admit~.,data=train)
model
train%>%filter(admit=="0")%>%summarise(mean(grade),sd(grade))
train%>%filter(admit=="0")%>%summarise(mean(gpa),sd(gpa))
train%>%filter(admit=="1")%>%summarise(mean(grade),sd(grade))
train%>%filter(admit=="1")%>%summarise(mean(gpa),sd(gpa))
plot(model)
p1<-predict(model,train,type = "prob")
p1

head(p1)
head(cbind(p,train))
p<-predict(model,train)
(tab1<-table(p,train$admit))
(26+95)/167
p2<-predict(model,test)
(tab2<-table(p2,test$admit))
1-sum(diag(tab2))/sum(tab2)
p2<-predict(model,test)
(tab2<-table(p2,test$admit))
1-sum(diag(tab2))/sum(tab2)















