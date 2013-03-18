boot.ci.M<-function(X1,X2,alpha=0.05,est=huber.one.step,R=1000,method="perc"){

data<-data.frame(cbind(X1,X2))
boot.M<-function(data){
X1<-data$X1
X2<-data$X2
X1.b<-est(na.omit(X1))
X2.b<-est(na.omit(X2))
D<-X1.b-X2.b
}
b<-bootstrap(data,boot.M,R=R)
ci<-ci.boot(b,conf=1-alpha,method=method)
if(method=="norm") nm = 1
if(method=="basic") nm = 2
if(method=="perc") nm = 3
if(method=="BCa") nm = 4
 
Rr<-length(na.omit(b$dist))
ci.L<-as.numeric(as.data.frame(ci[nm,])[1])
ci.U<-as.numeric(as.data.frame(ci[nm,])[2])
res<-list()
res$result<-data.frame(R.used=Rr,ci.type = method,conf=1-alpha,se=sd(na.omit(b$t)),original=b[[3]][1],lower=ci.L,upper=ci.U)
res
}
