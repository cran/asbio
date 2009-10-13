const<-function(Y,cat,digits=4){
p.a <- ifelse(Y>0,1,0)
cat1<-as.matrix(as.numeric(as.factor(cat)))
res <-matrix(0, nrow = ncol(Y),ncol=max(cat1))

for (i in 1:max(cat1)) {
sub<-as.matrix(p.a[cat1 == i,])
if(ncol(sub)>1){res[, i] <- colMeans(sub)}
if(ncol(sub)==1){res[,i]<-sub}}

colnames(res)<-levels(as.factor(cat))
rownames(res)<-colnames(Y)
res<-round(res,digits)
res
}