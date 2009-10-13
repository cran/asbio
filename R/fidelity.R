fidelity<-function(Y,cat,digits=4){
 cat1<-as.numeric(as.factor(cat))
 p.a<-ifelse(Y>0,1,0)
 eval<-matrix(nrow=ncol(Y),ncol=max(cat1))
     for(i in 1:max(cat1)){
      sub<-as.matrix(p.a[cat1 == i,])
      if(ncol(sub)>1)eval[,i]<-apply(sub,2,sum)
      if(ncol(sub)==1)eval[,i]<-sub
	}
 esum<-apply(eval,1,sum)

	
  fid<-matrix(0,ncol=ncol(eval),nrow=nrow(eval),
  dimnames = list(colnames(Y),levels(as.factor(cat))))
         for(i in 1:ncol(eval)){
         fid[,i]<-round(eval[,i]/esum,digits)}
                  
 result<-list()
 result$fidelity<-fid
 result
}  