samp.dist<-function(parent, parent2 = parent, s.size = 1, s.size2 = s.size, n.seq=seq(1,30), 
    R = 1000, breaks = 30, stat = mean, stat2 = NULL,  stat3 = NULL, 
    stat4 = NULL, fix.n = TRUE, xlab = expression(bar(x)), ylab = "Relative frequency", ylim = NULL, 
    func = NULL, nlegend = TRUE, est.density = TRUE, col.density = 4, lwd.density = 2, 
    est.ylim = TRUE, anim = TRUE, interval = 0.01, col.anim = "rainbow",...){
    
    if(fix.n==TRUE)
    samp.dist.fixn(parent = parent, parent2 = parent2, s.size = s.size, s.size2 = s.size2, 
    R = R, breaks = breaks, stat = stat, stat2 = stat2, stat3 = stat3, 
    stat4 = stat4, xlab = xlab, ylab = ylab, 
    func = func, nlegend = nlegend, anim = anim, interval = interval, col.anim = col.anim,...) 

    if(fix.n==FALSE)
    samp.dist.n(parent=parent, R = R, n.seq = n.seq, 
    stat = mean, xlab = xlab, ylab = ylab, breaks = breaks, ylim = ylim,
    func = NULL, nlegend = TRUE, est.density = est.density, col.density = col.density, lwd.density = lwd.density, 
    est.ylim = est.ylim, interval = interval, col.anim = col.anim,...)
}

#------------------------------------ fixed n ---------------------------------------#

samp.dist.fixn<-function (parent, parent2 = parent, s.size = 1, s.size2 = s.size, 
    R = 1000, breaks = 30, stat = mean, stat2 = NULL, stat3 = NULL, 
    stat4 = NULL, xlab = expression(bar(x)), ylab = "Relative frequency", 
    func = NULL, nlegend=TRUE,anim=TRUE,interval=0.01,col.anim="rainbow",...){ 
   
    if(is.null(col.anim))clr=NULL
        if(!is.null(col.anim)){
        if(col.anim=="rainbow")clr<-rainbow(R)
        if(col.anim=="heat.colors"){c1<-heat.colors(R,1);clr<-c1[length(c1):1]}
        if(col.anim=="gray")clr<-gray(1-(1:R)/R)
        if(col.anim!="rainbow"&col.anim!="gray"&col.anim!="heat.colors")clr<-rep(col.anim,R)
    }

    if (is.null(stat2) & is.null(stat3)) {
        s.dist <- matrix(ncol = 1, nrow = R)
        for (i in 1:R) {
            s.dist[i] <- stat(sample(parent, size = s.size, replace = FALSE))
        }
        if(!is.null(func))s.dist<-func(s.dist)
        if(anim==TRUE){
        for(i in 1:R){
        hist(s.dist, xlab = xlab, ylab = ylab, main = "", freq = FALSE, 
            breaks = breaks,border="white",...)
            points(
              suppressWarnings(hist(s.dist[1:i],plot=FALSE,breaks=breaks, freq=FALSE)$mids),
              suppressWarnings(hist(s.dist[1:i],plot=FALSE,breaks=breaks, freq=FALSE)$density),
              type="h",col=clr[i],lwd=5)
            Sys.sleep(interval)}}
        if(anim==FALSE){
        hist(s.dist, xlab = xlab, ylab = ylab, main = "", freq = FALSE, 
            breaks = breaks,...)}
        if(nlegend==TRUE){legend("topright", legend = bquote(paste("n = ", .(s.size))), 
            bty = "n")}
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
        if (!is.null(stat2) & (is.null(stat3) | is.null(stat4))) 
            func.res <- func(s.dist1, s.dist2)
        if (!is.null(stat3) & (is.null(stat2) | is.null(stat4))) 
            func.res <- func(s.dist1, s.dist3)
        if (!is.null(stat2) & !is.null(stat3) & !is.null(stat4)) 
            func.res <- func(s.dist1, s.dist2, s.dist3, s.dist4)
        if(anim==TRUE){
            for(i in 1:R){
            hist(func.res, xlab = xlab, ylab = "Relative frequency", 
            main = "", freq = FALSE, breaks = breaks, border="white")
            points(
              suppressWarnings(hist(func.res[1:i],plot=FALSE,breaks=breaks, freq=FALSE)$mids),
              suppressWarnings(hist(func.res[1:i],plot=FALSE,breaks=breaks, freq=FALSE)$density),
              type="h",col=clr[i],lwd=5)
                        Sys.sleep(interval)}}
        if(anim==FALSE){
        hist(func.res, xlab = xlab, ylab = "Relative frequency", 
            main = "", freq = FALSE, breaks = breaks,...)}
        if(nlegend==TRUE){legend("topright", legend = bquote(paste("n = ", .(s.size))), 
            bty = "n")}
    }
}

#----------------------------- changing n ------------------------------------#

samp.dist.n<-function (parent, R = 500, n.seq=seq(1,30), 
    stat = mean, xlab = expression(bar(x)), ylab = "Relative frequency", breaks = 30, 
    func = NULL, nlegend=TRUE, est.density = TRUE, col.density = 4,  lwd.density = 2, est.ylim = TRUE, ylim = NULL, interval=0.5, col.anim = NULL,...){ 
        n.max<-max(n.seq);n.min<-min(n.seq);max.col<-length(n.seq)
        if(is.null(col.anim))clr=NULL
        if(!is.null(col.anim)){
            if(col.anim=="heat.colors"){c1<-heat.colors(max.col);clr<-c1[length(c1):1]}
            if(col.anim=="rainbow")clr<-rainbow(max.col)
            if(col.anim=="gray")clr<-gray(1-(1:max.col/max.col))
            if(col.anim!="rainbow"&col.anim!="gray"&col.anim!="heat.colors")clr<-rep(col.anim,max.col)}
        
            s.dist<-matrix(nrow=R,ncol=max.col)
            if(n.min==1&is.na(stat(1)))stop("Statistic in stat cannot be computed with n = 1, revise n.seq.") 
            
            for(i in n.min:max.col){
                s.dist[,i]<-apply(matrix(replicate(R,sample(parent,i)),i), 2, stat)
                }
            if(!is.null(func)) s.dist <- func(s.dist)
            if(est.ylim==TRUE&!is.numeric(ylim)){
                ylim<-c(0, max(c(max(density(s.dist[,1])$y),max(density(s.dist[,max.col])$y))))}
            
            for(i in 1:length(n.seq)){
                hist(s.dist[,i], xlab = xlab, ylab = ylab, ylim=ylim, main = "", breaks=breaks, freq = FALSE,col=clr[i])
                if(nlegend==TRUE){legend("topright", legend = bquote(paste("n = ", .(n.seq[i]))), 
                    bty = "n")}
                if(est.density==TRUE){
                    lines(density(s.dist[,i]),col=col.density,lwd=lwd.density)}
                    Sys.sleep(interval)
       }                  
}