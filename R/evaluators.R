####################################################################################
McR.eval<-function (cat, dist, method="McR") 
{
    if (is.factor(cat)) 
        cat <- as.numeric(cat)
    numclu <- max(cat)
    call <- match.call()
    if (is.null(class(dist)) || class(dist) != "dist") {
        stop("you must supply an object of class dist")
    }
    x <- (max(1, max(dist)) - as.matrix(dist))/max(1, max(dist))
    num <- 0
    sumnum <- 0
    den <- 0
    sumden <- 0
    card <- rep(0, numclu)
    for (i in 1:numclu) {
        card[i] <- sum(cat == i)
    }
    numplt <- nrow(x)
    simptc <- matrix(0, nrow = numplt, ncol = numclu)
    simctc <- matrix(0, nrow = numclu, ncol = numclu)
    for (i in 1:numplt) {
        for (j in 1:numclu) {
            if (cat[i] == j) {
                if (card[j] > 1) {
                  simptc[i, j] <- (sum(x[i, cat == j]) - 1)/(card[j] - 
                    1)
                }
                else {
                  simptcat[i, j] <- 1
                }
            }
            else {
                if (card[j] > 0) {
                  simptc[i, j] <- sum(x[i, cat == j])/card[j]
                }
                else {
                  simptc[i, j] <- 0
                }
            }
        }
    }
    for (i in 1:numclu) {
        for (j in 1:numclu) {
            if (i == j) {
                if (card[i] > 1) {
                  simctc[i, j] <- (sum(x[cat == i, cat == i]) - card[i])/(card[i]^2 - 
                    card[i])
                  sumnum <- sumnum + simctc[i, i] * ((card[i]^2 - 
                    card[i])/2)
                  num <- num + ((card[i]^2 - card[i])/2)
                }
            }
            else {
                if (card[i] != 0 & card[j] != 0) {
                  simctc[i, j] <- sum(x[cat == i, cat == j])/(card[i] * 
                    card[j])
                  sumden <- sumden + sum(x[cat == i, cat == j])
                  den <- den + (card[i] * card[j])
                }
            }
        }
    }
    if(method=="partana")out <- list(ptc = simptc, ctc = simctc, evaluator = (sumnum/num)/(sumden/den), 
        clustering = cat,eval.name="PARTANA.ratio")
    if(method=="McR")out <- list(ptc = simptc, ctc = simctc,  
        clustering = cat,evaluator=(1-sumnum/num)/(1-sumden/den),eval.name="McLain-Rao Ratio")
    class(out) <- "eval"
    out
}

###########################C.index######################################

Cindex.eval <- function(cat,Y,index='steinhaus')
{
    cat<-as.numeric(as.factor(cat))
    vd <- rep(0,max(cat))
    cd <- rep(0,max(cat))
    for (i in 1:max(cat)) {
        tveg <- Y[cat==i,]
        tmp <- get.dist(tveg,index)
        vd[i] <- sum(tmp)
        size <- attr(tmp,'Size')
        cd[i] <- (size^2 - size)/2
    }
    S <- sum(vd)
    psum <- sum(cd)
    all <- as.vector(get.dist(Y,index))
    asc <- sort(all)
    desc <- sort(all,decreasing=TRUE)
    S.min <- sum(asc[1:psum])
    S.max <- sum(desc[1:psum])
    C <- (S - S.min)/(S.max-S.min)
    res<-list()
    res$vd <- as.matrix(vd)
    res$p <- as.matrix(cd)
    res$psum <- psum
    res$P <- length(all)
    res$S <- S
    res$S.min <- S.min
    res$S.max <- S.max
    res$evaluator <- 1-C
    res$eval.name<-"1-C-index"
    class(res)<-"eval"
    res
}


###############################Morisista################################

morisita.eval <- function(cat,Y){

proc<-function(Y,cat){
 vec<-as.matrix(list())
 vec<-as.matrix(const(Y,cat))
 vec<-as.data.frame(vec)
 su<-apply(vec,2,sum)
 suk<-as.data.frame(apply(vec,1,function(x){x/su}))
       suk<-t(suk)
       suk 
}

mor <- function(x,y)
{
    step1 <- 2*(sum(x*y))
    step2 <- sum(x^2) + sum(y^2)
    return(step1/step2)
}

auto.morisita <- function(z) 
{
    res <- matrix(0,nrow=ncol(z),ncol=ncol(z))
    for (i in 1:(ncol(z)-1)) {
        for (j in (i+1):ncol(z)) {
            res[i,j] <- mor(z[,i],z[,j])
        }
    }
        result<-list()
        res[lower.tri(res,diag=TRUE)] <- NA
        mean.res<-mean(res[!is.na(res)])
        result$mean.res<-mean.res
        result 
}

ap<-proc(Y=Y,cat=cat)
res<-list()
res$evaluator<-1-(auto.morisita(ap)$mean.res)
res$eval.name<-"1-Morisita"
class(res)<-"eval"
res
}

################################point.biserial###########################

biserial.eval<-function (cat,dist) 
{
    numplt <- length(cat)
    newmat <- matrix(1,nrow=numplt,ncol=numplt)
    for (i in 1:numplt) {
        for (j in 1:numplt) {
            if (cat[i] == cat[j]) newmat[j,i] <- 0
        }
    }
    res<-list()
    fv<-as.vector(as.dist(newmat))
    dv<-as.vector(dist)
    corr<-cor(fv,dv)
    res$fv<-fv
    res$dv<-dv
    res$evaluator<-corr
    res$eval.name<-"Point Biserial Correlation"
    class(res)<-"eval"
    res
}

