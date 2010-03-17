ci.p<-function(data,conf=.95,summarized=FALSE, phat=NULL,S.phat=NULL,fpc=FALSE,n=NULL,N=NULL,method="wilson"){

z.star<-qnorm(1-((1-conf)/2)) 

if(summarized==FALSE){
  n<-length(as.matrix(data))
  phat<-ifelse(method=="wilson",(sum(data)+2)/(n+4),sum(data)/n)
  Var.phat<-ifelse(method=="wilson",(phat*(1-phat))/(n+4), sqrt((phat*(1-phat))/n))
  S.phat<-ifelse(fpc==FALSE,sqrt(Var.phat),sqrt((1-(n/N))*Var.phat))
  m<-S.phat *z.star
    if(method=="wilson"|method=="approximation")CI<-c(phat,phat-m,phat+m)
    if(method=="exact"){
      x<-n*phat
      Fl<-qf(1-((1-conf)/2),2*n-2*x+2,2*x)
      cl<-x/((x+(n-x+1))*Fl)
      Fu<-qf(1-((1-conf)/2),2*x+2,2*n-2*x)
      cu<-((x+1)*Fu)/(n-x+(x+1)*Fl)
      CI<-c(phat,cl,cu)
  }
}
if(summarized==TRUE){
  S.phat<-ifelse(fpc==FALSE,S.phat,sqrt((1-(n/N))*S.phat))
  m<-S.phat*z.star
  CI<-c(phat,phat-m,phat+m)
}
head<-paste(paste(as.character(conf*100),"%",sep=""),c("Confidence Interval for Binomial Parameter p"))
if(method=="wilson")head<-paste(head,"(method=wilson)")
if(method=="exact")head<-paste(head,"(method=exact)")
if(method=="approximation")head<-paste(head,"(method=approximation)")

ends<-c("Estimate",paste(as.character(c((1-conf)/2,1-((1-conf)/2))*100),"%",sep=""))
if(method=="wilson"|method=="approximation")res<-list(S.phat=S.phat,margin=m,ci=CI,ends=ends,head=head)
if(method=="exact")res<-list(ci=CI,ends=ends,head=head)
class(res)<-"ci"
res
}
