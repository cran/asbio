anm.cont.pdf<-function(part ="norm",interval=.1){
if(part == "norm") p = rnorm(1000000)
if(part == "t") p = rt(1000000,df=10)
if(part == "exp") p = rexp(1000000)
if(part == "unif") p = runif(1000000, 0, 1)

if(part == "norm") {xlim=c(-6,6);ylim=c(0,0.5)}
if(part == "t") {xlim=c(-15,15);ylim=c(0,0.4)}
if(part =="exp") {xlim=c(0,20);ylim=c(0,0.9)}
if(part =="unif") {xlim=c(0,1);ylim=c(0,1.2)}

for(i in 1:20){
hist(p,breaks=seq(xlim[1],xlim[2],by=1/i),freq=F, ylim = ylim, xlim = xlim, main = "", xlab="x", ylab="Density")
dev.flush()
Sys.sleep(interval)
}
if(part=="norm")
x <- NULL; rm(x); # Dummy to trick R CMD check 
curve(if(part=="norm")dnorm(x)
else if(part=="t") dt(x, df = 10)
else if(part=="exp") dexp(x)
else if(part=="unif") dunif(x)
,xlim[1],xlim[2],ylim=ylim, xlab="",yaxt="n",bty="n",col=1,lwd=7, add=TRUE) 
}
