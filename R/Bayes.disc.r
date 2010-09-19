Bayes.disc<-function(Data,Prior,data.name="data",plot=TRUE,c.data=seq(1,length(Prior)),...){
Posterior<-(Data*Prior)/sum(Data*Prior)
if(plot==TRUE){
x<-seq(1,length(Prior))
dev.new(height=6,width=4);par(mfrow=c(3,1),mar=c(2,4,0.5,2),cex=.9)
f1<-plot(x,Data,type="h",col=1,lwd=6,xaxt="n",xlab="",...);grid(f1)
mtext(paste(data.name,c.data,sep="|"),side=1,at=x,cex=.9)
f2<-plot(x,Prior,type="h",col=2,xaxt="n",lwd=6,xlab="",...);grid(f2)
mtext(c.data,side=1,at=x,cex=.9)
f3<-plot(x,Posterior,type="h",col=3,lwd=6,xaxt="n",xlab="",...);grid(f3)
mtext(paste(c.data,data.name,sep="|"),side=1,at=x,cex=.9)}
res<-rbind(Data,Prior,Posterior)
colnames(res)<-c.data
res}

