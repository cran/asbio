one.sample.t<-function (data = NULL, null.mu=0, xbar = NULL, s, n = NULL, 
    test = c("two.sided", "lower.tail", "upper.tail")) 
{
    if (!is.null(data)) {
        xbar <- mean(data)
        n <- nrow(as.matrix(data))
	  s <- sd(data)
    }
    tstar <- (xbar - null.mu)/(s/sqrt(n))
    if (test == "two.sided") {
        p.val <- 2 * pt(abs(tstar), n - 1, lower.tail = FALSE)
    }
    else if (test == "lower") {
        p.val <- pt(tstar, n - 1, lower.tail = TRUE)
    }
    else if (test == "upper") {
        p.val <- pt(tstar, n - 1, lower.tail = FALSE)
    }
    res <- list()
    res$test.statistic <- tstar
    res$p.val <- p.val
    res
}
