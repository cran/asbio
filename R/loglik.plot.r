loglik.plot<-function(X,dist=c("norm","poi","bin","exp","custom"),plot.likfunc=TRUE,parameter=NULL,func=NULL,poss=NULL,plot.density=TRUE,xlab=NULL,ylab=NULL,conv=0.01,anim=TRUE,interval=0.01,...){
if(dist=="norm")loglik.norm.plot(X=X,parameter=parameter,poss=poss,plot.likfunc=plot.likfunc,plot.density=plot.density,xlab=xlab,ylab=ylab,conv=conv,anim=anim,interval=interval,...=...)
if(dist=="poi")loglik.pois.plot(X=X,poss=poss,plot.likfunc=plot.likfunc,plot.density=plot.density,xlab=xlab,ylab=ylab,conv=conv,anim=anim,interval=interval,...=...)
if(dist=="bin")loglik.binom.plot(X=X,poss=poss,plot.likfunc=plot.likfunc,plot.density=plot.density,xlab=xlab,ylab=ylab,conv=conv,anim=anim,interval=interval,...=...)
if(dist=="exp")loglik.exp.plot(X=X,poss=poss,plot.likfunc=plot.likfunc,plot.density=plot.density,xlab=xlab,ylab=ylab,conv=conv,anim=anim,interval=interval,...=...)
if(dist=="custom")loglik.custom.plot(X=X,func=func,poss=poss,anim=anim,interval=interval,xlab=xlab,ylab=ylab,...=...)
}

##################################################
#############%%%%%% NORMAL %%%%%%#################
##################################################


