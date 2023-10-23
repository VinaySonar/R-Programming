#Logical Regression
logit <- read_excel("C:/Users/dbda/Downloads/logit.xlsx")
attach(logit)
#Model
Model<-glm(type~npreg+glu+bp+skin+bmi+ped+age,data = logit,family = "binomial")  
# we write family as Binomial beacause our data has two 
#catagories patient is diabetic or 
#non diabetic for more than two write "Multinomial"
summary(Model)
res<-predict(Model,logit,type="response")
res
head(logit)
head(res)
#Confusion Matrix
table(Actualvalue=logit$type,Predictedvalue=res>0.5) 

#To calculate R sq.
library(rcompanion)
nagelkerke(Model)














