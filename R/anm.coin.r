
anm.coin<-function(flips=1000,p.head=.5,interval=0.01,show.coin=TRUE,...){
  if(p.head>1|p.head<0)stop("p.head must be in the interval [0,1]")
  res<-rbinom(n=flips,size=1,prob=p.head)
  n.trials<-seq(1,flips)
  cum.s<-cumsum(res)
  cum.p<-cum.s/n.trials
  if(show.coin==FALSE){
   for(i in 1:flips){
	plot(seq(0,flips),seq(0,1,1/flips), type="n",ylab="Estimated P(Head)",xlab="Trial",...)
            abline(h=p.head,lty=2,col="gray")
            lines(n.trials[1:i],cum.p[1:i],type="l",col=2)
  	}
    }
  if(show.coin==TRUE){
  layout(matrix(c(rep(1,6),0,2,0), 3, 3, byrow = TRUE))	
    for(i in 1:flips){
        dev.hold()
        plot(seq(0,flips),seq(0,1,1/flips), type="n",ylab="Estimated P(Head)",xlab="Trial",...)
            abline(h=p.head,lty=2,col="gray")
            lines(n.trials[1:i],cum.p[1:i],type="l",col=2)
        plot(seq(0,1),seq(0,1),type="n",xaxt="n",yaxt="n",xlab="",ylab="",bty="n")
            draw.circle(x=0.5,y=0.5,radius=.35,col=rgb(blue=0.7,red=0.7,green=0.7,alpha=.8))
            text(0.5,0.5,ifelse(res[i]==0,"TAIL","HEAD"),cex=2.1)
            dev.flush()
            Sys.sleep(interval)
	}
    }
}
