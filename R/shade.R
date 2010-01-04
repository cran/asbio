shade.norm<-function(x=NULL,from=NULL,to=NULL,sigma=1,mu=0,tail="lower",show.p=TRUE,show.dist=TRUE){
xv<-seq(mu-4*sigma,mu+4*sigma,sigma/1000)
yv<-dnorm(xv,mean=mu,sd=sigma)
curve(dnorm(x,mu,sigma),from=mu-4*sigma,to=mu+4*sigma,ylab="f(x)")
if(tail=="lower"){
polygon(c(xv[xv<=x],x),c(yv[xv<=x],yv[xv==mu-4*sigma]),col="gray")
p<-pnorm(x,mu,sigma,lower.tail=TRUE)
if(show.p==TRUE)legend("topright",legend=bquote(paste("P(X < ",.(x),") = ",.(p))),bty="n",cex=.9)
if(show.dist==TRUE)legend("topleft",legend=bquote(paste("X ~ N(",.(mu)," , ",.(sigma),")")),bty="n",cex=.9)
}
if(tail=="upper"){
polygon(c(x,xv[xv>=x]),c(yv[xv==mu+4*sigma],yv[xv>=x]),col="gray")
p<-pnorm(x,mu,sigma,lower.tail=FALSE)
if(show.p==TRUE)legend("topright",legend=bquote(paste("P(X > ",.(x),") = ",.(p))),bty="n",cex=.9)
if(show.dist==TRUE)legend("topleft",legend=bquote(paste("X ~ N(",.(mu)," , ",.(sigma),")")),bty="n",cex=.9)
}
if(tail=="two"){
polygon(c(xv[xv<=-abs(x)],-abs(x)),c(yv[xv<=-abs(x)],yv[xv==mu-4*sigma]),col="gray")
polygon(c(abs(x),xv[xv>=abs(x)]),c(yv[xv==mu+4*sigma],yv[xv>=abs(x)]),col="gray")
p<-2*pnorm(abs(x),mu,sigma,lower.tail=FALSE)
if(show.p==TRUE)legend("topright",bty="n",cex=.9,legend=bquote(paste("2*P(X > |",.(x),"|) = ",.(p))))
if(show.dist==TRUE)legend("topleft",legend=bquote(paste("X ~ N(",.(mu)," , ",.(sigma),")")),bty="n",cex=.9)
}
if(tail=="middle"){
polygon(c(xv[xv<=mu+4*sigma],mu+4*sigma),c(yv[xv<=mu+4*sigma],yv[xv==mu-4*sigma]),col="gray")
polygon(c(xv[xv<=from],from),c(yv[xv<=from],yv[xv==mu-4*sigma]),col="white")
polygon(c(to,xv[xv>=to]),c(yv[xv==mu+4*sigma],yv[xv>=to]),col="white")
p<-pnorm(to,mu,sigma)-pnorm(from,mu,sigma)
if(show.p==TRUE)legend("topright",legend=bquote(paste("P(",.(from),"< X <",.(to),") = ",.(p))),bty="n",cex=.9)
if(show.dist==TRUE)legend("topleft",legend=bquote(paste("X ~ N(",.(mu)," , ",.(sigma),")")),bty="n",cex=.9)
}
}

###################################################################################################################