loglik.norm.plot<-function(X,parameter=c("mu","sigma.sq"),poss=NULL,plot.likfunc=TRUE,plot.density=TRUE,xlab=NULL,ylab=NULL,conv=0.01,anim=TRUE,interval=0.01,...){
possibilities<-poss
Var.MLE<-function(e.i)sum((e.i-mean(e.i))^2)/length(e.i)
if(is.null(poss)){
  if(parameter=="mu") possibilities<-seq(mean(X)-2*sd(X),mean(X)+2*sd(X),conv)
  if(parameter=="sigma.sq") possibilities<-seq(0.5*Var.MLE(X),2*Var.MLE(X),conv)
  logl<-seq(min(possibilities),max(possibilities),conv)
  }
if(!is.null(poss))logl<-poss 
for(i in 1:length(possibilities)){
  if(parameter=="mu")
    {
    sd<-sqrt(Var.MLE(X))
    logl[i]<-log(prod(dnorm(X,mean=possibilities[i],sd=sd)))
    }
  if(parameter=="sigma.sq")
    {
    mu<-mean(X)
    logl[i]<-log(prod(dnorm(X,mean=mu,sd=sqrt(possibilities[i]))))}
    }
max.p<-ifelse(is.null(poss),ifelse(parameter=="mu",mean(X),Var.MLE(X)), possibilities[logl==max(logl)][1])
#Likelihood function
if(plot.likfunc==TRUE){
  if(anim==FALSE){
      if(plot.density==TRUE){dev.new(height=4,width=8);par(mfrow=c(1,2),mar=c(4.4,4.5,1,0.5),cex=.9)}
          plot(possibilities,logl,type="l",ylab=ifelse(is.null(ylab),"Normal log-likelihood function",ylab), 
          xlab=ifelse(is.null(xlab),ifelse(parameter== "mu",expression(paste("Estimates for ", mu)),
          expression(paste("Estimates for ",sigma^2))),xlab),...)}
  if(anim==TRUE){
    nm<-which(logl==max(logl))[1]
      if(plot.density==TRUE){
          dev.new(width=4,height=4,xpos=550)
          par(mar=c(4.4,4.5,1,0.5),cex=.9)}  
      for(i in 1:(nm-1)){
            plot(possibilities,logl,type="n",ylab=ifelse(is.null(ylab),"Normal log-likelihood function",ylab), 
            xlab=ifelse(is.null(xlab),ifelse(parameter== "mu",expression(paste("Estimates for ", mu)),
            expression(paste("Estimates for ",sigma^2))),xlab),...)
            arrows(possibilities[i],logl[i],possibilities[i+1],logl[i+1],col=2,length=.15,lwd=1)
            points(possibilities[1:i],logl[1:i],lty=2,col=2,lwd=1,type="l")
            Sys.sleep(interval)
    }
    points(possibilities,logl,type="l")
    }
  abline(v=max.p,lty=2,col=2)
  legend("topright",legend=bquote(paste("ML est. = ",.(max.p))),cex=.9,bty="n")
  }

#pdf
  if(plot.density==TRUE){
    if(anim==FALSE){
      curve(dnorm(x,mean=ifelse(parameter=="mu",max.p,mu),sd=ifelse(parameter=="mu",sd,max.p)),from=min(X),to=max(X),xlab= "x",ylab="f(x)")
      legend("topright",legend=c(paste("X~N(",bquote(.(round(mean(X),1))),", ",bquote(.(round(sd^2,1))),")",sep=""),
      paste("Loglik = ", bquote(.(round(max(logl),2))))),bty="n",cex=.9)
      legend("topleft",col=2,lty=2,legend="Obs. density",bty="n",cex=.9)
      segments(x0=X,y0=rep(0,length(X)),x1=X,y1=dnorm(X,mean=ifelse(parameter=="mu",max.p,mu),sd=ifelse(parameter=="mu",sd,max.p)),col=2,lty=2)
      }
    if(anim==TRUE){
      if(plot.likfunc==TRUE){
          dev.new(width=4,height=4,xpos=950)
          par(mar=c(4.4,4.5,1,0.5),cex=.9)} 
      X<-sort(X)
      c<-ifelse(length(X)<200,round(200/length(X),0),1)
      x0=rep(X,each=c);y0=rep(rep(0,length(X)),each=c);y1=rep(dnorm(X,mean=ifelse(parameter=="mu",max.p,mu),sd=ifelse(parameter=="mu",sd,max.p)),each=c)
      loglik<-log(dnorm(X,mean=ifelse(parameter=="mu",max.p,mu),sd=ifelse(parameter=="mu",sd,max.p)))
      cumlik<-rep(cumsum(loglik),each=c)
      for(i in 1:(length(X)*c)){
        curve(dnorm(x,mean=ifelse(parameter=="mu",max.p,mu),sd=ifelse(parameter=="mu",sd,max.p)),from=min(X),to=max(X),xlab= "x",ylab="f(x)")
        legend("topleft",col=2,lty=2,legend="Obs. density",bty="n",cex=.9)
        legend("topright",legend=c(paste("X~N(",bquote(.(round(mean(X),1))),", ",bquote(.(round(Var.MLE(X),1))),")",sep=""),
        paste("Loglik = ", bquote(.(round(cumlik[i],2))))),bty="n",cex=.9)
        segments(x0[1:i],y0[1:i],x0[1:i],y1[1:i],col=2,lty=2)
        Sys.sleep(interval)
        
      }
    }
  }
}

##################################################
############%%%%%% POISSON %%%%%%#################
##################################################


