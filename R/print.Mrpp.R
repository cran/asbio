print.Mrpp<-function (x, digits = max(3, getOption("digits") - 3), ...) 
{
    cat("\nCall:\n")
    cat(deparse(x$call), "\n\n")
    cat("Dissimilarity index:", x$distance, "\n")
    cat("Weights for groups: ", switch(x$weight.type, "n", "n-1", 
        "n(n-1)", "n(n-1)/2"), "\n\n")
    cat("Chance corrected within-group agreement A: ")
    cat(formatC(x$A, digits = digits), "\n")
    cat("Based on observed delta", formatC(x$delta), "and expected delta",formatC(x$E.delta), "\n\n")
    cat("Delta SD:", x$sd.del,"\n\n")
    nperm <- x$permutations
    if (nperm) {
    cat("Permutation p-value:", format.pval(x$p_Pval, eps = 1/nperm), 
    "\n")
        cat("Based on ", nperm, " permutations")
    }
    if (!is.null(x$strata)) 
    cat(", stratified within", x$strata)
    cat("\n\n")
    cat("T-statistic: ")
    cat(x$T,"\n")
    cat("Pearson type III p-value:", format.pval(x$pIIIp, eps =   
    1/nperm))
    cat("\n\n")
    invisible(x)
}
