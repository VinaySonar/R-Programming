logit123 <- read_excel("C:/Users/dbda/Downloads/logit123.xlsx")
attach(logit123)
str(logit123)
logit123(Gender<-as.factor(logit123$Gender))
logit123$`Educational Background`<-as.factor(logit123$`Educational Background`)
Model<-glm(Selection~.,data = logit123,family = "binomial")
summary(Model)
