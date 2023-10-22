x=100000L
cat(x,class(x),typeof(x),mode(x),storage.mode(x))
x=10
cat(x,class(x),typeof(x),mode(x),storage.mode(x))
x= TRUE
cat(x,class(x))
x=5+4i
cat(x,class(x),typeof(x),mode(x),storage.mode(x))
x=5+4j
cat(x,class(x),typeof(x),mode(x),storage.mode(x))
x="Hi we are at IACSD"
cat(x,class(x),typeof(x),mode(x),storage.mode(x))
x_complex=c(3,0,TRUE,2+2i)
class(x_complex)
#make a list containing 1 logical automic variable
#one numeric vector
#one character automic vector
l=list(TRUE,c(23.5,7,43,56.435),"a")
print(l)
M = matrix( c('a','a','b','c','b','a'), nrow=2,ncol=3,byrow = TRUE)
print(M)
x_dim=array(10,20,30,40,50,60,70)
#create factor name for two departments tech and non tech having value
#(100,0,100,0,0,0)
dept=factor(c(100,0,100,0,0,0))
      level=c(0,100)
      tables=c("tech","non-tech"))
designation <- factor(c("Manager", "Team Lead","SME"), ordered =TRUE, levels = c("SME", "Team Lead","Manager"))
designation

