#Stepwise regression
MR1 <- read_excel("C:/Users/dbda/Downloads/MR1.xlsx")
attach(MR1)
Fitall<-lm(Buying~.,data = MR1)
Fitfirst<-lm(Buying~1,data = MR1)
#Step wise Forward Collection Method
step(Fitfirst,direction = "forward",scope = formula(Fitall))

# Stepwise Backward Elemination
step(Fitall,direction = "backward")


#Bidirectional 
step(Fitfirst,direction = "both",scope=formula(Fitall))
