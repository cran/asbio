KW.multi.comp<-function(Y,X,conf){
ranks<-rank(Y)
ni<-tapply(ranks,X,length)
N<-length(ranks)
r<-length(ni)

mean.ranks<-tapply(ranks,X,mean)
dif.mat<-outer(mean.ranks,mean.ranks,"-")
diffs<-dif.mat[upper.tri(dif.mat)]

ni.mat<-outer(1/ni,1/ni,"+")
ni.den<-ni.mat[upper.tri(ni.mat)]

SE.diff<-sqrt(((N*(N+1))/12)*ni.den)
B<-qnorm(1-((1-conf)/(r^2-r)))
p.val<-2*pnorm(abs(diffs)/SE.diff,lower=FALSE)
p.adj<-ifelse(p.val*((r^2-r)/2)>=1,1,round(p.val*((r^2-r)/2),6))
hwidths<-B*SE.diff
val<-round(cbind(diffs,diffs-hwidths,diffs+hwidths),5)
Decision<-ifelse((val[,2]>0&val[,3]>0)|val[,2]<0&val[,3]<0,"Reject H0","FTR H0")
val<-as.data.frame(cbind(val,Decision,p.adj))
lvl<-outer(levels(X),levels(X),function(x1,x2){paste(paste("Avg.rank",x1,sep=""),paste("Avg.rank",x2,sep=""),sep="-")})
dimnames(val)<-list(lvl[upper.tri(lvl)],
c("Diff","Lower","Upper","Decision","Adj. p-value"))
val
}
