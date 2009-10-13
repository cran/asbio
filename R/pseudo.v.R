pseudo.v<-function(data,statistic,matrix=FALSE){
if(matrix==TRUE)n<- nrow(data)
if(matrix==FALSE)n<- nrow(as.matrix(data))
theta.star<-statistic(data)
theta.star.i<-matrix(ncol=1,nrow=n)
Pseudo.v<-matrix(ncol=1,nrow=n)
for(i in 1:n){
if(matrix==TRUE){
theta.star.i[i]<-statistic(data[-i,])}
if(matrix==FALSE){
data<-as.matrix(data)
theta.star.i[i]<-statistic(data[-i])}
Pseudo.v<-n*theta.star-((n-1)* theta.star.i)
}
data.frame(theta.hat.star=theta.star.i,Pseudo.val=Pseudo.v)
}
