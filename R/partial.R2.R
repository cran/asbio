partial.R2<-function(lm.without,lm.with){
a<-anova(lm.without)
b<-anova(lm.with) 
SSE.wo<-a$"Sum Sq"[length(a$"Sum Sq")]
SSE.with<-b$"Sum Sq"[length(b$"Sum Sq")]
P.R2<-(SSE.wo-SSE.with)/SSE.wo
P.R2
}
