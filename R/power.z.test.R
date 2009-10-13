power.z.test<- function(sigma=1,n=NULL,power=NULL,alpha=0.05,effect=NULL,test=c("two.tail", "one.tail")){
if(is.null(n)==TRUE&test=="one.tail"){
n<-((qnorm(1-alpha)+qnorm(power))^2*sigma^2)/effect^2}
if(is.null(n)==TRUE&test=="two.tail"){
n<-((qnorm(1-(alpha/2))+qnorm(power))^2*sigma^2)/effect^2}
if(is.null(power)==TRUE&test=="one.tail"){
power<-pnorm(qnorm(1-alpha)*(sigma/sqrt(n)), mean=effect,sd=sigma/sqrt(n),lower.tail=FALSE)}
if(is.null(power)==TRUE&test=="two.tail"){
power<-pnorm(qnorm(1-(alpha/2))*(sigma/sqrt(n)), mean=effect,sd=sigma/sqrt(n),lower.tail=FALSE)}
res<-list(sigma=sigma,n=n,power=power,alpha=alpha,effect=effect,test=test)
res
}
