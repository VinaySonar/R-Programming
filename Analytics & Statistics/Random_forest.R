#Random Forest in R
data("iris")
attach(iris)
# data partition
set.seed(123)
ind<-sample(2,nrow(iris),replace=T,prob = c(0.8,0.2))
train<-iris[ind==1,]
test<-iris[ind==2,]
#model - random forest
library(randomForest)
set.seed(222)
rf<-randomForest(Species~.,data = train)
print(rf)
rf$confusion
attributes(rf)
# prediction and confusion
rf$confusion
library(carat)
p1<-predict(rf,train)
head(p1)
head(train$Species)
library(carat)
library(e1071)
confusionMatrix(p1,train$Species)
p2<-predict(rf,test)
#OOB

p2<-predict(rf,test)
confusionMatrix(p2,test$Species)


varImpPlot(rf)
varImpPlot(rf,sort=T,n.var = 3,main="top 3")
importance(rf)
#variable use
varUsed(rf)
# partial plot
partialPlot(rf,train,Petal.Length,"versicolor")
plot(rf)
