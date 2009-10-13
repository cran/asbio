km<-function(s,d,c,var = c("O","G"),conf=.95){
r<- s-d-c
step <- (1-(d/r))## Eq.1
s.hat<-matrix(nrow=length(r),ncol=1)
for(i in 1:length(r)){
s.hat[1]<-step[1]*step[2]
s.hat[i+1]<-s.hat[i]*step[i+1]}
s.hat<-s.hat[-(length(r)+1)]
Green.Sum<-matrix(nrow=length(r),ncol=1)
Green.Var<-matrix(nrow=length(r),ncol=1)##Green(1926)
for(i in 1: length(r)){
Green.Var[1]<-0
Green.Sum[1]<-d[1]/(r[1]*(r[1]-d[1]))
Green.Sum[i+1]<-d[i+1]/(r[i+1]*(r[i+1]-d[i+1]))+Green.Sum[i]
Green.Var[i+1]<-s.hat[i+1]^2*Green.Sum[i+1]
Green.Var<-Green.Var[-(length(r)+1)]
}
Oakes.Var<-(s.hat^2*(1-s.hat)/r)
if(var=="O"){
C.L<-s.hat-qnorm(1-((1-conf)/2))*((Oakes.Var)^.5)
C.U<-s.hat+ qnorm(1-((1-conf)/2))*((Oakes.Var)^.5)}
if(var=="G"){
C.L<-s.hat- qnorm(1-((1-conf)/2))*((Green.Var)^.5)
C.U<-s.hat+ qnorm(1-((1-conf)/2))*((Green.Var)^.5)}
plot(seq(1,length(r)),s.hat,ylab="Probability of survivorship from 1st age class",xlab="Age class")
lines(seq(1,length(r)),C.L,lty=2)
lines(seq(1,length(r)),C.U,lty=2)
res<-list()
res$s.hat<-s.hat
res$Greenwood.Var<-Green.Var
res$Oakes.Var<-Oakes.Var
res$CI<-cbind(C.L,C.U)
res
}

