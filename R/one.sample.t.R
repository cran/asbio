one.sample.t<-function (data = NULL, null.mu=0, xbar = NULL, s, n = NULL, 
    alternative = c("two.sided", "lower", "upper")) 
{
    if (!is.null(data)) {
        xbar <- mean(data)
        n <- length(data)
        s <- sd(data)
    }
    tstar <- (xbar - null.mu)/(s/sqrt(n))
    if (alternative == "two.sided") {
        p.val <- 2 * pt(abs(tstar), n - 1, lower.tail = FALSE)
    }
    else if (alternative == "lower") {
        p.val <- pt(tstar, n - 1, lower.tail = TRUE)
    }
    else if (alternative == "upper") {
        p.val <- pt(tstar, n - 1, lower.tail = FALSE)
    }
    res <- list()
    res$test.statistic <- tstar
    res$p.val <- p.val
    res$Df <- n - 1
    res
}


