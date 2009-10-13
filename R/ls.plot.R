ls.plot<-function(X, poss=NULL, parameter="mu",est.lty=2, est.col=2,conv = 0.01, anim=TRUE, interval=0.01,...){
if(is.null(poss)) poss<-seq(mean(X)-3*sd(X),mean(X)+3*sd(X),conv)
sq.res<-sapply(poss, function(x){sum((x-X)^2)})
est<-poss[sq.res==min(sq.res)]
LS.est<-mean(X)
  if(anim==FALSE){
  plot(poss,sq.res,type="l",ylab="Sum of squares",...)
  }
  nm<-which(poss==est)[1]
  if(anim==TRUE){
      for(i in 1:nm){ 
      plot(poss,sq.res,type="n",ylab="Sum of squares",...)
      arrows(poss[i],sq.res[i],poss[i+1],sq.res[i+1],col=2,length=.15,lwd=1)
      points(poss[1:i],sq.res[1:i],lty=2,col=2,lwd=1,type="l")
      Sys.sleep(interval)
      }
   points(poss,sq.res,type="l")
    }
  abline(v=poss[sq.res==min(sq.res)],lty=est.lty,col=est.col)
  legend("bottomright",legend=bquote(paste("LS est. = ",.(LS.est))),cex=.9,bty="n")
}
