one.sample.t<-function (data = NULL, null.mu=0, xbar = NULL, sd = NULL, n = NULL, 
    alternative = "two.sided", conf = 0.95, na.rm = FALSE, fpc = FALSE, N = NULL) 
{
alt <- c("two.sided", "less", "greater")
if(alternative != alt[1] & alternative != alt[2] &  alternative != alt[3]) stop(c("In alternative use one of: ", paste("'", alt, "' ", sep = "")))

    if (!is.null(data)) {
        xbar <- mean(data, na.rm = na.rm)
        n <- length(na.omit(data))
        sd <- sd(data, na.rm = na.rm)
    }
    s2 <- sd^2
    Var.Xbar<-ifelse(fpc==FALSE,s2/n,(1-(n/N))*(s2/n))
    tstar <- (xbar - null.mu)/sqrt(Var.Xbar)
    if (alternative == "two.sided") {
        p.val <- 2 * pt(abs(tstar), n - 1, lower.tail = FALSE)
    }
    else if (alternative == "less") {
        p.val <- pt(tstar, n - 1, lower.tail = TRUE)
    }
    else if (alternative == "greater") {
        p.val <- pt(tstar, n - 1, lower.tail = FALSE)
    }
    res <- list()
    alt <- paste("mu is", ifelse(alternative=="two.sided","not equal", alternative), ifelse(alternative=="two.sided","to","than"), null.mu)
	tab <- data.frame(df = n - 1, t = tstar, Pval = p.val)
	rownames(tab)=""
	colnames(tab)=c("df", "t*", "P-value")
	res$head <- "One sample t-test"
	res$alternative <- alt
	res$test<-tab
	
	if (is.null(data)==TRUE){
	  data <- NULL
	} else {
	  data <- data
	}
	
	if(alternative == "less" | alternative == "greater"){
	  tail <- ifelse(alternative == "greater", "lower", "upper")
	  res$confidence <- ci.mu.oneside(data = data, summarized=ifelse(is.null(data), TRUE, FALSE), xbar = xbar, n = n, conf = conf, tail = tail, fpc = fpc, N = N)  
	}
	else{
	res$confidence <- ci.mu.t(data = data, summarized = ifelse(is.null(data), TRUE, FALSE), xbar = xbar, sd = sd, n = n, conf = conf, fpc = fpc, N = N)}    
	class(res) <- "oneSamp"
	res
	}


print.oneSamp <- function(x, digits= max(3, getOption("digits")), ...){
cat("\n")
cat(x$head ,"\n")
rq<-structure(x$test)
print(rq,digits=digits)
cat("\n")
invisible(x)
}