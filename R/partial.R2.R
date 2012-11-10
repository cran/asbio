partial.R2<-function(nested.lm, ref.lm){
a <- anova(nested.lm)
b <- anova(ref.lm) 
SSE.wo <- tail(a$"Sum Sq")
SSE.with <- tail(b$"Sum Sq")
P.R2<-(SSE.wo-SSE.with)/SSE.wo
P.R2
}


