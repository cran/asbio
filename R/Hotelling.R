Hotelling<-function(Y,X){
Xn<-as.numeric(factor(X))
p<-ncol(Y)
n1<-length(X[Xn==1])
n2<-length(X[Xn==2])
S<-(1/(n1+n2-2))*((n1-1)*(var(Y[Xn==1,])+var(Y[Xn==2,])))
X1<-apply(Y[Xn==1,],2,mean)
X2<-apply(Y[Xn==2,],2,mean)
D2<- (X1-X2)%*%solve(S)%*%(X1-X2)
T2<-(n1*n2)/(n1+n2)*D2
F.star<-((n1+n2-(p+1))/((n1+n2-2)*p))*T2
p.val<-pf(F.star,p,(n1+n2-(p+1)),lower.tail=FALSE)
res<-list()
res$D.sq<-D2
res$T.sq<-T2
res$table<-data.frame(df1=p,df2=(n1+n2-(p+1)),F.star=F.star,p.val)
names(res$table)<-c("df1","df2","F*","P(F > F*)")
res
}
