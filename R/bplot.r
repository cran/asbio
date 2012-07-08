bplot<-function (y, x, bar.col = "gray", loc.meas = mean, order = FALSE, int = "SE", conf = 0.95, 
    uiw = NULL, liw = NULL, sfrac = 0.1, slty = 1, scol = 1, slwd = 1, exp.fact = 1.5, simlett = FALSE, lett.side = 3,  
    lett = NULL, names.arg = NULL, ylim = NULL, horiz = FALSE, ...) 
{
    SE <- tapply(y, x, function(x) {
    ci.mu.t(x[!is.na(x)])$SE
    })
    CI <- tapply(y, x, function(x) {
    ci.mu.t(x[!is.na(x)], conf = conf)$margin
    })
    iqr <- tapply(y, x, IQR)
    n <- as.numeric(summary(as.factor(x)))
    iqr.ci <- 1.58 * iqr/sqrt(n)
    MAD <- tapply(y, x, function(x) {
    mad(x[!is.na(x)])})
    
    loc.vec <- tapply(y, x, function(x) {
        loc.meas(x[!is.na(x)])})
    
       if (order == TRUE) {
        o <- order(loc.vec)
        loc.vec <- loc.vec[o]
        SE <- SE[o]
        CI <- CI[o]
        iqr <- iqr[o]
        iqr.ci <- iqr.ci[o]
        MAD <- MAD[o]
        names.arg <- names.arg[o]
    }
    
    if(int == "CI") margin <- CI
    if(int == "SE") margin <- SE
    if(int == "IQR") margin <- iqr
    if(int == "IQR.CI") margin <- iqr.ci
    if(int == "MAD") margin <- MAD
    if(is.null(uiw)) uiw <- loc.vec + margin; liw <- loc.vec - margin
    
                if (simlett == TRUE & is.null(ylim)){ 
                  yLim = c(min(c(0, loc.vec - (margin * exp.fact))), 
                  max(c(0, loc.vec + (margin * exp.fact))))}
                if(simlett == FALSE){
                  yLim <- c(min(0, loc.vec - (margin)), max(0, loc.vec + (margin)))}
                                     
                if(horiz == FALSE) b <- barplot(loc.vec, ylim = yLim , col = bar.col, ...)
                if(horiz == TRUE) b <- barplot(loc.vec, xlim = yLim , col = bar.col, horiz = TRUE, ...)
                if(horiz == FALSE){
                    arrows(b, liw, b, uiw, angle = 90, col = scol, lty = slty, lwd = slwd, length = sfrac)
                    arrows(b, liw, b, uiw, code = 1, angle = 90, col = scol, lty = slty, lwd = slwd, length = sfrac)}
                if(horiz == TRUE){
                    arrows(liw, b, uiw, b, angle = 90, col = scol, lty = slty, lwd = slwd, length = sfrac)
                    arrows(liw, b, uiw, b, code = 1, angle = 90, col = scol, lty = slty, lwd = slwd, length = sfrac)}
        if(simlett == TRUE){
                    mtext(lett, side = lett.side, at = b, line = ifelse(lett.side == 3, 0.5, -0.5))}
}
