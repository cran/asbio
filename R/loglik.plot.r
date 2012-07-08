loglik.plot<-function(X,dist=c("norm","poi","bin","exp","custom"),plot.likfunc=TRUE,parameter=NULL,func=NULL,poss=NULL,plot.density=TRUE,plot.calc=FALSE,xlab=NULL,ylab=NULL,conv=diff(range(X))/70,anim=TRUE,interval=0.01,...){
if(dist=="norm")loglik.norm.plot(X=X,parameter=parameter,poss=poss,plot.likfunc=plot.likfunc,plot.density=plot.density,plot.calc=plot.calc,xlab=xlab,ylab=ylab,conv=conv,anim=anim,interval=interval,...=...)
if(dist=="poi")loglik.pois.plot(X=X,poss=poss,plot.likfunc=plot.likfunc,plot.density=plot.density,plot.calc=plot.calc,xlab=xlab,ylab=ylab,conv=conv,anim=anim,interval=interval,...=...)
if(dist=="bin")loglik.binom.plot(X=X,poss=poss,plot.likfunc=plot.likfunc,plot.density=plot.density,xlab=xlab,ylab=ylab,conv=conv,anim=anim,interval=interval,...=...)
if(dist=="exp")loglik.exp.plot(X=X,poss=poss,plot.likfunc=plot.likfunc,plot.density=plot.density,plot.calc=plot.calc,xlab=xlab,ylab=ylab,conv=conv,anim=anim,interval=interval,...=...)
if(dist=="custom")loglik.custom.plot(X=X,func=func,poss=poss,anim=anim,interval=interval,xlab=xlab,ylab=ylab,...=...)
}

##################################################
#############%%%%%% NORMAL %%%%%%#################
##################################################


loglik.norm.plot<-function(X,parameter=c("mu","sigma.sq"),poss=NULL,plot.likfunc=TRUE,plot.density=TRUE,plot.calc=FALSE,xlab=NULL,ylab=NULL,conv=0.01,anim=TRUE,interval=0.01,...){
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
    sdM<-sqrt(Var.MLE(X))
    logl[i]<-log(prod(dnorm(X,mean=possibilities[i],sd=sdM)))
    }
  if(parameter=="sigma.sq")
    {
    mu<-mean(X)
    logl[i]<-log(prod(dnorm(X,mean=mu,sd=sqrt(possibilities[i]))))}
    }
