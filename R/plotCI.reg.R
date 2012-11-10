plotCI.reg<-function(x,y,conf=.95, CI = TRUE, PI = TRUE, reg.col = 1,CI.col=2,PI.col=4,reg.lty=1,CI.lty=2,PI.lty=3,reg.lwd=1,CI.lwd=1, ...){
  lm.temp<-lm(y~x)
  CIm<-predict(lm.temp,level=conf,interval="conf")
  PIm<-suppressWarnings(predict(lm.temp,level=conf,interval="prediction"))
  min.max.Y<-c(min(y,PIm[,2]),max(y,PIm[,3]))
  plot(x,y,ylim = min.max.Y,...)
  abline(lm(y~x),lty=reg.lty,lwd=reg.lwd,col=reg.col)
  o<-order(x)
if(CI == TRUE){  
    lines(x[o],CIm[,2][o],col=CI.col,lty=CI.lty,lwd=CI.lwd)
    lines(x[o],CIm[,3][o],col=CI.col,lty=CI.lty,lwd=CI.lwd)}
if(PI == TRUE){
    lines(x[o],PIm[,2][o],col=PI.col,lty=PI.lty,lwd=CI.lwd)
    lines(x[o],PIm[,3][o],col=PI.col,lty=PI.lty,lwd=CI.lwd)}
    summary(lm.temp)
}
