best.agreement <- function(class1, class2, test = FALSE, rperm = 100){
  
  permutations <- function(x, prefix = c()){
    if(length(x) == 1) # was zero before
      return(list(c(prefix, x)))
    out <- do.call(c, lapply(1:length(x), function(idx) 
      permutations(x[-idx], c(prefix, x[idx]))))
    if(length(prefix) > 0L)
      return(out)
    do.call(rbind, out) # Thanks to Benjamin Christoffersen
  }
  
  lvls1 <- as.factor(class1); nlvl1 <- nlevels(lvls1)
  lvls2 <- as.factor(class2); nlvl2 <- nlevels(lvls2)
  
  if(nlvl1 > nlvl2){
    lvls3 <- lvls2; lvls2 <- lvls1; lvls1 <- lvls3
    nlvl1 <- nlevels(lvls1); nlvl2 <- nlevels(lvls2)
  }
  
  outcomes <- permutations(1:nlvl2)
  
  
  #-------------------------------------------------------------#
  
  agree.f <-  function(x, in1 = lvls1, in2 = lvls2){
    out <- factor(in2, levels = x)
    ta <- table(out, in1)
    tt <- t(ta)
    max(sum(diag(ta))/sum(ta),sum(diag(tt))/sum(tt))
  }
  
  #-------------------------------------------------------------#
  
  agree <- apply(outcomes, 1, function(x) agree.f(x, lvls1, lvls2))
  
  #-------------------------------------------------------------#
  
  perm.test <- function(producer, user, maxa, rperm){
    outH0 <- replicate(rperm, sample(user))
    perm.agree <- apply(outH0, 2, function(x){
      ta <- table(producer, x)
      tt <- t(ta)
      max(sum(diag(ta))/sum(ta),sum(diag(tt))/sum(tt))
    })
    p.val <- (1 + length(which(perm.agree >= maxa)))/rperm
    p.val
  }
  
  #-------------------------------------------------------------#
  
  all.max <- which(agree == max(agree))
  n.max <- length(all.max)
  w <- all.max[1]
  max.agree <- agree[w]
  
  max.class.names2 = factor(lvls2, levels = unlist(outcomes[w,]))
  
  result <- list(n.possible.perms = nrow(outcomes), n.max.solutions = n.max,
                 max.agree = max.agree, max.tab = table(lvls1, max.class.names2),
                 max.class.names1 = lvls1, test = test,
                 max.class.names2 = max.class.names2)
  
  if (test) result$pval = perm.test(lvls1, lvls2, max.agree, rperm = rperm)
  else result$pval = "no.test"
  class(result) <- "max_agree"
  invisible(result)
}

print.max_agree <- function(x, digits = 4, ...){
  cat(paste("Max agreement = ", round(x$max.agree, digits), sep = ""), if(x$test)paste("\np-value = ", round(x$pval, digits)))
  invisible(x)
}


  
