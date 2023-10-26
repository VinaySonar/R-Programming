#Chi-square
chi_square <- read_excel("C:/Users/dbda/Downloads/chi-square.xlsx")
attach(chi_square)
table(grade)
table(code,grade)
TAB=table(code,grade)
chisq.test(TAB,correct=T)
CHI<-chisq.test(TAB,correct=T)
CHI$p.value
CHI$expected
fisher.test(TAB,conf.int = T,conf.level = 0.95)
barplot(TAB,beside = T,legend.text = T)
