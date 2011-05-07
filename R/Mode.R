Mode<-function(x){
x<-na.omit(x)
step1<-as.factor(x)
m<-summary(step1)
m1<-which(m==max(m))
ifelse(nlevels(step1)==1, "No mode", as.numeric(names(m1)))}
