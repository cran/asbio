sortid<-function(Y,gradient=1){
	vec<-seq(gradient,-gradient,length.out=ncol(Y))
	row1<-as.matrix(t(apply(Y,1,function(x){x*vec})))
	sumr<-as.matrix(apply(row1,1,sum))
	sort1<-order(sumr,decreasing=TRUE)
	s<-Y[sort1,]
	s
}
