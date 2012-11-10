press <- function(lm){
n <- length(fitted(lm))
p <- ncol(lm$model)
X <- lm$model[,2 : p]
X <- as.matrix(cbind(rep(1, n), X))
H <- X%*%(solve((t(X)) %*% (X))) %*% t(X)
e.i <- resid(lm)
sum((e.i/(1-diag(H)))^2)
}

