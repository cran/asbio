boot.ci.M<-function(X1,X2,alpha=0.05,est=huber.one.step,R=1000,type="perc"){
require(boot)||stop("This function requires the library 'boot'")
data<-data.frame(cbind(X1,X2))
boot.M<-function(data,i){
X1<-data$X1
X2<-data$X2
X1.b<-est(na.omit(X1[i]))
X2.b<-est(na.omit(X2[i]))
D<-X1.b-X2.b
}
b<-boot(data,boot.M,R=R,stype="i")
ci<-boot.ci(b,conf=1-alpha,type=type)
Rr<-length(na.omit(b$t))
ci.L<-as.numeric(as.data.frame(ci[4])[4])
ci.U<-as.numeric(as.data.frame(ci[4])[5])
res<-list()
res$result<-data.frame(R.used=Rr,ci.type =type,conf=1-alpha,se=sd(na.omit(b$t)),original=b$t0,lower=ci.L,upper=ci.U)
res
}