loglik.pois.plot<-function(X,poss=NULL,plot.likfunc=TRUE,plot.density=TRUE,xlab=NULL,ylab=NULL,conv=0.01,anim=TRUE,interval=0.01,...){
possibilities<-poss
  if(is.null(poss)){
    possibilities<-seq(max(0,mean(X)-sd(X)),(mean(X)+2*sd(X)),conv)
    logl<-seq(min(possibilities),max(possibilities),conv)}
  if(!is.null(poss))logl<-poss
    for(i in 1:length(possibilities)){
    {
    logl[i]<-log(prod(dpois(X,possibilities[i])))}
    }
max.p<-ifelse(is.null(poss),mean(X),possibilities[logl==max(logl)][1])

##Likelihood function
  if(plot.likfunc==TRUE){
    if(anim==FALSE){
      if(plot.density==TRUE){dev.new(height=4,width=8);par(mfrow=c(1,2),mar=c(4.4,4.5,1,0.5),cex=.9)}
      plot(possibilities,logl,type="l",ylab=ifelse(is.null(ylab),"Poisson Log-likelihood function",ylab), 
      xlab=ifelse(is.null(xlab),expression(paste("Estimates for ", lambda)),xlab),...)
            }
    if(anim==TRUE){
    nm<-which(logl==max(logl))[1]
      if(plot.density==TRUE){
          dev.new(width=4,height=4,xpos=550)
          par(mar=c(4.4,4.5,1,0.5),cex=.9)}  
      for(i in 1:(nm-1)){
        plot(possibilities,logl,type="n",ylab=ifelse(is.null(ylab),"Poisson Log-likelihood function",ylab), 
        xlab=ifelse(is.null(xlab),expression(paste("Estimates for ", lambda)),xlab),...)
        arrows(possibilities[i],logl[i],possibilities[i+1],logl[i+1],col=2,length=.15,lwd=1)
        points(possibilities[1:i],logl[1:i],lty=2,col=2,lwd=1,type="l")
        Sys.sleep(interval)
        }
    points(possibilities,logl,type="l")
      }
  abline(v=max.p,lty=2,col=2)
  legend("topright",legend=bquote(paste("ML est. = ",.(max.p))),cex=.9,bty="n")
  }
##pdf  
  if(plot.density==TRUE){
      if(anim==FALSE){
        plot(X,dpois(X,mean(X)),xlab= "x",ylab="f(x)",pch=16)
        segments(X,rep(0,length(X)),X,dpois(X,mean(X)),lty=2,col=2)
        logl<-log(prod(dpois(X,mean(X))))
        legend("topleft",col=2,lty=2,legend="Obs. density",bty="n",cex=.9)
        legend("topright",legend=c(paste("X~POI(",bquote(.(round(max.p,2))),")"),paste("Loglik = ",
        bquote(.(round(logl,2))))),bty="n",cex=.9)
        }
      if(anim==TRUE){
        if(plot.likfunc==TRUE){
              dev.new(width=4,height=4,xpos=950)
              par(mar=c(4.4,4.5,1,0.5),cex=.9)} 
        X<-sort(X)
        c<-ifelse(length(X)<200,round(200/length(X),0),1)
        x0=rep(X,each=c);y0=rep(rep(0,length(X)),each=c);y1=rep(dpois(X,mean(X)),each=c)
        loglik<-log(dpois(X,mean(X)))
        cumlik<-rep(cumsum(loglik),each=c)
        for(i in 1:(length(X)*c)){
          plot(X,dpois(X,mean(X)),xlab= "x",ylab="f(x)",pch=16,type="n")
          legend("topleft",col=2,lty=2,legend="Obs. density",bty="n",cex=.9)
          legend("topright",legend=c(paste("X~POI(",bquote(.(round(max.p,2))),")"),
          paste("Loglik = ", bquote(.(round(cumlik[i],2))))),bty="n",cex=.9)
          segments(x0[1:i],y0[1:i],x0[1:i],y1[1:i],col=2,lty=2)
          points(x0[1:i],y1[1:i],pch=16)
          Sys.sleep(interval)
          }
    }
  }
}

##################################################
############%%%%%% BINOMIAL %%%%%%################
##################################################

