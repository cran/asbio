beta.div<-function(x,method=c("whittaker","dbar","half.change"),index="steinhaus"){
if(method=="whittaker")beta=W.beta.div(x)
if(method=="dbar")beta=beta.dbar(x,index)
if(method=="half.change")beta=beta.dbar.halfchange(x,index)
beta
}

W.beta.div<-function(x){
kappa<-mean(apply(x>0,1,sum))
gamma<-sum(apply(x>0,2,sum)>0)
W.beta<-(gamma/kappa)-1
W.beta
}

beta.dbar<-function(x,index="steinhaus"){
dbar<-mean(get.dist(x,index))}

beta.dbar.halfchange<-function(x,index="steinhaus"){
dbar<-mean(get.dist(x,index))
half.change<-log(1-dbar)/log(0.5)}
