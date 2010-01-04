partial.resid.plot<-function(Y,X,smooth.span=0.8){
X<-as.matrix(X)
resid<-matrix(ncol=ncol(X),nrow=nrow(X))
other.resid<-matrix(ncol=ncol(X),nrow=nrow(X))
for(i in 1:ncol(X)){
resid[,i]<-lm(Y~X[,-c(i)])$residuals
other.resid[,i]<-lm(X[,i]~X[,-c(i)])$residuals}
for(i in 1:ncol(X)){
plot(other.resid[,i],resid[,i],xlab=paste("e(",colnames(X)[i],"|model without",colnames(X)[i],")"),ylab=paste("e(Y|model without",colnames(X)[i],")"))
l1<-lm(resid[,i]~other.resid[,i])
abline(as.numeric(l1$coefficients[1]),as.numeric(l1$coefficients[2]),col=2,lty=1)
lines(lowess(other.resid[,i],resid[,i],f=smooth.span),lty=2,col=4)
readline("Press return for next plot")
}	
}