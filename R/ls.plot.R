ls.plot<-function(X, possibilities, parameter="mu", est.lty=2, est.col=2,...){
sq.res<-sapply(possibilities, function(x){sum((x-X)^2)})
plot(possibilities,sq.res,type="l",ylab="Sum of squares",...)
abline(v=possibilities[sq.res==min(sq.res)],lty=est.lty,col=est.col)
}