shade.t<-function(x=NULL,from=NULL,to=NULL,nu=3,tail="lower",show.p=TRUE,show.dist=TRUE){
sigma<-qt(.975,nu)
xv<-seq(-4*sigma,4*sigma,sigma/1000)
yv<-dt(xv,df=nu)
curve(dt(x,nu),from=-4*sigma,to=4*sigma,xlab="x",ylab="f(x)")
if(tail=="lower"){
polygon(c(xv[xv<=x],x),c(yv[xv<=x],yv[xv==-4*sigma]),col="gray")
p<-pt(x,nu,lower.tail=TRUE)
if(show.p==TRUE)legend("topright",legend=bquote(paste("P(X < ",.(x),") = ",.(p))),bty="n",cex=.9)
if(show.dist==TRUE)legend("topleft",legend=bquote(paste("X ~ t(",.(nu),")")),bty="n",cex=.9)
}
if(tail=="upper"){
polygon(c(x,xv[xv>=x]),c(yv[xv==4*sigma],yv[xv>=x]),col="gray")
p<-pt(x,nu,lower.tail=FALSE)
if(show.p==TRUE)legend("topright",legend=bquote(paste("P(X > ",.(x),") = ",.(p))),bty="n",cex=.9)
if(show.dist==TRUE)legend("topleft",legend=bquote(paste("X ~ t(",.(nu),")")),bty="n",cex=.9)
}
if(tail=="two"){
polygon(c(xv[xv<=-abs(x)],-abs(x)),c(yv[xv<=-abs(x)],yv[xv==4*sigma]),col="gray")
polygon(c(abs(x),xv[xv>=abs(x)]),c(yv[xv==4*sigma],yv[xv>=abs(x)]),col="gray")
p<-2*pt(abs(x),nu,lower.tail=FALSE)
if(show.p==TRUE)legend("topright",bty="n",cex=.9,legend=bquote(paste("2*P(X > |",.(x),"|) = ",.(p))))
if(show.dist==TRUE)legend("topleft",legend=bquote(paste("X ~ t(",.(nu),")")),bty="n",cex=.9)
}
if(tail=="middle"){
polygon(c(xv[xv<=4*sigma],4*sigma),c(yv[xv<=4*sigma],yv[xv==-4*sigma]),col="gray")
polygon(c(xv[xv<=from],from),c(yv[xv<=from],yv[xv==-4*sigma]),col="white")
polygon(c(to,xv[xv>=to]),c(yv[xv==4*sigma],yv[xv>=to]),col="white")
p<-pt(to,nu)-pt(from,nu)
if(show.p==TRUE)legend("topright",legend=bquote(paste("P(",.(from),"< X <",.(to),") = ",.(p))),bty="n",cex=.9)
if(show.dist==TRUE)legend("topleft",legend=bquote(paste("X ~ t(",.(nu),")")),bty="n",cex=.9)
}
}

#############################################################################################

shade.F<-function(x=NULL,from=NULL,to=NULL,nu1=1,nu2=5,tail="lower",show.p=TRUE,show.dist=TRUE,prob.to.each.tail=0.025){
sigma<-qf(.999,nu1,nu1)
xv<-seq(0,sigma,sigma/1000)
yv<-df(xv,nu1,nu2)
curve(df(x,nu1,nu2),from=0,to=sigma,xlab="x",ylab="f(x)")
if(tail=="lower"){
polygon(c(xv[xv<=x],x),c(yv[xv<=x],yv[xv==0]),col="gray")
p<-pf(x,nu1,nu2,lower.tail=TRUE)
if(show.p==TRUE)legend("topright",legend=bquote(paste("P(X < ",.(x),") = ",.(p))),bty="n",cex=.9)
if(show.dist==TRUE)legend("top",legend=bquote(paste("X ~ F(",.(nu1),",",.(nu2),")")),bty="n",cex=.9,adj=0.5)
}
if(tail=="upper"){
polygon(c(x,xv[xv>=x]),c(yv[xv==sigma],yv[xv>=x]),col="gray")
p<-pf(x,nu1,nu2,lower.tail=FALSE)
if(show.p==TRUE)legend("topright",legend=bquote(paste("P(X > ",.(x),") = ",.(p))),bty="n",cex=.9)
if(show.dist==TRUE)legend("top",legend=bquote(paste("X ~ F(",.(nu1),",",.(nu2),")")),bty="n",cex=.9,adj=0.5)
}
if(tail=="two"){
qs<-round(qf(c(prob.to.each.tail,1-prob.to.each.tail),nu1,nu2),1) 
polygon(c(xv[xv<=qs[1]],qs[1]),c(yv[xv<=qs[1]],yv[xv==sigma]),col="gray")
polygon(c(qs[2],xv[xv>=qs[2]]),c(yv[xv==sigma],yv[xv>=qs[2]]),col="gray")
p<-prob.to.each.tail*2
if(show.p==TRUE)legend("topright",bty="n",cex=.8,legend=bquote(paste("P(",.(qs[1]),"< X and X >",.(qs[2]),") = ",.(p))))
if(show.dist==TRUE)legend("top",legend=bquote(paste("X ~ F(",.(nu1),",",.(nu2),")")),bty="n",cex=.9,adj=0.5)
}
if(tail=="middle"){
polygon(c(xv[xv<=sigma],sigma),c(yv[xv<=sigma],yv[xv==0]),col="gray")
polygon(c(xv[xv<=from],from),c(yv[xv<=from],yv[xv==0]),col="white")
polygon(c(to,xv[xv>=to]),c(yv[xv==sigma],yv[xv>=to]),col="white")
p<-pf(to,nu1,nu2)-pf(from,nu1,nu2)
if(show.p==TRUE)legend("topright",legend=bquote(paste("P(",.(from),"< X <",.(to),") = ",.(p))),bty="n",cex=.9)
if(show.dist==TRUE)legend("top",legend=bquote(paste("X ~ F(",.(nu1),",",.(nu2),")")),bty="n",cex=.9,adj=0.5)
}
}

