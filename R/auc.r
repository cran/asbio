auc <- function(obs, fit, plot=FALSE){
compf <- outer(fit[obs == 0], fit[obs == 1], function(x, y)paste(x, y, sep = ","))
cf <- as.data.frame(matrix(ncol = 2, unlist(strsplit(compf, ",")), byrow = TRUE))
names(cf) <- c("pi.hat.0", "pi.hat.1")

n <- prod(summary(factor(obs)))
U <- ifelse(cf[,1] < cf[,2], 1, 0)
AUC <- sum(U)/n

if(plot==TRUE){
        
        int <- seq(0.01, 0.99, by = 0.01)
        sens <- rep(NA, length(int))
        omspec <- rep(NA, length(int))
       
        for(i in 1:length(int)){
        t <- table(ifelse(fit > int[i], 1, 0), obs)
                    
        sens[i] <- t[,2][2]/sum(t[,2])
        omspec[i] <- 1 - t[,1][1]/sum(t[,1])
        }
        
        plot(c(1, omspec, 0), c(1, sens, 0), xlab = "False positive rate", ylab = "True positive rate", type = "l", xlim=c(0,1), ylim=c(0,1), lwd = 2.5, main = "ROC curve",cex.lab=1.3,cex.main=1.3)
        abline(0, 1, lty = 2)
        }
AUC
}



