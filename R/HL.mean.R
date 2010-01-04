HL.mean<-function(x){
d<-outer(x,x,'+')/2
sus<-d[lower.tri(d,diag=FALSE)] 
res<-list(HL.mean=median(sus))
res} 