loglik.binom.plot<-function(X,poss=NULL,plot.likfunc=TRUE,plot.density=TRUE,xlab=NULL,ylab=NULL,anim=TRUE,interval=0.01,conv=0.01,...){
possibilities<-poss
if(is.null(poss)) {possibilities<-seq(max(0,mean(X)-2*sd(X)),min(1,mean(X)+sd(X)*2),conv)
logl<-seq(min(possibilities),max(possibilities),conv)}
  if(!is.null(poss)) if(!is.null(poss))logl<-poss
    for(i in 1:length(possibilities)){
    {
    logl[i]<-log(prod(dbinom(sum(X),size=nrow(as.matrix(X)),prob=possibilities[i])))}
    }
max.p<-ifelse(is.null(poss),mean(X),possibilities[logl==max(logl)][1])

##Likelihood function
  if(plot.likfunc==TRUE){
    if(anim==FALSE){
      if(plot.density==TRUE){dev.new(height=4,width=8);par(mfrow=c(1,2),mar=c(4.4,4.5,1,0.5),cex=.9)}
      plot(possibilities,logl,type="l",ylab=ifelse(is.null(ylab), "Binomial Log-likelihood function", ylab),
      xlab=ifelse(is.null(xlab),"Estimates for p",xlab),...)
                  }
    if(anim==TRUE){
      if(plot.density==TRUE){
          dev.new(width=4,height=4,xpos=550)
          par(mar=c(4.4,4.5,1,0.5),cex=.9)}  
      nm<-which(logl==max(logl))[1]
      for(i in 1:(nm-1)){
        plot(possibilities,logl,type="n",ylab=ifelse(is.null(ylab),"Binomial Log-likelihood function",ylab), 
        xlab=ifelse(is.null(xlab),"Estimates for p",xlab),...)
        arrows(possibilities[i],logl[i],possibilities[i+1],logl[i+1],col=2,length=.15,lwd=1)
        points(possibilities[1:i],logl[1:i],lty=2,col=2,lwd=1,type="l")
        Sys.sleep(interval)
        }
    points(possibilities,logl,type="l")
      }
  legend("topright",legend=bquote(paste("ML est. = ",.(max.p))),cex=.9,bty="n")
  abline(v=max.p,lty=2,col=2)
    } 
      
##pdf
  if(plot.density==TRUE){
  X<-sort(X)
  logl<-log(prod(dbinom(X,1,mean(X))))
    if(anim==FALSE){
      plot(X, dbinom(X,1,mean(X)),xlab= "x",ylab="f(x)",pch=16)
      segments(X,rep(0,length(X)),X, dbinom(X,1,mean(X)),lty=2,col=2)
      legend("topleft",col=2,lty=2,legend="Obs. density",bty="n",cex=.9)
      legend("topright",legend=c(paste("X~BIN(",bquote(.(round(mean(X),2))),")"),paste("Loglik = ",
      bquote(.(round(logl,2))))),bty="n",cex=.9)
      }
    if(anim==TRUE){
       if(plot.likfunc==TRUE){
              dev.new(width=4,height=4,xpos=950)
              par(mar=c(4.4,4.5,1,0.5),cex=.9)}
      X<-sort(X)
      c<-ifelse(length(X)<200,round(200/length(X),0),1)
      x0=rep(X,each=c);y0=rep(rep(0,length(X)),each=c);y1=rep(dbinom(X,1,mean(X)),each=c)
      loglik<-log(dbinom(X,1,mean(X)))
      cumlik<-rep(cumsum(loglik),each=c)
      for(i in 1:(length(X)*c)){
        plot(X,dbinom(X,1,mean(X)),xlab= "x",ylab="f(x)",pch=16,type="n")
        legend("topleft",col=2,lty=2,legend="Obs. density",bty="n",cex=.9)
        legend("topright",legend=c(paste("X~BIN(",bquote(.(round(mean(X),2))),")"),
        paste("Loglik = ", bquote(.(round(cumlik[i],2))))),bty="n",cex=.9)
        segments(x0[1:i],y0[1:i],x0[1:i],y1[1:i],col=2,lty=2)
        points(x0[1:i],y1[1:i],pch=16)
        Sys.sleep(interval)
        }
    }
  }
}

##################################################
#############%%%% EXPONENTIAL %%%%################
##################################################

