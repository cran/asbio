modlevenes.test<-function(x,groups){
medians<-sapply(split(x,groups),median,na.rm=TRUE)
resid.x<-abs(x-medians[groups])
res<-list()
res$Modified.Levenes.test<-anova(lm(resid.x~groups))
res}