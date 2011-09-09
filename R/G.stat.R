G.stat<-function(y){
  chi<-chisq.test(y)
  r<-y*log(y/chi$expected)
  G<-sum(r[!is.na(r)])*2
    if(is.matrix(y)){
      lik.ratio.p.val<-pchisq(G,df=(ncol(y)-1)*(nrow(y)-1),lower.tail=FALSE)}
    if(is.vector(y)){
      lik.ratio.p.val<-pchisq(G,df=length(y)-1,lower.tail=FALSE)}
  res<-list()
  res$G<-G
  res$lik.ratio.p.val<-lik.ratio.p.val
  res
}

