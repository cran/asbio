ci.median<-function(x,conf=.95){
n<-nrow(as.matrix(x))
if(qbinom((1-conf)/2,n,0.5)==0)stop("CI not calculable")
L<- qbinom((1-conf)/2,n,0.5)
U<-n-L+1
if(L>=U)stop("CI not calculable")
order.x<-sort(x)
res<-list()
res$ci<-data.frame(median=median(x),lower=order.x[L],upper=order.x[n-L+1])
ends<-c((1-conf)/2,1-((1-conf)/2))*100
names(res$ci)<-c("estimate",paste(ends[1],"%"),paste(ends[2],"%"))
res$coverage<-1-(2*pbinom(q=L-1,n,0.5))
res
}
