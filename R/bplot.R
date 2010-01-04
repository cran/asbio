bplot<-function(y,x,int=c("SE","CI"),conf=.95,plot.ci =TRUE, bar=TRUE,simlett=FALSE,bar.col="gray",lett=NULL,exp.fact=2,xlab="x",ylab="y",err="y",sfrac=0.01,gap=0,slty=par("lty"),scol=NULL,pt.bg=par("bg"),...){
require(plotrix)

t.conf<-function(data,conf=.95){
  n<-nrow(as.matrix(data))
  SE<-sd(data)/sqrt(n)
  t.star<-qt((1-((1-conf)/2)),n-1)
  m<-SE*t.star
  CI<-c(mean(data)-m,mean(data)+m)
  result<-list()
  result$SE<-SE
  result$margin<-m
  result$CI<-CI
  result
}
SE<-tapply(y,x,function(x){t.conf(x[!is.na(x)])$SE})
CI<-tapply(y,x,function(x){t.conf(x[!is.na(x)],conf=conf)$margin})
mean.vec<-tapply(y,x,function(x){mean(x[!is.na(x)])})
b<-barplot(mean.vec,plot=FALSE)
  if(plot.ci==TRUE){
    if (bar==TRUE){
      if(int =="SE"){
        if(simlett==TRUE)yLim=c(0,max(mean.vec+(SE*exp.fact)))
        if(simlett==FALSE)yLim=c(0,max(mean.vec+SE))}
        plotCI(barplot(mean.vec,col=bar.col,ylim=yLim,xlab=xlab,ylab=ylab,...),mean.vec,uiw=SE,add=TRUE)
                }
      if(int =="CI"){
        if(simlett==TRUE)yLim=c(0,max(mean.vec+(CI*exp.fact)))
        if(simlett==FALSE)yLim=c(0,max(mean.vec+CI))
        plotCI(barplot(mean.vec,col=bar.col,ylim=yLim,xlab=xlab,ylab=ylab),mean.vec,uiw=CI,add=TRUE,...)}
    if (bar==FALSE){
      if (int =="SE")
        plotCI(x=as.numeric(levels(as.factor(x))),mean.vec,uiw=SE,xlab=xlab,ylab=ylab,...)
      if (int =="CI")
        plotCI(x=as.numeric(levels(as.factor(x))),mean.vec,uiw=CI,xlab=xlab,ylab=ylab,...)
    }
  }
  if (plot.ci==FALSE)barplot(mean.vec, ...)

if (simlett==TRUE)
mtext(lett,side=3,at=b,line=0.5)
}

