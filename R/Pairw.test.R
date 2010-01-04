Pairw.test<-function(y,x,conf.level=0.95,method=c("LSD","Bonf","Tukey","Sheffe"),MSE=NULL,df.err=NULL){
if(method=="LSD"){
res<-LSD.test(y,x,conf.level=conf.level,MSE=MSE,df.err=df.err)}
if(method=="Bonf"){
res<-BonferroniCI(y,x,conf.level=conf.level,MSE=MSE,df.err=df.err)}
if(method=="Tukey"){
res<-TukeyCI(y,x,conf.level=conf.level,MSE=MSE,df.err=df.err)}
if(method=="Scheffe"){
res<-ScheffeCI(y,x,conf.level=conf.level,MSE=MSE,df.err=df.err)}
res
}


LSD.test<-function(y,x,conf.level=0.95,MSE=NULL,df.err=NULL){
fitted<-tapply(y,factor(x),mean)
nis<-tapply(y,factor(x),length)
a<-anova(lm(y~factor(x)))
df.error<-ifelse(is.null(df.err),a$Df[length(a$Df)],df.err)
MSE<-ifelse(is.null(MSE),a$"Mean Sq"[length(a$"Mean Sq")],MSE)

dif.mat<-outer(fitted,fitted,"-")
diffs<-dif.mat[upper.tri(dif.mat)]

SE.diff.mat<-sqrt(MSE*outer(1/nis,1/nis,"+"))
SE.diff<-SE.diff.mat[upper.tri(SE.diff.mat)]

p.val<- 2*pt(abs(diffs/SE.diff),df.error,lower=FALSE)
t<-qt(1-(1-conf.level)/2,df.error)
hwidths<-t*SE.diff
LSD<-round(qt(1-((1-conf.level)/2),df.error)*SE.diff,5)
Decision<- ifelse(abs(diffs)>LSD,"Reject H0","FTR H0")
val<-as.data.frame(cbind(LSD,diffs,round(diffs-hwidths,5),round(diffs+hwidths,5),Decision,round(p.val,5)))
lvl<-outer(levels(x),levels(x),function(x1,x2){paste(paste("mu",x1,sep=""),paste("mu",x2,sep=""),sep="-")})
dimnames(val)<-list(lvl[upper.tri(lvl)],
c("LSD","Diff","Lower","Upper","Decision","Adj. p-value"))
val
}
 

BonferroniCI<-function(y,x, conf.level=0.95,MSE=NULL,df.err=NULL){

fitted<-tapply(y,factor(x),mean)
nis<-tapply(y,factor(x),length)
a<-anova(lm(y~factor(x)))
df.error<-ifelse(is.null(df.err),a$Df[length(a$Df)],df.err)
MSE<-ifelse(is.null(MSE),a$"Mean Sq"[length(a$"Mean Sq")],MSE)
r<-length(fitted)

dif.mat<-outer(fitted,fitted,"-")
diffs<-dif.mat[upper.tri(dif.mat)]

SE.diff.mat<-sqrt(MSE*outer(1/nis,1/nis,"+"))
L.hat.SE<-SE.diff.mat[upper.tri(SE.diff.mat)]

p.val<- 2*pt(abs(diffs/L.hat.SE),df=df.error,lower=FALSE)
p.adj<-ifelse(p.val*((r^2-r)/2)>=1,1,round(p.val*((r^2-r)/2),6))
t<-qt(1-(1-conf.level)/(r*(r-1)),df.error)
hwidths<-t*L.hat.SE
val<-round(cbind(diffs,diffs-hwidths,diffs+hwidths),5)
Decision<-ifelse((val[,2]>0&val[,3]>0)|val[,2]<0&val[,3]<0,"Reject H0","FTR H0")
val<-as.data.frame(cbind(val,Decision,p.adj))
lvl<-outer(levels(x),levels(x),function(x1,x2){paste(paste("mu",x1,sep=""),paste("mu",x2,sep=""),sep="-")})
dimnames(val)<-list(lvl[upper.tri(lvl)],
c("Diff","Lower","Upper","Decision","Adj. p-value"))
val
}


TukeyCI<-function(y,x, conf.level=0.95,MSE=NULL,df.err=NULL){
fitted<-tapply(y,factor(x),mean)
nis<-tapply(y,factor(x),length)
a<-anova(lm(y~factor(x)))
df.error<-ifelse(is.null(df.err),a$Df[length(a$Df)],df.err)
MSE<-ifelse(is.null(MSE),a$"Mean Sq"[length(a$"Mean Sq")],MSE)
r<-length(fitted)

dif.mat<-outer(fitted,fitted,"-")
diffs<-dif.mat[upper.tri(dif.mat)]

SE.diff.mat<-sqrt(MSE*outer(1/nis,1/nis,"+"))
SE.diff<-SE.diff.mat[upper.tri(SE.diff.mat)]

Q.star<-abs((sqrt(2)*diffs)/ SE.diff) 
p.val<-round(ptukey(Q.star,r,df=df.error,lower.tail=FALSE),6)
T<-qtukey(conf.level,r,df.error)/sqrt(2)
hwidths<-T*SE.diff
val<-round(cbind(diffs,diffs-hwidths,diffs+hwidths),5)
Decision<-ifelse((val[,2]>0&val[,3]>0)|val[,2]<0&val[,3]<0,"Reject H0","FTR H0")
val<-as.data.frame(cbind(val,Decision,p.val))
lvl<-outer(levels(x),levels(x),function(x1,x2){paste(paste("mu",x1,sep=""),paste("mu",x2,sep=""),sep="-")})
dimnames(val)<-list(lvl[upper.tri(lvl)],
c("Diff","Lower","Upper","Decision","Adj. p-value"))
val
}

 
ScheffeCI<-function(y,x, conf.level=0.95,MSE=NULL,df.err=NULL){
fitted<-tapply(y,factor(x),mean)
nis<-tapply(y,factor(x),length)
a<-anova(lm(y~factor(x)))
df.error<-ifelse(is.null(df.err),a$Df[length(a$Df)],df.err)
MSE<-ifelse(is.null(MSE),a$"Mean Sq"[length(a$"Mean Sq")],MSE)
r<-length(fitted)

dif.mat<-outer(fitted,fitted,"-")
diffs<-dif.mat[upper.tri(dif.mat)]

SE.diff.mat<-sqrt(MSE*outer(1/nis,1/nis,"+"))
SE.diff<-SE.diff.mat[upper.tri(SE.diff.mat)]

F.star<-diffs^2/((r-1)*SE.diff^2)
p.val<-round(pf(F.star,r-1,df.error,lower.tail=FALSE),6)
S<-sqrt((r-1)*qf(conf.level,r-1,df.error))
hwidths<-S*SE.diff
val<-round(cbind(diffs,diffs-hwidths,diffs+hwidths),5)
Decision<-ifelse((val[,2]>0&val[,3]>0)|val[,2]<0&val[,3]<0,"Reject H0","FTR H0")
val<-as.data.frame(cbind(val,Decision,p.val))
lvl<-outer(levels(x),levels(x),function(x1,x2){paste(paste("mu",x1,sep=""),paste("mu",x2,sep=""),sep="-")})
dimnames(val)<-list(lvl[upper.tri(lvl)],
c("Diff","Lower","Upper","Decision","Adj. p-value"))
val
}