max.p<-ifelse(is.null(poss),ifelse(parameter=="mu",mean(X),Var.MLE(X)), possibilities[logl==max(logl)][1])
MLE<-ifelse(parameter=="mu",mean(X),Var.MLE(X))
Max.lik<-log(prod(dnorm(X,mean=mean(X),sd=sqrt(Var.MLE(X)))))
##No Animation
  if(anim==FALSE){
      if(plot.likfunc==TRUE&plot.density==TRUE){
      dev.new(height=4,width=8);par(mfrow=c(1,2),mar=c(4.4,4.5,1,0.5),cex=.9);layout(matrix(c(1,2), 1, 2, byrow = TRUE))}
      if(plot.likfunc==TRUE){
          plot(possibilities,logl,type="l",ylab=ifelse(is.null(ylab),"Normal log-likelihood function",ylab), 
          xlab=ifelse(is.null(xlab),ifelse(parameter== "mu",expression(paste("Estimates for ", mu)),
          expression(paste("Estimates for ",sigma^2))),xlab),...)
          legend("topright",legend=bquote(paste("ML est. = ",.(MLE))),cex=.9,bty="n")
          abline(v=MLE,lty=2,col=2)
          }
      if(plot.density==TRUE){
          x <- NULL; rm(x); # Dummy to trick R CMD check 
          curve(dnorm(x,mean=mean(X),sd=sqrt(Var.MLE(X))),from=min(X),to=max(X),xlab= "x",ylab="f(x)")
          legend("topright",legend=c(paste("X~N(",bquote(.(round(mean(X),1))),", ",bquote(.(round(Var.MLE(X),1))),")",sep=""),
          paste("Loglik = ",bquote(.(round(Max.lik,2))))),bty="n",cex=.9)
          legend("topleft",col=2,lty=2,legend="Obs. density",bty="n",cex=.9)
          segments(x0=X,y0=rep(0,length(X)),x1=X,y1=dnorm(X,mean=mean(X),sd=sqrt(Var.MLE(X))),col=2,lty=2)}
      }    
  ##Animation
  if(anim==TRUE){
    nm<-which(logl==max(logl))[1]
      if(plot.likfunc==TRUE&plot.density==TRUE)dev.new(height=4,width=8);par(mfrow=c(1,2),mar=c(4.4,4.5,1,0.5),cex=.9)
            for(i in 1:(nm-1)){
                dev.hold()
                if(plot.likfunc==TRUE){
                    plot(possibilities,logl,type="n",ylab=ifelse(is.null(ylab),"Normal log-likelihood function",ylab), 
                    xlab=ifelse(is.null(xlab),ifelse(parameter== "mu",expression(paste("Estimates for ", mu)),
                    expression(paste("Estimates for ",sigma^2))),xlab),...)
                    arrows(possibilities[i],logl[i],possibilities[i+1],logl[i+1],col=2,length=.15,lwd=1)
                    points(possibilities[1:i],logl[1:i],lty=2,col=2,lwd=1,type="l")
                        if(i == (nm-1)){points(possibilities,logl,type="l")
                        abline(v=MLE,lty=2,col=2)
                        legend("topright",legend=bquote(paste("ML est. = ",.(MLE))),cex=.9,bty="n")
                        }
                }
                if(plot.density==TRUE){
                    x <- NULL; rm(x); # Dummy to trick R CMD check 
                    curve(dnorm(x,mean=ifelse(parameter=="mu",possibilities[i],mu),sd=ifelse(parameter=="mu",sdM,possibilities[i])),from=min(X),to=max(X),xlab= "x"
                    ,ylab="f(x)")
                    segments(x0=X,y0=rep(0,length(X)),x1=X,y1=dnorm(X,mean=ifelse(parameter=="mu",possibilities[i],mu),sd=ifelse(parameter=="mu",sdM,possibilities[i]
                    )),col=2,lty=2)
                        if(i != (nm-1)){legend("topright",legend=c(ifelse(parameter=="mu",as.expression(bquote(paste(mu, " = ",.(round(possibilities[i],2))))),
                        as.expression(bquote(paste  (sigma^2," = ",.(round(possibilities[i],2)))))),as.expression(bquote(paste("Loglik = ", .(round(logl[i],2))))))
                        ,bty="n",cex=.9)
                        }
                        if(i == (nm-1)){legend("topright",legend=c(ifelse(parameter=="mu",as.expression(bquote(paste(mu, " = ",.(MLE)))),as.expression(bquote(paste
                        (sigma^2," = ",.(MLE))))),as.expression(bquote(paste("Loglik = ", .(round(Max.lik,2)))))),bty="n",cex=.9)
                        }
                }
            dev.flush()
            Sys.sleep(interval)
          }
     if(plot.calc==TRUE){
      dev.new(width=4,height=4,ypos=225);par(mar=c(4.4,4.5,1,0.5),cex=.9) 
      X<-sort(X)
      c<-ifelse(length(X)<200,round(200/length(X),0),1)
      x0=rep(X,each=c);y0=rep(rep(0,length(X)),each=c);y1=rep(dnorm(X,mean=ifelse(parameter=="mu",max.p,mu),sd=ifelse(parameter=="mu",sdM,max.p)),each=c)
      loglik<-log(dnorm(X,mean=ifelse(parameter=="mu",max.p,mu),sd=ifelse(parameter=="mu",sdM,max.p)))
      cumlik<-rep(cumsum(loglik),each=c)
      for(i in 1:(length(X)*c)){
        dev.hold()
        x <- NULL; rm(x); # Dummy to trick R CMD check 
        curve(dnorm(x,mean=ifelse(parameter=="mu",max.p,mu),sd=ifelse(parameter=="mu",sdM,max.p)),from=min(X),to=max(X),xlab= "x",ylab="f(x)")
        legend("topleft",col=2,lty=2,legend="Obs. density",bty="n",cex=.9)
        legend("topright",legend=c(paste("X~N(",bquote(.(round(mean(X),1))),", ",bquote(.(round(Var.MLE(X),1))),")",sep=""),
        paste("Loglik = ", bquote(.(round(cumlik[i],2))))),bty="n",cex=.9)
        segments(x0[1:i],y0[1:i],x0[1:i],y1[1:i],col=2,lty=2)
        dev.flush()
        Sys.sleep(interval)
        
      }
    }
  }
}

