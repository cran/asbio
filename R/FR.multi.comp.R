FR.multi.comp<-function(Y,X,blocks,nblocks,conf=.95)
{block.ranks<-matrix(ncol=nlevels(X),nrow=nblocks)
for(i in 1:nblocks){
block.ranks[i,]<-rank(Y[blocks==i])
}	
mean.ranks<-apply(block.ranks,2,mean)

R1<-tapply(Y,X,length)
r<-length(R1)

dif.mat<-outer(mean.ranks,mean.ranks,"-")
diffs<-dif.mat[upper.tri(dif.mat)]

SE.diff<-sqrt((r*(r+1))/(6*nblocks))
B<-qnorm(1-((1-conf)/(2*(r^2-r)/2)))
p.val<-2*pnorm(abs(diffs)/SE.diff,lower.tail=FALSE)
p.adj<-ifelse(p.val*((r^2-r)/2)>=1,1,round(p.val*((r^2-r)/2),6))
hwidths<-B*SE.diff
val<-round(cbind(diffs,diffs-hwidths,diffs+hwidths),5)
Decision<-ifelse((val[,2]>0&val[,3]>0)|val[,2]<0&val[,3]<0,"Reject H0","FTR H0")
res<-list()
mr<-as.matrix(mean.ranks)
row.names(mr)<-levels(X)
res$mean.rank.in.blocks<-mr
val<-as.data.frame(cbind(val,Decision,p.adj))
lvl<-outer(levels(X),levels(X),function(x1,x2){paste(paste("Avg.rank",x1,sep=""),paste("Avg.rank",x2,sep=""),sep="-")})
dimnames(val)<-list(lvl[upper.tri(lvl)],
c("Diff","Lower","Upper","Decision","Adj. p-value"))
res$val<-val
res
}
