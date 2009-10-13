press<-function(Y,X){
n<-length(Y)
X<-as.matrix(cbind(rep(1,n),X))
H<-X%*%(solve((t(X))%*%(X)))%*%t(X)
e.i<-residuals(lm(Y~X))
press<-sum((e.i/(1-diag(H)))^2)
press
}

