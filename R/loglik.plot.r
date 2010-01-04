loglik.norm.plot<-function(X,parameter=c("mu","sigma.sq"),possibilities,plot.density=TRUE){
logl<-seq(min(possibilities),max(possibilities),.01)
for(i in 1:length(possibilities)){
if(parameter=="mu"){
sd<-sd(X)
logl[i]<-log(prod(dnorm(X,mean=possibilities[i],sd=sd)))}
if(parameter=="sigma.sq"){
mu<-mean(X)
logl[i]<-log(prod(dnorm(X,mean=mu,sd=sqrt(possibilities[i]))))}
}
plot(possibilities,logl,type="l",ylab="Normal log-likelihood function", 
xlab=ifelse(parameter== "mu",expression(paste("Estimates for ", mu)),
expression(paste("Estimates for ",sigma^2))))
max.p<-possibilities[logl==max(logl)]
abline(v=max.p,lty=2,col=2)
legend("topright",legend=bquote(paste("ML est. = ",.(max.p))),cex=.9,bty="n")
if(plot.density==TRUE){
readline("Press return for next plot")
curve(dnorm(x,mean=ifelse(parameter=="mu",max.p,mu),sd=ifelse(parameter=="mu",sd,max.p)),from=min(X),to=max(X),xlab= "x",ylab="f(x)")

legend("topright",legend=c(paste("X~N(",ifelse(parameter=="mu",bquote(.(round(max.p,1))),bquote(.(round(mu,1)))),", ",ifelse(parameter=="mu",bquote(.(round(sd^2,1))),bquote(.(max.p))),")",sep=""),paste("Loglik = ", bquote(.(round(max(logl),2))))),bty="n",cex=.9)
legend("topleft",col=2,lty=2,legend="Obs. density",bty="n",cex=.9)
segments(x0=X,y0=rep(0,length(X)),x1=X,y1=dnorm(X,mean=ifelse(parameter=="mu",max.p,mu),sd=ifelse(parameter=="mu",sd,max.p)),col=2,lty=2)}
}



######################################################

loglik.pois.plot<-function(X,possibilities){
logl<-seq(min(possibilities),max(possibilities),.01)
for(i in 1:length(possibilities)){
{
logl[i]<-log(prod(dpois(X,possibilities[i])))}
}
plot(possibilities,logl,type="l",ylab="Poisson Log-likelihood function", 
xlab=expression(paste("Estimates for ", lambda)))
max.p<-possibilities[logl==max(logl)]
abline(v=max.p,lty=2,col=2)
legend("topright",legend=bquote(paste("ML estimate = ",.(max.p))),cex=.9,bty="n")
}

######################################################

loglik.binom.plot<-function(X,possibilities){
logl<-seq(min(possibilities),max(possibilities),.01)
for(i in 1:length(possibilities)){
{
logl[i]<-log(prod(dbinom(sum(X),size=nrow(as.matrix(X)),prob=possibilities[i])))}
}
plot(possibilities,logl,type="l",ylab="Binomial Log-likelihood function", 
xlab="Estimates for p")
max.p<-possibilities[logl==max(logl)]
abline(v=max.p,lty=2,col=2)
legend("topright",legend=bquote(paste("ML estimate = ",.(max.p))),cex=.9,bty="n")
}

######################################################

loglik.exp.plot<-function(X,possibilities,plot.density=TRUE){
logl<-seq(min(possibilities),max(possibilities),.01)
for(i in 1:length(possibilities)){
{
logl[i]<-log(prod(dexp(X,1/possibilities[i])))}
}
plot(possibilities,logl,type="l",ylab="Exponential Log-likelihood function", 
xlab=expression(paste("Estimates for ", theta)))
max.p<-possibilities[logl==max(logl)]
abline(v=max.p,lty=2,col=2)
legend("topright",legend=bquote(paste("ML est. = ",.(max.p))),cex=.9,bty="n")


if(plot.density==TRUE){
readline("Press return for next plot")
curve(dexp(x,rate=1/max.p),from=min(X),to=max(X),xlab="x",ylab="f(x)")
legend("topright",legend=c(paste("X~EXP(1/",bquote(.(round(max.p,4))),")"),paste("Loglik = ", bquote(.(round(max(logl),2))))),bty="n",cex=.9)
legend("topleft",col=2,lty=2,legend="Obs. density",bty="n",cex=.9)
segments(x0=X,y0=rep(0,length(X)),x1=X,y1=dexp(X,1/max.p),col=2,lty=2)
}}
