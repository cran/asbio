


best.agreement <- function(class1, class2, test = FALSE, rperm = 100){

  lvls1 <- as.factor(class1); nlvl1 <- nlevels(lvls1)
  lvls2 <- as.factor(class2); nlvl2 <- nlevels(lvls2)
  
  outcomes1 <- levels(lvls1); nout1 <- length(outcomes1)
  outcomes2 <- permn(levels(lvls2)); nout2 <- length(outcomes2)

  out2 <- data.frame(t(data.frame(outcomes2)))
  row.names(out2) <- 1:nrow(out2)
  outcomes <- out2
  agree <- rep(NA, nrow(outcomes))
  

  for(i in 1:nrow(outcomes)){
    f2 <- factor(lvls2, levels = unlist(outcomes[i,]))
    tab <- table(lvls1, f2)
    agree[i] <- sum(diag(tab))/sum(tab)
}
  
  all.max <- which(agree == max(agree))
  n.perm <- nrow(outcomes)
  n.max <- length(all.max)
  w <- all.max[1]
  max.agree <- agree[w]
  class.names1 <-  lvls1
  class.names2 <-  factor(lvls2, levels = unlist(outcomes[w,])) 


  
  if(test){
    class <- lvls2
    agreeH0 <- rperm
  
  j <- 1      
  while(j <= rperm){
    classH0 <- sample(class)
    outH0 <- permn(levels(classH0)); nH0 <- length(outH0)
    outH0 <- data.frame(t(data.frame(outH0)))
    row.names(outH0) <- 1:nrow(outH0)
    agreei <- rep(NA, nrow(outH0))
    
    for(i in 1:nrow(outH0)){
      f2 <- factor(classH0, levels = unlist(outH0[i,]))
      tab <- table(lvls1, f2)
      agreei[i] <- sum(diag(tab))/sum(tab)
    }
  agreeH0[j] <- max(agreei)
  j <- j + 1
  }
  p.val <- (1 + length(which(agreeH0 >= max.agree)))/rperm
  }
  
  
  result <- list()
  result$n.possible.perms <- n.perm
  result$n.max.solutions <- n.max
  result$max.agree <- max.agree
  result$max.class.names1 <- class.names1
  result$max.class.names2 <- class.names2
  if(test)result$p.val <- p.val
  result
}

  
