samp.dist<-function (parent, parent2 = parent, s.size = 1, s.size2 = s.size, 
    n.seq = seq(1, 30), R = 1000, breaks = 30, stat = mean, stat2 = NULL, 
    stat3 = NULL, stat4 = NULL, fix.n = TRUE, xlab = expression(bar(x)), 
    ylab = "Relative frequency", ylim = NULL, func = NULL, show.n = TRUE, 
    show.SE = FALSE, est.density = TRUE, col.density = 4, lwd.density = 2, 
    est.ylim = TRUE, anim = TRUE, interval = 0.01, col.anim = "rainbow", 
    digits = 3, ...) 
{
    if (fix.n == TRUE) 
        samp.dist.fixn(parent = parent, parent2 = parent2, s.size = s.size, 
            s.size2 = s.size2, R = R, breaks = breaks, stat = stat, 
            stat2 = stat2, stat3 = stat3, stat4 = stat4, xlab = xlab, 
            ylab = ylab, func = func, show.n = show.n, show.SE = show.SE, 
            anim = anim, interval = interval, col.anim = col.anim, 
            digits = digits, ...)
    if (fix.n == FALSE) 
        samp.dist.n(parent = parent, R = R, n.seq = n.seq, stat = stat, 
            xlab = xlab, ylab = ylab, breaks = breaks, ylim = ylim, 
            func = func, show.n = show.n, show.SE = show.SE, 
            est.density = est.density, col.density = col.density, 
            lwd.density = lwd.density, est.ylim = est.ylim, anim = anim, 
            interval = interval, col.anim = col.anim, digits = digits, 
            ...)
}


#------------------------------------ fixed n ---------------------------------------#

samp.dist.fixn<-function (parent, parent2 = parent, s.size = 1, s.size2 = s.size, 
    R = 1000, breaks = 30, stat = mean, stat2 = NULL, stat3 = NULL, 
    stat4 = NULL, xlab = expression(bar(x)), ylab = "Relative frequency", 
    func = NULL, show.n = TRUE, show.SE = FALSE, anim = TRUE, 
    interval = 0.01, col.anim = "rainbow", digits = 3, ...) 
{
    if (is.null(col.anim)) 
        clr = NULL
    if (!is.null(col.anim)) {
        if (col.anim == "rainbow") 
            clr <- rainbow(R)
        if (col.anim == "heat.colors") {
            c1 <- heat.colors(R, 1)
            clr <- c1[length(c1):1]
        }
        if (col.anim == "gray") 
            clr <- gray(1 - (1:R)/R)
        if (col.anim != "rainbow" & col.anim != "gray" & col.anim != 
            "heat.colors") 
            clr <- rep(col.anim, R)
    }
    if (is.null(stat2) & is.null(stat3)) {
        s.dist <- matrix(ncol = 1, nrow = R)
        for (i in 1:R) {
            s.dist[i] <- stat(sample(parent, size = s.size, replace = FALSE))
        }
        if (!is.null(func)) 
            s.dist <- func(s.dist)
        SE <- round(sd(s.dist), digits)
        if (anim == TRUE) {
            for (i in 1:R) {
                hist(s.dist, xlab = xlab, ylab = ylab, main = "", 
                  freq = FALSE, breaks = breaks, border = "white", 
                  ...)
                points(suppressWarnings(hist(s.dist[1:i], plot = FALSE, 
                  breaks = breaks, freq = FALSE)$mids), suppressWarnings(hist(s.dist[1:i], 
                  plot = FALSE, breaks = breaks, freq = FALSE)$density), 
                  type = "h", col = clr[i], lwd = 5)
                Sys.sleep(interval)
            }
        }
        if (anim == FALSE) {
            hist(s.dist, xlab = xlab, ylab = ylab, main = "", 
                freq = FALSE, breaks = breaks, ...)
        }
    }
    if (!is.null(stat2) | !is.null(stat3)) {
        s.dist1 <- matrix(ncol = 1, nrow = R)
        s.dist2 <- matrix(ncol = 1, nrow = R)
        s.dist3 <- matrix(ncol = 1, nrow = R)
        s.dist4 <- matrix(ncol = 1, nrow = R)
        for (i in 1:R) {
            sample1 <- sample(parent, size = s.size, replace = FALSE)
            sample2 <- sample(parent2, size = s.size, replace = FALSE)
            s.dist1[i] <- stat(sample1)
            if (!is.null(stat2)) 
                s.dist2[i] <- stat2(sample2)
            if (!is.null(stat3)) 
                s.dist3[i] <- stat3(sample1)
            if (!is.null(stat4)) 
                s.dist4[i] <- stat4(sample2)
        }
        if (!is.null(stat2) & (is.null(stat3) | is.null(stat4))) {
            func.res <- func(s.dist1, s.dist2)
        }
        if (!is.null(stat3) & (is.null(stat2) | is.null(stat4))) {
            func.res <- func(s.dist1, s.dist3)
        }
        if (!is.null(stat2) & !is.null(stat3) & !is.null(stat4)) {
            func.res <- func(s.dist1, s.dist2, s.dist3, s.dist4)
        }
        SE <- sd(func.res)
        if (anim == TRUE) {
            for (i in 1:R) {
                hist(func.res, xlab = xlab, ylab = "Relative frequency", 
                  main = "", freq = FALSE, breaks = breaks, border = "white",...)
                points(suppressWarnings(hist(func.res[1:i], plot = FALSE, 
                  breaks = breaks, freq = FALSE)$mids), suppressWarnings(hist(func.res[1:i], 
                  plot = FALSE, breaks = breaks, freq = FALSE)$density), 
                  type = "h", col = clr[i], lwd = 5)
                Sys.sleep(interval)
            }
        }
        if (anim == FALSE) {
            hist(func.res, xlab = xlab, ylab = "Relative frequency", 
                main = "", freq = FALSE, breaks = breaks, ...)
        }
    }
    if (show.n == TRUE & show.SE == FALSE) {
        legend("topright", legend = paste("n = ", s.size), bty = "n")
    }
    if (show.SE == TRUE & show.n == FALSE) {
        legend("topright", legend = paste("SE = ", SE), bty = "n")
    }
    if (show.SE == TRUE & show.n == TRUE) {
        legend("topright", legend = c(paste("n = ", s.size), 
            paste("SE = ", SE)), bty = "n")
    }
}


