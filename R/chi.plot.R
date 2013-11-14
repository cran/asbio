chi.plot<-function(Y1,Y2){
###################
n<-length(Y1)
o1<-matrix(nrow=n,ncol=n)
o2<-matrix(nrow=n,ncol=n)
for(i in 1:n){ 
o1[i,]<-outer(Y1[i],Y1,"-")
o2[i,]<-outer(Y2[i],Y2,"-")}
diag(o1)=NA
diag(o2)=NA
t1<-ifelse(o1>0,1,0)
t2<-ifelse(o2>0,1,0)
t3<-matrix(ncol=ncol(t1),nrow=nrow(t1))
for(i in 1:n){
t3[i,]<-ifelse(t1[i,]==1&t2[i,]==1,1,0)
}
#####################
H<-apply(t3,1,function(x){sum(x,na.rm=TRUE)})/(n-1)
Z<-apply(t1,1, function(x){sum(x,na.rm=TRUE)})/(n-1)
G<-apply(t2,1, function(x){sum(x,na.rm=TRUE)})/(n-1)
S<-sign((Z-0.5)*(G-0.5))
chi<-(H-Z*G)/sqrt(Z*(1-Z)*G*(1-G))
lambda<-4*S*pmax((Z-0.5)^2,(G-0.5)^2)
thresh<-4*(1/(n-1)-0.5)^2
####################### 
plot(lambda[abs(lambda)<thresh],chi[abs(lambda)<thresh],ylim=c(-1,1),
xlab=expression(lambda),ylab=expression(chi))
abline(h=1.78/sqrt(n))
abline(h=-1.78/sqrt(n))
}

