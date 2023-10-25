#Decsion Tree
data("iris")
attach(iris)
View(iris)
summary(iris)
str(iris)
#Data partition
set.seed(555)
ind<-sample(2,nrow(iris),replace = TRUE,prob = c(0.8,0.2))
train<-iris[ind==1,]
test<-iris[ind==2,]

#Decision Tree With Party Package
library(party)
tree<-ctree(Species~.,train)
print(tree)
plot(tree)
plot(tree,type="simple")

#prediction
predict(tree,train)
predict(tree,train,type="prob")

#Misclassification Error for Training data
p1<-predict(tree,train)
tab1<-table(Predicted=p1,Actual=train$Species)
tab1
1-sum(diag(tab1))/sum(tab1)


#Misclassification for test data
p2<-predict(tree,test)
tab2<-table(Predicted=p2,Actual=test$Species)
tab2
1-sum(diag(tab2))/sum(tab2)
# regression tree
tree1<-ctree(Sepal.Length~.,train)
plot(tree1)




















