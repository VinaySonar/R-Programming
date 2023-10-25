Case_2_Shopping_Mall_Cluster_Analysis <- read_excel("C:/Users/dbda/Downloads/Case 2_Shopping Mall_Cluster Analysis.xlsx")
attach(Case_2_Shopping_Mall_Cluster_Analysis)
z<-Case_2_Shopping_Mall_Cluster_Analysis
print(z)
head(z)
tail(z)
m<-apply(z,2,mean)
s<-apply(z,2,sd)
z<-scale(z,m,s)
distance<-dist(z)
distance
print(distance,digits = 2)
hc.c<-hclust(distance)
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
aggregate(Case_2_Shopping_Mall_Cluster_Analysis,list(member.c),mean)
kc<-kmeans(z,3)
print(kc)
kc$cluster


