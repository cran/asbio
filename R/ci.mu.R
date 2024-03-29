ci.mu.t<-function(data, conf=.95, summarized=FALSE, xbar=NULL, sd=NULL, fpc=FALSE, N=NULL, n=NULL, na.rm = FALSE){

if(summarized==FALSE){
n<-nrow(as.matrix(na.omit(data)))
t.star<-qt((1-((1-conf)/2)),n-1)
s2 <- var(data, na.rm = na.rm)
Var.Xbar<-ifelse(fpc==FALSE,s2/n,(1-(n/N))*(s2/n))
xbar <- mean(data, na.rm = na.rm)
}

if(summarized==TRUE){
t.star<-qt((1-((1-conf)/2)),n-1)
Var.Xbar<-ifelse(fpc==FALSE,sd^2/n,(1-(n/N))*(sd^2/n))
}

m<-sqrt(Var.Xbar)*t.star
CI<-c(xbar,xbar-m,xbar+m)
  
head<-paste(paste(as.character(conf*100),"%",sep=""),c("t Confidence interval for population mean"))
ends<-c("Estimate",paste(as.character(c((1-conf)/2,1-((1-conf)/2))*100),"%",sep=""))
res<-list(SE=sqrt(Var.Xbar),margin=m,ci=CI,ends=ends,head=head)
class(res)<-"ci"
res
}

ci.mu.z<-function(data,conf=.95,sigma=1,summarized=FALSE,xbar=NULL,fpc=FALSE,N=NULL,n=NULL, na.rm = FALSE){
z.star<-qnorm(1-((1-conf)/2)) 

if(summarized==FALSE){
n<-length(as.matrix(na.omit(data)))
xbar <- mean(data, na.rm = na.rm)
Var.xbar<-sigma^2/nrow(as.matrix(data))
SD.xbar<-ifelse(fpc==FALSE,sqrt(Var.xbar),sqrt((1-(n/N))* Var.xbar))
}

if(summarized==TRUE){
SD.xbar<-ifelse(fpc==FALSE,sigma/sqrt(n),sqrt((1-(n/N))* (sigma^2/n)))
}

m<-SD.xbar*z.star
CI<-c(xbar,xbar-m,xbar+m)

head<-paste(paste(as.character(conf*100),"%",sep=""),c("z Confidence interval for population mean"))
ends<-c("Estimate",paste(as.character(c((1-conf)/2,1-((1-conf)/2))*100),"%",sep=""))
res<-list(margin=m,ci=CI,head=head,ends=ends)
class(res)<-"ci"
res
}
