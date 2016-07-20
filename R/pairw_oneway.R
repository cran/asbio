pairw.oneway<-function(y,x,conf=.95,digits = 5, method = "holm"){
  fitted <- tapply(y, factor(x), mean)#calculates factor level means
  nis <- tapply(y, factor(x), length)#calculates number of observations
  var <- tapply(y, factor(x), var)#calculates variance
  r <- length(fitted) #number of levels
  se.mat<- outer(var/nis, var/nis,"+")
  ses <- sqrt(se.mat[upper.tri(se.mat)]) #eliminates redundant standard errors
  dif.mat <- outer(fitted, fitted, "-") #all possible differences of means
  diffs <- dif.mat[upper.tri(dif.mat)] #eliminates redundant differences
  t.star <- diffs/ses #calculates test statistics 
  num.mat <- outer(var/nis, var/nis,"+")^2
  den.mat <- outer((var/nis)^2/(nis-1), (var/nis)^2/(nis-1),"+")
  nums <- num.mat[upper.tri(num.mat)]
  dens <- den.mat[upper.tri(den.mat)]
  nu <- nums/dens
  pvals <- pt(abs(t.star),nu,lower.tail = FALSE)*2
  getlvl <- levels(x)
  lvl <- outer(getlvl, getlvl, function(x,y)paste(x,y,sep = "-"))
  
  holm<-p.adjust(pvals, method = method)
  
  
  Decision <- ifelse(holm < 1-conf, "Reject H0", "FTR H0")
  hwidths <- qt(1-(1-conf)/2,nu) * ses
  if(method == "bonferroni") hwidths <- qt(1-(1-conf)/(2 * r),nu) * ses
  val <- round(cbind(diffs, diffs - hwidths, diffs + hwidths), 
               digits)
  val <- as.data.frame(cbind(val, Decision, signif(holm,digits)))
  lvl <- outer(levels(x), levels(x), function(x1, x2) {
    paste(paste("mu", x1, sep = ""), paste("mu", x2, sep = ""), 
          sep = "-")
  })
  dimnames(val) <- list(lvl[upper.tri(lvl)], c("Diff", "Lower", 
                                               "Upper", "Decision", "Adj. p-value"))
  head <- paste(paste(as.character(conf * 100), "%", 
                      sep = ""), c("Welch adjusted confidence intervals"))
  res <- list()
  res$head <- head
  res$conf <- conf
  comp <- outer(levels(x), levels(x), function(x1, x2) {
    paste(x1, x2, sep = "-")
  })
  res$comp <- comp[upper.tri(comp)]
  res$summary <- val
  res$band <- cbind(diffs - hwidths, diffs + hwidths)
  res$fitted <- fitted
  res$x <- x
  res$y <- y
  res$method <- paste("Welch","/",method)
  class(res) <- "pairw"
  res
}