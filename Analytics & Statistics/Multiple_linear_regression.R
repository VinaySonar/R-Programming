#multiple linear regression
MR1 <- read_excel("C:/Users/dbda/Downloads/MR1.xlsx")
attach(MR1)
Mode1<-lm(Buying~Awarness+Attitude+Perception+Cost+Rating,data = MR1)
summary(Mode1)
Mode2<-lm(Buying~Awarness+Attitude+Perception,data = MR1)
summary(Mode2)
plot(Mode1)
par(mfrow=c(2,2))
plot(Mode1)

