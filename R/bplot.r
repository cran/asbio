bplot<-function (y, x, int = "CI", conf = 0.95, 
    plot.ci = TRUE, bar = TRUE, simlett = FALSE, bar.col = "gray", 
    lett = NULL, exp.fact = 2, xlab = "x", ylab = "y", err = "y", 
    sfrac = 0.01, gap = 0, slty = par("lty"), scol = NULL, pt.bg = par("bg"), 
    order = FALSE, names.arg = NULL, width = 1, loc.meas = mean, 
    cex.lab = 1, cex.axis = 1, cex.names = 1, las = par("las"), 
    horiz = FALSE, ylim = NULL, ...) 
{
    require(plotrix)
    t.conf <- function(data, conf = 0.95) {
        n <- nrow(as.matrix(data))
        SE <- sd(data)/sqrt(n)
        t.star <- qt((1 - ((1 - conf)/2)), n - 1)
        m <- SE * t.star
        CI <- c(mean(data) - m, mean(data) + m)
        result <- list()
        result$SE <- SE
        result$margin <- m
        result$CI <- CI
        result
    }
    SE <- tapply(y, x, function(x) {
        t.conf(x[!is.na(x)])$SE
    })
    CI <- tapply(y, x, function(x) {
        t.conf(x[!is.na(x)], conf = conf)$margin
    })
    iqr <- tapply(y, x, IQR)
    n <- as.numeric(summary(as.factor(x)))
    iqr.ci <- 1.58 * iqr/sqrt(n)
    loc.vec <- tapply(y, x, function(x) {
        loc.meas(x[!is.na(x)])
    })
    if (order == TRUE) {
        o <- order(loc.vec)
        loc.vec <- loc.vec[o]
        SE <- SE[o]
        CI <- CI[o]
        iqr <- iqr[o]
        iqr.ci <- iqr.ci[o]
        names.arg <- names.arg[o]
    }
    b <- barplot(loc.vec, plot = FALSE)
    if (plot.ci == TRUE) {
        if (bar == TRUE) {
            if (int == "SE") {
                if (simlett == TRUE&is.null(ylim)) 
                  yLim = c(0, max(loc.vec + (SE * exp.fact)))
                if (simlett == FALSE&is.null(ylim)) 
                  yLim = c(0, max(loc.vec + SE))
                if (!is.null(ylim))yLim=ylim
                plotCI(barplot(loc.vec, col = bar.col, ylim = yLim, 
                  xlab = xlab, ylab = ylab, cex.axis = cex.axis, 
                  las = las, horiz = horiz, names.arg = names.arg, 
                  width = width, cex.names = cex.names, cex.lab = cex.lab), 
                  loc.vec, uiw = SE, slty = slty, sfrac = sfrac, 
                  err = err, add = TRUE, ...)
            }
            if (int == "CI") {
                if (simlett == TRUE) 
                  yLim = c(0, max(loc.vec + (CI * exp.fact)))
                if (simlett == FALSE) 
                  yLim = c(0, max(loc.vec + CI))
                if (!is.null(ylim))yLim=ylim
                plotCI(barplot(loc.vec, col = bar.col, ylim = yLim, 
                  xlab = xlab, ylab = ylab, cex.axis = cex.axis, 
                  las = las, horiz = horiz, names.arg = names.arg, 
                  width = width, cex.names = cex.names, cex.lab = cex.lab), 
                  loc.vec, uiw = CI, slty = slty, sfrac = sfrac, 
                  err = err, add = TRUE, ...)
            }
            if (int == "IQR") {
                if (simlett == TRUE) 
                  yLim = c(0, max(loc.vec + (iqr * 0.5 * exp.fact)))
                if (simlett == FALSE) 
                  yLim = c(0, max(loc.vec + iqr * 0.5))
                if (!is.null(ylim))yLim=ylim
                plotCI(barplot(loc.vec, col = bar.col, ylim = yLim, 
                  xlab = xlab, ylab = ylab, cex.axis = cex.axis, 
                  las = las, horiz = horiz, names.arg = names.arg, 
                  width = width, cex.names = cex.names, cex.lab = cex.lab), 
                  loc.vec, uiw = iqr * 0.5, slty = slty, sfrac = sfrac, 
                  err = err, add = TRUE, ...)
            }
            if (int == "IQR.CI") {
                if (simlett == TRUE) 
                  yLim = c(0, max(loc.vec + (iqr.ci * exp.fact)))
                if (simlett == FALSE) 
                  yLim = c(0, max(loc.vec + iqr.ci))
                if (!is.null(ylim))yLim=ylim
                plotCI(barplot(loc.vec, col = bar.col, ylim = yLim, 
                  xlab = xlab, ylab = ylab, cex.axis = cex.axis, 
                  las = las, horiz = horiz, names.arg = names.arg, 
                  width = width, cex.names = cex.names, cex.lab = cex.lab), 
                  loc.vec, uiw = iqr.ci, slty = slty, sfrac = sfrac, 
                  err = err, add = TRUE, ...)
            }
        }
        if (bar == FALSE) {
            if (int == "SE") 
                plotCI(x = as.numeric(levels(as.factor(x))), 
                  loc.vec, uiw = SE, xlab = xlab, ylab = ylab, 
                  ...)
            if (int == "CI") 
                plotCI(x = as.numeric(levels(as.factor(x))), 
                  loc.vec, uiw = CI, xlab = xlab, ylab = ylab, 
                  ...)
        }
    }
    if (plot.ci == FALSE) 
        barplot(loc.vec, xlab = xlab, ylab = ylab, cex.axis = cex.axis, 
            las = las, horiz = horiz, names.arg = names.arg, 
            width = width, cex.names = cex.names, cex.lab = cex.lab, ylim = ylim)
    if (simlett == TRUE) 
        mtext(lett, side = 3, at = b, line = 0.5)
}
