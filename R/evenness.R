evenness<-function (x) 
{
    if (ncol(as.matrix(x)) == 1) {
        S <- length(x[x != 0])
        J <- SW.index(x)/log(S)
    }
    if (ncol(as.matrix(x)) > 1) {
        Hs <- SW.index(x)
        lnS1 <- apply(x>0,2,sum); lnS <-log(sum(ifelse(lnS1>0,1,0)))
        J <- Hs/lnS
    }
    J
}
