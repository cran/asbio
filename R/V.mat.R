V.mat<-function(Y,X){
n.j<-as.matrix(summary(factor(X)))
p<-ncol(Y)
g<-nlevels(factor(X))
n<-0
for(i in 1){
for(j in 2:g){
m<-var(Y[X==i,])*(n.j[i]-1)+n
n<-var(Y[X==j,])*(n.j[j]-1)+m
}}
V<-n*1/(sum(n.j)-g)
V
}