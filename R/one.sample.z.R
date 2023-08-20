one.sample.z<-function(data=NULL, null.mu=0, xbar=NULL, sigma, n=NULL, alternative= "two.sided", conf=.95, na.rm = FALSE, fpc = FALSE, N = NULL)
{
alt <- c("two.sided", "less", "greater")
if(alternative != alt[1] & alternative != alt[2] &  alternative != alt[3]) stop(c("In alternative use one of: ", paste("'", alt, "' ", sep = "")))
if(!is.null(data)){
xbar<-mean(data, na.rm = na.rm)
n<-nrow(as.matrix(na.omit(data)))
}
s2 <- sigma^2
Var.Xbar<-ifelse(fpc==FALSE,s2/n,(1-(n/N))*(s2/n))
z<-(xbar-null.mu)/sqrt(Var.Xbar)
if(alternative== "two.sided")
{p.val<-2*pnorm(abs(z),lower.tail=FALSE)}
else if(alternative== "less")
{p.val<-pnorm(z,lower.tail=TRUE)}
else if(alternative== "greater")
{p.val<-pnorm(z,lower.tail=FALSE)}
res<-list()
alt <- paste("mu is", ifelse(alternative=="two.sided", "not equal", alternative), ifelse(alternative=="two.sided","to","than"), null.mu)
tab <- data.frame(z = z, Pval = p.val)
rownames(tab)=""
colnames(tab)=c("z*", "P-value")
res$head <- "One sample z-test"
res$alternative <- alt
res$test<-tab

if (is.null(data)==TRUE){
  data <- NULL
} else {
  data <- data
}

if(alternative == "less" | alternative == "greater"){
  res$confidence <- NULL  
}
else{
res$confidence <- ci.mu.z(data = data, summarized=ifelse(is.null(data), TRUE, FALSE), xbar = xbar, sigma = sigma, n = n, conf = conf, na.rm = na.rm, fpc = fpc, N = N)}    
class(res) <- "oneSamp"
res
}