#----------------------------- changing n ------------------------------------#

samp.dist.n<-function (parent, R = 500, n.seq = seq(1, 30), stat = mean, xlab = expression(bar(x)), 
    ylab = "Relative frequency", breaks = 30, func = NULL, show.n = TRUE, 
    show.SE = FALSE, est.density = TRUE, col.density = 4, lwd.density = 2, 
    est.ylim = TRUE, ylim = NULL, anim = TRUE, interval = 0.5, 
    col.anim = NULL, digits = 3, ...) 
{
    n.max <- max(n.seq)
    n.min <- min(n.seq)
    max.col <- length(n.seq)
    if (n.min == 1 & is.na(stat(1))) 
        stop("Statistic in stat cannot be computed with n = 1, revise n.seq.")
    if (anim == FALSE) {
        s.dist <- matrix(ncol = 1, nrow = R)
        for (i in 1:R) {
            s.dist[i] <- stat(sample(parent, size = n.max, replace = FALSE))
        }
        if (!is.null(func)) 
            s.dist <- func(s.dist)
        SE <- round(sd(s.dist), digits)
        hist(s.dist, xlab = xlab, ylab = ylab, main = "", freq = FALSE, 
            breaks = breaks, ...)
        if (est.density == TRUE) {
            lines(density(s.dist), col = col.density, lwd = lwd.density)
        }
        if (show.n == TRUE & show.SE == FALSE) {
            legend("topright", legend = paste("n = ", n.max), 
                bty = "n")
        }
        if (show.SE == TRUE & show.n == FALSE) {
            legend("topright", legend = paste("SE = ", SE), bty = "n")
        }
        if (show.SE == TRUE & show.n == TRUE) {
            legend("topright", legend = c(paste("n = ", n.max), 
                paste("SE = ", SE)), bty = "n")
        }
    }
    if (anim == TRUE) {
        if (is.null(col.anim)) 
            clr = NULL
        if (!is.null(col.anim)) {
            if (col.anim == "heat.colors") {
                c1 <- heat.colors(max.col)
                clr <- c1[length(c1):1]
            }
            if (col.anim == "rainbow") 
                clr <- rainbow(max.col)
            if (col.anim == "gray") 
                clr <- gray(1 - (1:max.col/max.col))
            if (col.anim != "rainbow" & col.anim != "gray" & 
                col.anim != "heat.colors") 
                clr <- rep(col.anim, max.col)
        }
        s.dist <- matrix(nrow = R, ncol = max.col)
        for (i in n.min:max.col) {
            s.dist[, i] <- apply(matrix(replicate(R, sample(parent, 
                i)), i), 2, stat)
        }
        if (!is.null(func)) 
            s.dist <- func(s.dist)
        SE <- round(apply(s.dist, 2, sd), digits)
        if (est.ylim == TRUE & !is.numeric(ylim)) {
            ylim <- c(0, max(c(max(density(s.dist[, 1])$y), max(density(s.dist[, 
                max.col])$y))))
        }
        for (i in 1:length(n.seq)) {
            hist(s.dist[, i], xlab = xlab, ylab = ylab, ylim = ylim, 
                main = "", breaks = breaks, freq = FALSE, col = clr[i],...)
            if (show.n == TRUE & show.SE == FALSE) {
                legend("topright", legend = paste("n = ", n.seq[i]), 
                  bty = "n")
            }
            if (show.SE == TRUE & show.n == FALSE) {
                legend("topright", legend = paste("SE = ", SE[i]), 
                  bty = "n")
            }
            if (show.SE == TRUE & show.n == TRUE) {
                legend("topright", legend = c(paste("n = ", n.seq[i]), 
                  paste("SE = ", SE[i])), bty = "n")
            }
            if (est.density == TRUE) {
                lines(density(s.dist[, i]), col = col.density, 
                  lwd = lwd.density)
            }
            Sys.sleep(interval)
        }
    }
}