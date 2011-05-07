one.sample.z<-function(data=NULL,null.mu=0,xbar=NULL,sigma,n=NULL,test= c("two.sided","lower.tail","upper.tail")){
if(!is.null(data)){
xbar<-mean(data)
n<-nrow(as.matrix(data))}
z<-(xbar-null.mu)/(sigma/sqrt(n))
if(test== "two.sided")
{p.val<-2*pnorm(abs(z),lower.tail=FALSE)}
else if(test== "lower")
{p.val<-pnorm(z,lower.tail=TRUE)}
else if(test== "upper")
{p.val<-pnorm(z,lower.tail=FALSE)}
res<-list()
res$test.statistic<-z
res$p.val<-p.val
res}
