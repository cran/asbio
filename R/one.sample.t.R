one.sample.t<-function (data = NULL, null.mu=0, xbar = NULL, sd = NULL, n = NULL, 
    alternative = "not.equal", conf = 0.95) 
{
    if (!is.null(data)) {
        xbar <- mean(data)
        n <- length(data)
        sd <- sd(data)
    }
    tstar <- (xbar - null.mu)/(sd/sqrt(n))
    if (alternative == "not.equal") {
        p.val <- 2 * pt(abs(tstar), n - 1, lower.tail = FALSE)
    }
    else if (alternative == "less") {
        p.val <- pt(tstar, n - 1, lower.tail = TRUE)
    }
    else if (alternative == "greater") {
        p.val <- pt(tstar, n - 1, lower.tail = FALSE)
    }
    res <- list()
    alt <- paste("mu is", alternative, ifelse(alternative=="not.equal","to","than"), null.mu)
	tab <- data.frame(df = n - 1, t = tstar, Pval = p.val)
	rownames(tab)=""
	colnames(tab)=c("df", "t*", "P-value")
	res$alternative <- alt
	res$test<-tab
	res$confidence <- ci.mu.t(data=ifelse(is.null(data), NULL, data), summarized=ifelse(is.null(data), TRUE, FALSE), xbar = xbar, sd = sd, n = n, conf = conf)    
	res
}


