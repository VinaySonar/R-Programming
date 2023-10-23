#cluster analysis
Case_1_Godrej_Ltd <- read_excel("C:/Users/dbda/Downloads/Case 1_ Godrej Ltd.xlsx")
attach(Case_1_Godrej_Ltd)
z<-Case_1_Godrej_Ltd[,-c(1,1)]
print(z)
head(z)
tail(z)
m<-apply(z,2,mean)# individual variable mean
s<-apply(z,2,sd)# individual variable sd
z<-scale(z,m,s)
distance<-dist(z)
distance
print(distance,digits = 2)

# Hierarchical cluster analysis

hc.c<-hclust(distance)
# Dendrogram
plot(hc.c)
plot(hc.c,hang = -1)
hc.a<-hclust(distance,method = "average")
hc.a
plot(hc.a)
plot(hc.a,hang = -1)
member.c<-cutree(hc.c,3)
member.c
member.a<-cutree(hc.a,2)

table(member.c,member.a)
aggregate(z,list(member.c),mean)
aggregate(Case_1_Godrej_Ltd[,-c(1,1)],list(member.c),mean)

#k means clustering
kc<-kmeans(z,3)
print(kc)
kc$cluster
library(cluster)


























