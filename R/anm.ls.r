
anm.ls<-function (X, poss = NULL, parameter = "mu", est.lty = 2, est.col = 2, 
    conv = diff(range(X))/50, anim = TRUE, plot.lsfunc = TRUE, plot.res = TRUE, 
    interval = 0.01, xlab=expression(paste("Estimates for E(X)")),...) 
{
    if (is.null(poss)) 
        poss <- seq(mean(X) - 3 * sd(X), mean(X) + 3 * sd(X), 
            conv)
    sq.res <- matrix(nrow = length(X), ncol = length(poss))
    for (i in 1:length(poss)) {
        sq.res[, i] <- (poss[i] - X)^2
    }
    ss.res <- sapply(poss, function(x) {
        sum((x - X)^2)
    })
    est <- poss[ss.res == min(ss.res)]
    LS.est <- mean(X)
    if (plot.lsfunc == TRUE) {
        nm <- which(poss == est)[1]
        if (plot.res == TRUE) {
            dev.new(height = 4, width = 8)
            par(mfrow = c(1, 2), mar = c(4.4, 4.5, 1, 0.5), cex = 0.9)
        }
        if (anim == FALSE) {
            plot(poss, ss.res, type = "l", ylab = "Sum of squares", xlab= xlab, 
                ...)
            abline(v = mean(X), lty = est.lty, 
                col = est.col)
            legend("bottomright", legend = bquote(paste("LS est. = ", 
                .(LS.est))), cex = 0.9, bty = "n")
            points(poss, ss.res, type = "l")
            
            if (plot.res == TRUE) {
                plot(X, sq.res[, nm], ylab = expression(e_i^2), 
                  type = "h", col = est.col,lty=2, xlab = "x")
                points(X, sq.res[, nm], pch=19,cex=.7)
                legend("topright", legend = bquote(paste("SS = ", 
                  .(ss.res[nm]))), cex = 0.9, bty = "n")
            }
        }
        if (anim == TRUE) {
            for (i in 1:nm) {
                dev.hold()
                plot(poss, ss.res, type = "n", ylab = "Sum of squares", xlab= xlab, 
                  ...)
                arrows(poss[i], ss.res[i], poss[i + 1], ss.res[i + 
                  1], col = 2, length = 0.15, lwd = 1)
                points(poss[1:i], ss.res[1:i], lty = 2, col = 2, 
                  lwd = 1, type = "l")
                if (i == nm) {
                  abline(v = mean(X), lty = est.lty, 
                    col = est.col)
                  legend("bottomright", legend = bquote(paste("LS est. = ", 
                    .(LS.est))), cex = 0.9, bty = "n")
                  points(poss, ss.res, type = "l")
                }
                if (plot.res == TRUE) {
                  plot(X, sq.res[, i], ylab = expression(e[i]^2), 
                    type = "h", col = est.col,lty=2, xlab = "x")
                  points(X, sq.res[, i], pch=19,cex=.7)
                  legend("topright", legend = bquote(paste("SS = ", 
                    .(ss.res[i]))), cex = 0.9, bty = "n")
                }
                dev.flush()
                Sys.sleep(interval)
            }
        }
    }
}
