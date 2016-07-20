press <- function(lm, as.R2 = FALSE){
X <- model.matrix(lm)
H <- X%*%(solve((t(X)) %*% (X))) %*% t(X)
e.i <- resid(lm)
if(as.R2 == FALSE) out <- sum((e.i/(1-diag(H)))^2)
if(as.R2 == TRUE) out <- 1 - (sum((e.i/(1-diag(H)))^2)/sum(anova(lm)$"Sum Sq"))
out
}

