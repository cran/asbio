Shep.comp<-function(dis,max.dim=10){
require(MASS)
Raw.cor<-matrix(ncol=1,nrow=max.dim)
Linear.cor<-matrix(ncol=1,nrow=max.dim)
Stress<- matrix(ncol=1,nrow=max.dim)
for(i in 1:max.dim){
temp<-Shepard(d=dis,x=cmdscale(dis,k=i))
Raw.cor[i]<-cor(temp$x,temp$y)^2
Linear.cor[i]<-cor(temp$y,temp$yf)^2
Stress[i]<-sum((temp$y - temp$yf)^2)/sum(temp$y^2)
Rstress<-1-Stress
}
res<-cbind(Raw.cor^2, Linear.cor^2, Rstress)
colnames(res)<-c("Raw.Rsq", "Linear.Rsq", "R.stress")
res
}
