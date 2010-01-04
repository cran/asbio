Kullback<-function(Y,X){
n.j<-as.matrix(summary(factor(X)))
p<-ncol(Y)
g<-nlevels(factor(X))
det.S<-det(V.mat(Y,X))
det.S.j<-rep(NA,g)
for(i in 1:g){
det.S.j[i]<-det(var(subset(Y,X==i)))
}
TS<-sum((n.j-1)/2*log(det.S/det.S.j))
p.val<-pchisq(TS,(g-1)*p*(p+1)/2,lower.tail=FALSE)
res<-data.frame(TS=TS,df=(g-1)*p*(p+1)/2,p.val=p.val)
names(res)<-c("Chi*","df","P(Chi>Chi*)")
res
}