##################################################
############%%%%%% POISSON %%%%%%#################
##################################################


loglik.pois.plot<-function(X,poss=NULL,plot.likfunc=TRUE,plot.density=TRUE,plot.calc=FALSE,xlab=NULL,ylab=NULL,conv=0.01,anim=TRUE,interval=0.01,...){
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
MLE<-mean(X)
Max.lik<-log(prod(dpois(X,mean(X))))

##No Animation
  if(anim==FALSE){
      if(plot.likfunc==TRUE&plot.density==TRUE){
      dev.new(height=4,width=8);par(mfrow=c(1,2),mar=c(4.4,4.5,1,0.5),cex=.9);layout(matrix(c(1,2), 1, 2, byrow = TRUE))}
      if(plot.likfunc==TRUE){
          plot(possibilities,logl,type="l",ylab=ifelse(is.null(ylab),"Poisson Log-likelihood function",ylab),
          xlab=ifelse(is.null(xlab),expression(paste("Estimates for ", lambda)),xlab),...)
          legend("topright",legend=bquote(paste("ML est. = ",.(MLE))),cex=.9,bty="n")
          abline(v=mean(X),lty=2,col=2)
          }
      if(plot.density==TRUE){
          plot(X,dpois(X,mean(X)),xlab= "x",ylab="f(x)",type="n")
          legend("topright",legend=c(paste("X~POI(",bquote(.(round(mean(X),3))),")",sep=""),
          paste("Loglik = ",bquote(.(round(Max.lik,2))))),bty="n",cex=.9)
          legend("topleft",col=2,lty=2,legend="Obs. density",bty="n",cex=.9)
          segments(X,rep(0,length(X)),X,dpois(X,mean(X)),lty=2,col=2)}
          points(X,dpois(X,mean(X)),pch=16,cex=.9)
      }    
  ##Animation
      if(anim==TRUE){
        nm<-which(logl==max(logl))[1]
          if(plot.likfunc==TRUE&plot.density==TRUE)dev.new(height=4,width=8);par(mfrow=c(1,2),mar=c(4.4,4.5,1,0.5),cex=.9)
            for(i in 1:(nm-1)){
                dev.hold()
                if(plot.likfunc==TRUE){
                    plot(possibilities,logl,type="n",ylab=ifelse(is.null(ylab),"Poisson Log-likelihood function",ylab), 
                    xlab=ifelse(is.null(xlab),expression(paste("Estimates for ", lambda)),xlab),...)
                    arrows(possibilities[i],logl[i],possibilities[i+1],logl[i+1],col=2,length=.15,lwd=1)
                    points(possibilities[1:i],logl[1:i],lty=2,col=2,lwd=1,type="l")
                        if(i == (nm-1)){points(possibilities,logl,type="l")
                            abline(v=mean(X),lty=2,col=2)
                            legend("topright",legend=bquote(paste("ML est. = ",.(MLE))),cex=.9,bty="n")}
                }
                if(plot.density==TRUE){
                      plot(X,dpois(X,possibilities[i]),xlab= "x",ylab="f(x)",type="n")
                      segments(x0=X,y0=rep(0,length(X)),x1=X,y1=dpois(X,possibilities[i]),col=2,lty=2)
                      points(X,dpois(X,possibilities[i]),pch=16)
                          if(i != (nm-1)){legend("topright",legend=c(as.expression(bquote(paste(lambda, " = ",.(round(possibilities[i],2))))),
                          as.expression(bquote(paste("Loglik = ", .(round(logl[i],2)))))),bty="n",cex=.9)
                          }
                          if(i == (nm-1)){legend("topright",legend=c(as.expression(bquote(paste(lambda, " = ",.(MLE)))),as.expression(bquote(paste("Loglik = ",
                          .(round(Max.lik,2)))))),bty="n",cex=.9)
                          }
                }                                                                                                                                               
            dev.flush()
            Sys.sleep(interval)
            }
        if(plot.calc==TRUE){
            dev.new(width=4,height=4,ypos=225);par(mar=c(4.4,4.5,1,0.5),cex=.9) 
            X<-sort(X)
            c<-ifelse(length(X)<200,round(200/length(X),0),1)
            x0=rep(X,each=c);y0=rep(rep(0,length(X)),each=c);y1=rep(dpois(X,mean(X)),each=c)
            loglik<-log(dpois(X,mean(X)))
            cumlik<-rep(cumsum(loglik),each=c)
            for(i in 1:(length(X)*c)){
              dev.hold()
              plot(X,dpois(X,mean(X)),xlab= "x",ylab="f(x)",pch=16,type="n")
              dev.hold()
              legend("topleft",col=2,lty=2,legend="Obs. density",bty="n",cex=.9)
              legend("topright",legend=c(paste("X~POI(",bquote(.(round(MLE,2))),")"),
              paste("Loglik = ", bquote(.(round(cumlik[i],2))))),bty="n",cex=.9)
              segments(x0[1:i],y0[1:i],x0[1:i],y1[1:i],col=2,lty=2)
              points(x0[1:i],y1[1:i],pch=16)
              dev.flush()
              Sys.sleep(interval)
              }
         }
    }
}

