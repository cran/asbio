plotCI.reg<-function(x,y,conf=.95,CI=TRUE,PI=TRUE,reg.col=1,CI.col=2,PI.col=4,reg.lty=1,CI.lty=2,PI.lty=3,reg.lwd=1,CI.lwd=1, ...){
  lm.temp<-lm(y~x)
  CI<-predict(lm.temp,level=conf,interval="conf")
  PI<-predict(lm.temp,level=conf,interval="prediction")
  min.max.Y<-c(min(y,PI[,2]),max(y,PI[,3]))
  plot(x,y,ylim=min.max.Y,...)
  abline(lm(y~x),lty=reg.lty,lwd=reg.lwd,col=reg.col)
  o<-order(x)
    lines(x[o],CI[,2][o],col=CI.col,lty=CI.lty,lwd=CI.lwd)
    lines(x[o],CI[,3][o],col=CI.col,lty=CI.lty,lwd=CI.lwd)
    lines(x[o],PI[,2][o],col=PI.col,lty=PI.lty,lwd=CI.lwd)
    lines(x[o],PI[,3][o],col=PI.col,lty=PI.lty,lwd=CI.lwd)
    summary(lm.temp)
}
