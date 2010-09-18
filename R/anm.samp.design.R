anm.samp.design<-function(n=20, interval = 0.5 ,iter = 30){
r<-rep(n,iter)
for(i in 1:iter){ 
samp.design(r[i])
Sys.sleep(interval)
}
}
                                                                                                                   
samp.design<-function(n=20){
plotSamp<-function(n=n,type=c("SRS","strat","clust"),main=""){
plot(seq(1,19),seq(1,19),xaxt="n",yaxt="n",xlab="",ylab="",type="n",xlim=c(1,19),ylim=c(1,19),main=main)
segments(seq(0,19),rep(0,19),seq(0,19),rep(20,10),col="gray")
segments(rep(0,19),seq(0,19),rep(20,19),seq(0,19),col="gray")

if(type=="SRS"){
pop<-seq(1,400,1)
pop.mat<-matrix(seq(1,400,1),ncol=20,nrow=20)
x<-sample(pop,n,replace=FALSE)
y<-sample(pop,n,replace=FALSE)
x.1<-matrix(ncol=1,nrow=n)
y.1<-matrix(ncol=1,nrow=n)
for(i in 1:n){
x.1[i]<-col(pop.mat)[pop.mat==x[i]]-.5
y.1[i]<-row(pop.mat)[pop.mat==y[i]]-.5}
for(i in 1:n){
symbols(x.1[i],y.1[i],squares=.9,inches=FALSE,add=TRUE,bg=1)}}

if(type=="strat"){
pop<-seq(1,100,1)
pop.mat<-matrix(seq(1,100,1),ncol=10,nrow=10)

strat.samp<-function(n){
x.1<-matrix(ncol=1,nrow=n)
y.1<-matrix(ncol=1,nrow=n)
x.2<-sample(pop,n,replace=FALSE)
y.2<-sample(pop,n,replace=FALSE)
for(i in 1:n){
x.1[i]<-col(pop.mat)[pop.mat==x.2[i]]-.5
y.1[i]<-row(pop.mat)[pop.mat==y.2[i]]-.5
}
res<-list(x.1=x.1,y.1=y.1)
res
}

x<-matrix(ncol=4,nrow=n/4)
y<-matrix(ncol=4,nrow=n/4)
for(i in 1:4){
x[,i]<-strat.samp(n/4)$x.1
y[,i]<-strat.samp(n/4)$y.1
}
x<-x+matrix(nrow=n/4,ncol=4,c(rep(0,n/4),rep(0,n/4),rep(10,n/4),rep(10,n/4)))
y<-y+matrix(nrow=n/4,ncol=4,c(rep(0,n/4),rep(10,n/4),rep(0,n/4),rep(10,n/4)))

for(i in 1:n){
symbols(x[i],y[i],squares=.9,inches=FALSE,add=TRUE,bg=1)}
segments(10,0,10,20,col="red",lwd=2)
segments(0,10,20,10,col="red",lwd=2)}

if(type=="clust"){
x<-sample(c(5,5,15,15),size=2,replace=FALSE)
y<-sample(c(5,5,15,15),size=2,replace=FALSE)
y[2]<-ifelse(x[1]==x[2]&y[1]==y[2]&y[1]==5,15,y[2])
y[2]<-ifelse(x[1]==x[2]&y[1]==y[2]&y[1]==15,5,y[2])
for(i in 1:2){
symbols(x[i],y[i],squares=10,inches=FALSE,add=TRUE,bg=1)}
segments(10,0,10,20,col="red",lwd=2)
segments(0,10,20,10,col="red",lwd=2)}
}

##random sampling using all three designs
par(mfrow=c(2,2),mar=c(0.5,1.5,2,0.5))
plot(seq(1,19),seq(1,19),xaxt="n",yaxt="n",xlab="",ylab="",type="n",xlim=c(1,19),ylim=c(1,19),main="Sample population")
segments(seq(0,19),rep(0,19),seq(0,19),rep(20,10),col="gray")
segments(rep(0,19),seq(0,19),rep(20,19),seq(0,19),col="gray")
plotSamp(n,"SRS",main="Simple random sampling")
plotSamp(n,"strat",main="Stratified random sampling")
plotSamp(n,"clust",main="Cluster sampling")
}