##################################################
############%%%%%% BINOMIAL %%%%%%################
##################################################

loglik.binom.plot<-function(X,poss=NULL,xlab=NULL,ylab=NULL,plot.likfunc=TRUE,plot.density=TRUE,conv=0.01,anim=TRUE,interval=0.01,...){
possibilities<-poss
if(is.null(poss)) {possibilities<-seq(max(0,mean(X)-2*sd(X)),min(1,mean(X)+sd(X)*2),conv)
logl<-seq(min(possibilities),max(possibilities),conv)}
  if(!is.null(poss)) if(!is.null(poss))logl<-poss
    for(i in 1:length(possibilities)){
    {
    logl[i]<-log(prod(dbinom(sum(X),size=length(X),prob=possibilities[i])))}
    }
max.p<-ifelse(is.null(poss),mean(X),possibilities[logl==max(logl)][1])
MLE<-mean(X)
Max.lik<-log(prod(dbinom(sum(X),length(X),mean(X))))

##No Animation
      if(anim==FALSE){
          if(plot.likfunc==TRUE&plot.density==TRUE)dev.new(height=4,width=8);par(mfrow=c(1,2),mar=c(4.4,4.5,1,0.5),cex=.9)
          if(plot.likfunc==TRUE){
              plot(possibilities,logl,type="l",ylab=ifelse(is.null(ylab), "Binomial Log-likelihood function", ylab),
              xlab=ifelse(is.null(xlab),expression(paste("Estimates for ", italic(p))),xlab),...)
              legend("topright",legend=bquote(paste("ML est. = ",.(MLE))),cex=.9,bty="n")
              abline(v=mean(X),lty=2,col=2)
          }
          if(plot.density==TRUE){
              plot(sum(X),dbinom(sum(X),length(X),mean(X)),xlab= "x",ylab="f(x)",type="l")
              legend("topright",legend=c(paste("X~BIN(",bquote(.(round(mean(X),3))),")",sep=""),
              paste("Loglik = ",bquote(.(round(Max.lik,2))))),bty="n",cex=.9)
              legend("topleft",col=2,lty=2,legend="Obs. density",bty="n",cex=.9)
              segments(sum(X),0,sum(X),dbinom(sum(X),length(X),mean(X)),lty=2,col=2)
              points(sum(X),dbinom(sum(X),length(X),mean(X)),pch=16,cex=.9)
          }
      } 
  ##Animation
      if(anim==TRUE){
        nm<-which(logl==max(logl))[1]
      if(plot.likfunc==TRUE&plot.density==TRUE)dev.new(height=4,width=8);par(mfrow=c(1,2),mar=c(4.4,4.5,1,0.5),cex=.9)
           for(i in 1:(nm-1)){
           dev.hold()
               if(plot.likfunc==TRUE){     
                    plot(possibilities,logl,type="n",ylab=ifelse(is.null(ylab),"Binomial Log-likelihood function",ylab), 
                    xlab=ifelse(is.null(xlab),expression(paste("Estimates for ", italic(p))),xlab),...)
                    arrows(possibilities[i],logl[i],possibilities[i+1],logl[i+1],col=2,length=.15,lwd=1)
                    points(possibilities[1:i],logl[1:i],lty=2,col=2,lwd=1,type="l")
                        if(i == (nm-1)){points(possibilities,logl,type="l")
                            abline(v=mean(X),lty=2,col=2)
                            legend("topright",legend=bquote(paste("ML est. = ",.(MLE))),cex=.9,bty="n")}
              }
              if(plot.density==TRUE){
                    plot(sum(X),dbinom(sum(X),length(X),possibilities[i]),xlab= "x",ylab="f(x)",type="n",ylim=c(0,exp(Max.lik)))
                    segments(x0=sum(X),y0=0,x1=sum(X),y1=dbinom(sum(X),length(X),possibilities[i]),col=2,lty=2)
                    points(sum(X),dbinom(sum(X),length(X),possibilities[i]),pch=16)
                        if(i != (nm-1)){legend("topright",legend=c(as.expression(bquote(paste(italic(p), " = ",.(round(possibilities[i],2))))),
                        as.expression(bquote(paste("Loglik = ", .(round(logl[i],2)))))),bty="n",cex=.9)
                        }
                        if(i == (nm-1)){legend("topright",legend=c(as.expression(bquote(paste(italic(p), " = ",.(MLE)))),as.expression(bquote(paste("Loglik = ",
                        .(round(Max.lik,2)))))),bty="n",cex=.9)}
              }
           dev.flush()
           Sys.sleep(interval)
          }
      }
  }
      