#############################################################################################

shade.chi<-function(x=NULL,from=NULL,to=NULL,nu=1,tail="lower",show.p=TRUE,show.dist=TRUE,prob.to.each.tail=0.025){
sigma<-qchisq(.9999,nu)
xv<-seq(0,sigma,sigma/10000)
yv<-dchisq(xv,nu)
curve(dchisq(x,nu),from=0,to=sigma,xlab="x",ylab="f(x)")
if(tail=="lower"){
polygon(c(xv[xv<=x],x),c(yv[xv<=x],yv[xv==0]),col="gray")
p<-pchisq(x,nu,lower.tail=TRUE)
if(show.p==TRUE)legend("topright",legend=bquote(paste("P(X < ",.(x),") = ",.(p))),bty="n",cex=.9)
if(show.dist==TRUE)legend("top",legend=bquote(paste("X ~ ",chi^2,"(",.(nu),")")),bty="n",cex=.9,adj=0.5)
}
if(tail=="upper"){
polygon(c(x,xv[xv>=x]),c(yv[xv==sigma],yv[xv>=x]),col="gray")
p<-pchisq(x,nu,lower.tail=FALSE)
if(show.p==TRUE)legend("topright",legend=bquote(paste("P(X > ",.(x),") = ",.(p))),bty="n",cex=.9)
if(show.dist==TRUE)legend("top",legend=bquote(paste("X ~ ",chi^2,"(",.(nu),")")),bty="n",cex=.9,adj=0.5)
}
if(tail=="two"){
qs<-round(qchisq(c(prob.to.each.tail,1-prob.to.each.tail),nu),1) 
polygon(c(xv[xv<=qs[1]],qs[1]),c(yv[xv<=qs[1]],yv[xv==sigma]),col="gray")
polygon(c(qs[2],xv[xv>=qs[2]]),c(yv[xv==sigma],yv[xv>=qs[2]]),col="gray")
p<-prob.to.each.tail*2
if(show.p==TRUE)legend("topright",bty="n",cex=.8,legend=bquote(paste("P(",.(qs[1]),"< X and X >",.(qs[2]),") = ",.(p))))
if(show.dist==TRUE)legend("top",legend=bquote(paste("X ~ ",chi^2,"(",.(nu),")")),bty="n",cex=.9,adj=0.5)
}
if(tail=="middle"){
polygon(c(xv[xv<=sigma],sigma),c(yv[xv<=sigma],yv[xv==0]),col="gray")
polygon(c(xv[xv<=from],from),c(yv[xv<=from],yv[xv==0]),col="white")
polygon(c(to,xv[xv>=to]),c(yv[xv==sigma],yv[xv>=to]),col="white")
p<-pchisq(to,nu)-pchisq(from,nu)
if(show.p==TRUE)legend("topright",legend=bquote(paste("P(",.(from),"< X <",.(to),") = ",.(p))),bty="n",cex=.9)
if(show.dist==TRUE)legend("top",legend=bquote(paste("X ~ ",chi^2,"(",.(nu),")")),bty="n",cex=.9,adj=0.5)
}
}
