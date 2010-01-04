samp.dist<-function(parent, parent2 = parent, s.size = 1, s.size2 = s.size, R = 1000, breaks = 30, stat = mean, stat2 = NULL, stat3 = NULL, stat4 = NULL, xlab = expression(bar(X)),ylab = "Relative frequency", func = NULL){
  if(is.null(stat2)&is.null(stat3)){
  s.dist<-matrix(ncol=1,nrow=R)
    for(i in 1:R){
      s.dist[i]<-stat(sample(parent,size=s.size,replace=FALSE))}
        if(!is.null(func))s.dist<-func(s.dist)
      hist(s.dist,xlab=xlab,ylab=ylab,main="",freq=FALSE, breaks=breaks)
      legend("topright",legend=bquote(paste("n = ",.(s.size))),bty="n")
      }
  if(!is.null(stat2)|!is.null(stat3)){
  s.dist1<-matrix(ncol=1,nrow=R)
  s.dist2<-matrix(ncol=1,nrow=R)
  s.dist3<-matrix(ncol=1,nrow=R)
  s.dist4<-matrix(ncol=1,nrow=R)
    for(i in 1:R){
      sample1<-sample(parent,size=s.size,replace=FALSE)
      sample2<-sample(parent2,size=s.size,replace=FALSE)
      s.dist1[i]<-stat(sample1)
      if(!is.null(stat2))s.dist2[i]<-stat2(sample2)
      if(!is.null(stat3))s.dist3[i]<-stat3(sample1)
      if(!is.null(stat4))s.dist4[i]<-stat4(sample2)}
      if(!is.null(stat2)&(is.null(stat3)|is.null(stat4))) func.res<-func(s.dist1,s.dist2)
      if(!is.null(stat3)&(is.null(stat2)|is.null(stat4))) func.res<-func(s.dist1,s.dist3)
      if(!is.null(stat2)&!is.null(stat3)&!is.null(stat4))func.res<-func(s.dist1,s.dist2,s.dist3,s.dist4)
      hist(func.res,xlab=xlab,ylab="Relative frequency",main="",freq=FALSE, breaks=breaks)
      legend("topright",legend=bquote(paste("n = ",.(s.size))),bty="n")
      }
}
