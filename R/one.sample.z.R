one.sample.z<-function(data=NULL, null.mu=0, xbar=NULL, sigma, n=NULL, alternative= "not.equal", conf=.95){
if(!is.null(data)){
xbar<-mean(data)
n<-nrow(as.matrix(data))}
z<-(xbar-null.mu)/(sigma/sqrt(n))
if(alternative== "not.equal")
{p.val<-2*pnorm(abs(z),lower.tail=FALSE)}
else if(alternative== "less")
{p.val<-pnorm(z,lower.tail=TRUE)}
else if(alternative== "greater")
{p.val<-pnorm(z,lower.tail=FALSE)}
res<-list()
alt <- paste("mu is", alternative, ifelse(alternative=="not.equal","to","than"), null.mu)
tab <- data.frame(z = z, Pval = p.val)
rownames(tab)=""
colnames(tab)=c("z*", "P-value")
res$alternative <- alt
res$test<-tab
res$confidence <- ci.mu.z(data=ifelse(is.null(data), NULL, data), summarized=ifelse(is.null(data), TRUE, FALSE), xbar = xbar, sigma = sigma, n = n, conf = conf)    
res
}

