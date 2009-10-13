Mode<-function(x){
step1<-as.factor(x)
m<-summary(step1)
m1<-which(as.numeric(m)==max(m))
mode.1<-ifelse(nlevels(step1)==1, "No mode",x[m1])
mode.1
}
