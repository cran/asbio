tconf<-function(data,conf=.95,summarized=FALSE,xbar=NULL,st.dev=NULL,n=NULL,fpc=FALSE,N=NULL){

if(summarized==FALSE){
n<-nrow(as.matrix(data))
t.star<-qt((1-((1-conf)/2)),n-1)
Var.Xbar<-ifelse(fpc==FALSE,var(data)/n,(1-(n/N))*(var(data)/n))
m<-sqrt(Var.Xbar)*t.star
CI<-c(mean(data)-m,mean(data)+m)
}

if(summarized==TRUE){
t.star<-qt((1-((1-conf)/2)),n-1)
Var.Xbar<-ifelse(fpc==FALSE,st.dev^2/n,(1-(n/N))*(st.dev^2/n))
m<-sqrt(Var.Xbar)*t.star
CI<-c(xbar-m,xbar+m)
}
	
result<-list(SE=sqrt(Var.Xbar),margin=m,CI=CI)
result
}

zconf<-function(data,conf=.95,sigma,summarized=FALSE,xbar=NULL,fpc=FALSE, N=NULL,n=NULL){
z.star<-qnorm(1-((1-conf)/2)) 

if(summarized==FALSE){
n<-length(as.matrix(data))
Var.xbar<-sigma^2/nrow(as.matrix(data))

SD.xbar<-ifelse(fpc==FALSE,sqrt(Var.xbar),sqrt((1-(n/N))* Var.xbar))
m<-SD.xbar*z.star
CI<-c(mean(data)-m,mean(data)+m)
}

if(summarized==TRUE){
SD.xbar<-ifelse(fpc==FALSE,sigma/sqrt(n),sqrt((1-(n/N))* (sigma^2/n)))
m<-SD.xbar*z.star
CI<-c(xbar-m,xbar+m)
}

result<-list(margin=m,CI=CI)
result
}