##################################################
#############%%%% EXPONENTIAL %%%%################
##################################################

loglik.exp.plot<-function(X,poss=NULL,plot.likfunc=TRUE,plot.density=TRUE,plot.calc=FALSE,xlab=NULL,ylab=NULL,conv=0.01,anim=TRUE,interval=0.01,...){
possibilities<-poss
  if(is.null(poss)) {possibilities<-seq(conv,mean(X)+(sd(X)*2),min(conv,.01))
    logl<-possibilities}
  if(!is.null(poss)) possibilities<-poss[poss!=0];logl<-possibilities
  for(i in 1:length(possibilities)){
    logl[i]<-log(prod(dexp(X,1/possibilities[i])))}
    max.p<-ifelse(is.null(poss),mean(X),possibilities[logl==max(logl)][1])
    MLE<-mean(X)
    Max.lik<-log(prod(dexp(X,1/mean(X))))

##No Animation
    if(anim==FALSE){
        if(plot.likfunc==TRUE&plot.density==TRUE){
        dev.new(height=4,width=8);par(mfrow=c(1,2),mar=c(4.4,4.5,1,0.5),cex=.9);layout(matrix(c(1,2), 1, 2, byrow = TRUE))}
        if(plot.likfunc==TRUE){
            plot(possibilities,logl,type="l",ylab=ifelse(is.null(ylab),"Exponential Log-likelihood function",ylab),
            xlab=ifelse(is.null(xlab),expression(paste("Estimates for ", theta)),xlab),...)
            legend("topright",legend=bquote(paste("ML est. = ",.(MLE))),cex=.9,bty="n")
            abline(v=mean(X),lty=2,col=2)
            }
        if(plot.density==TRUE){
            x <- NULL; rm(x); # Dummy to trick R CMD check 
            curve(dexp(x,1/mean(X)),from=min(X),to=max(X),xlab= "x",ylab="f(x)")
            legend("topright",legend=c(paste("X~EXP(1/",bquote(.(round(mean(X),3))),")",sep=""),
            paste("Loglik = ",bquote(.(round(Max.lik,2))))),bty="n",cex=.9)
            legend("topleft",col=2,lty=2,legend="Obs. density",bty="n",cex=.9)
            segments(X,rep(0,length(X)),X,dexp(X,mean(X)),lty=2,col=2)}
        }    

  ##Animation
      if(anim==TRUE){
        nm<-which(logl==max(logl))[1]
          if(plot.likfunc==TRUE&plot.density==TRUE)dev.new(height=4,width=8);par(mfrow=c(1,2),mar=c(4.4,4.5,1,0.5),cex=.9)
            for(i in 1:(nm-1)){
                dev.hold()
                if(plot.likfunc==TRUE){
                    plot(possibilities,logl,type="n",ylab=ifelse(is.null(ylab),"Exponential Log-likelihood function",ylab), 
                    xlab=ifelse(is.null(xlab),expression(paste("Estimates for ", theta)),xlab),...)
                    arrows(possibilities[i],logl[i],possibilities[i+1],logl[i+1],col=2,length=.15,lwd=1)
                    points(possibilities[1:i],logl[1:i],lty=2,col=2,lwd=1,type="l")
                        if(i == (nm-1)){points(possibilities,logl,type="l")
                            abline(v=mean(X),lty=2,col=2)
                            legend("topright",legend=bquote(paste("ML est. = ",.(MLE))),cex=.9,bty="n")}
                }
                if(plot.density==TRUE){
                      x <- NULL; rm(x); # Dummy to trick R CMD check 
                      curve(dexp(x,1/possibilities[i]),from=min(X),to=max(X),xlab= "x",ylab="f(x)")
                      segments(x0=X,y0=rep(0,length(X)),x1=X,y1=dexp(X,1/possibilities[i]),col=2,lty=2)
                          if(i != (nm-1)){legend("topright",legend=c(as.expression(bquote(paste(theta, " = ",.(round(possibilities[i],2))))),
                          as.expression(bquote(paste("Loglik = ", .(round(logl[i],2)))))),bty="n",cex=.9)
                          }
                          if(i == (nm-1)){legend("topright",legend=c(as.expression(bquote(paste(theta, " = ",.(MLE)))),as.expression(bquote(paste("Loglik = ",
                          .(round(Max.lik,2)))))),bty="n",cex=.9)
                          }
                }                                                                                                                                               
            dev.flush()
            Sys.sleep(interval)
    }
    if(plot.calc==TRUE){
        dev.new(width=4,height=4,ypos=225);par(mar=c(4.4,4.5,1,0.5),cex=.9) 
        X<-sort(X)
        c<-ifelse(length(X)<200,round(200/length(X),0),1)
        x0=rep(X,each=c);y0=rep(rep(0,length(X)),each=c);y1=rep(dexp(X,1/mean(X)),each=c)
        loglik<-log(dexp(X,1/mean(X)))
        cumlik<-rep(cumsum(loglik),each=c)
            for(i in 1:(length(X)*c)){
                dev.hold()
                x <- NULL; rm(x); # Dummy to trick R CMD check 
                curve(dexp(x,1/mean(X)),from=min(X),to=max(X),xlab="x",ylab="f(x)")
                legend("topleft",col=2,lty=2,legend="Obs. density",bty="n",cex=.9)
                legend("topright",legend=c(paste("X~EXP(1/",bquote(.(round(mean(X),4))),")"),
                paste("Loglik = ", bquote(.(round(cumlik[i],2))))),bty="n",cex=.9)
                segments(x0[1:i],y0[1:i],x0[1:i],y1[1:i],col=2,lty=2)
                dev.flush()
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
          dev.hold()          
          plot(poss,logl,type="n",xlab=xlab,ylab=ylab,...)
          arrows(poss[i],logl[i],poss[i+1],logl[i+1],col=2,length=.15,lwd=1)
          points(poss[1:i],logl[1:i],lty=2,col=2,lwd=1,type="l")
          dev.flush()
          Sys.sleep(interval)
      }
      points(poss,logl,type="l")
      }
abline(v=max.p,lty=2,col=2)
legend("topright",legend=bquote(paste("ML est. = ",.(max.p))),cex=.9,bty="n")
}
