> One_Way_Anova_CBSE <- read_excel("C:/Users/dbda/Downloads/One_Way_Anova_ CBSE.xlsx")
attach(One_Way_Anova_CBSE)
One_Way_Anova_CBSE$City=as.factor(One_Way_Anova_CBSE$City)
str(One_Way_Anova_CBSE)
#Assumption
library(nortest)
shapiro.test(Marks)
library(car)
leveneTest(One_Way_Anova_CBSE$Marks,One_Way_Anova_CBSE$City)
Model<-aov(Marks~City,data=One_Way_Anova_CBSE)
summary(Model)
?aov
TukeyHSD(Model)
                                  