loglik.exp.plot<-function(X,poss=NULL,plot.likfunc=TRUE,plot.density=TRUE,xlab=NULL,ylab=NULL,conv=0.01,anim=TRUE,interval=0.01,...){
possibilities<-poss
  if(is.null(poss)) {possibilities<-seq(conv,mean(X)+(sd(X)*2),min(conv,.01))
    logl<-possibilities}
  if(!is.null(poss)) possibilities<-poss[poss!=0];logl<-possibilities
  for(i in 1:length(possibilities)){
    logl[i]<-log(prod(dexp(X,1/possibilities[i])))}
    max.p<-ifelse(is.null(poss),mean(X),possibilities[logl==max(logl)][1])

##Likelihood function
  if(plot.likfunc==TRUE){
    if(anim==FALSE){
      if(plot.density==TRUE){dev.new(height=4,width=8);par(mfrow=c(1,2),mar=c(4.4,4.5,1,0.5),cex=.9)}
      plot(possibilities,logl,type="l",ylab=ifelse(is.null(ylab),"Exponential Log-likelihood function",ylab), 
      xlab=ifelse(is.null(xlab),expression(paste("Estimates for ", theta)),xlab),...)
      }
    if(anim==TRUE){
      if(plot.density==TRUE){
          dev.new(width=4,height=4,xpos=550)
          par(mar=c(4.4,4.5,1,0.5),cex=.9)}  
      nm<-which(logl==max(logl))[1]
        for(i in 1:(nm-1)){
          plot(possibilities,logl,type="n",ylab=ifelse(is.null(ylab),"Normal log-likelihood function",ylab), 
          xlab=ifelse(is.null(xlab),expression(paste("Estimates for ", theta)),xlab),...)
          arrows(possibilities[i],logl[i],possibilities[i+1],logl[i+1],col=2,length=.15,lwd=1)
          points(possibilities[1:i],logl[1:i],lty=2,col=2,lwd=1,type="l")
          Sys.sleep(interval)
      }
      points(possibilities,logl,type="l")
    }
  abline(v=max.p,lty=2,col=2)
  legend("topright",legend=bquote(paste("ML est. = ",.(max.p))),cex=.9,bty="n")
  }
  
##pdf
  if(plot.density==TRUE){
     if(anim==FALSE){
      curve(dexp(x,rate=1/mean(X)),from=min(X),to=max(X),xlab="x",ylab="f(x)")
      legend("topright",legend=c(paste("X~EXP(1/",bquote(.(round(mean(X),4))),")"),
      paste("Loglik = ", bquote(.(round(max(logl),2))))),bty="n",cex=.9)
      legend("topleft",col=2,lty=2,legend="Obs. density",bty="n",cex=.9)
      segments(x0=X,y0=rep(0,length(X)),x1=X,y1=dexp(X,1/mean(X)),col=2,lty=2)
      }
     if(anim==TRUE){
       if(plot.likfunc==TRUE){
            dev.new(width=4,height=4,xpos=950)
            par(mar=c(4.4,4.5,1,0.5),cex=.9)}
        X<-sort(X)
        c<-ifelse(length(X)<200,round(200/length(X),0),1)
        x0=rep(X,each=c);y0=rep(rep(0,length(X)),each=c);y1=rep(dexp(X,1/mean(X)),each=c)
        loglik<-log(dexp(X,1,mean(X)))
        cumlik<-rep(cumsum(loglik),each=c)
        for(i in 1:(length(X)*c)){
          curve(dexp(x,rate=1/mean(X)),from=min(X),to=max(X),xlab="x",ylab="f(x)")
          legend("topleft",col=2,lty=2,legend="Obs. density",bty="n",cex=.9)
          legend("topright",legend=c(paste("X~EXP(1/",bquote(.(round(mean(X),4))),")"),
          paste("Loglik = ", bquote(.(round(cumlik[i],2))))),bty="n",cex=.9)
          segments(x0[1:i],y0[1:i],x0[1:i],y1[1:i],col=2,lty=2)
          Sys.sleep(interval)
      }
    }
  }
}

##################################################
###############%%%% CUSTOM %%%%###################
##################################################

loglik.custom.plot<-function(X=NULL,func,poss,anim=TRUE,interval=0.01,xlab,ylab,...){
logl<-poss
for(i in 1:length(poss)){
  logl[i]<-log(prod(func(X,poss[i])))}
max.p<-poss[logl==max(logl)][1]
if(anim==FALSE){
plot(poss,logl,type="l",xlab=xlab,ylab=ylab,...)
}
if(anim==TRUE){
nm<-which(logl==max(logl))[1]
        for(i in 1:(nm-1)){
          plot(poss,logl,type="n",xlab=xlab,ylab=ylab,...)
          arrows(poss[i],logl[i],poss[i+1],logl[i+1],col=2,length=.15,lwd=1)
          points(poss[1:i],logl[1:i],lty=2,col=2,lwd=1,type="l")
          Sys.sleep(interval)
      }
      points(poss,logl,type="l")
      }
abline(v=max.p,lty=2,col=2)
legend("topright",legend=bquote(paste("ML est. = ",.(max.p))),cex=.9,bty="n")
}
