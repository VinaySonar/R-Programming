#create subset of a dataframe

df_1 = subset(df, df$V1 > 200)
head(df_1)
df_1 = subset(df, df$V1 > 200, select = c("V1","V2"))
head(df_1)
nrow(df_1)
#######################################################################

# Head Function

head(df_1)

df_1 = subset(df, df$V1 > 200, select =  c("v1","v2"))


library(ggplot2)


mpg


#select all numeric column or all string/character columns
Filter(is.numeric, mpg)
nrow(df)
df_new=Filter(is.numeric,df)
ncol(df_new)

Filter(is.character, mpg)
nrow(df)
df_new=Filter(is.character,df)
ncol(df_new)
colnames(df_new)
write.csv(m2_df,"new_df.csv")


library(dplyr)

stud.data = read.csv("C:/Users/dbda/Downloads/student-mat.csv")
nrow(stud.data)


urban.stud = filter(stud.data , address == 'U')
nrow(urban.stud)

f.stud = filter(stud.data , Fjob %in% c('health' , 'teacher'))
nrow(f.stud)

comb.stud = filter(stud.data , address == 'U' &
                     Fjob %in% c('health' , 'teacher'))
nrow(comb.stud)


comb.stud = filter(stud.data , address == 'U' |
                     Mjob == 'at_home')
nrow(comb.stud)

age.stud = arrange(stud.data , age)
age.stud$age

age.stud = arrange(stud.data , desc(age))
age.stud$age

colnames(stud.data)












