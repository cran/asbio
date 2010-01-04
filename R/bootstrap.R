bootstrap<-function(data,statistic,R,matrix=FALSE){
if(matrix==TRUE)n<- nrow(data)
if(matrix==FALSE)n<- nrow(as.matrix(data))
boot.stat <-matrix(ncol=1,nrow=R)
if(matrix==TRUE){
for(i in 1:R){
boot.stat[i]<-statistic(data[sample(seq(1,n),replace=TRUE),])}}
if(matrix==FALSE){
for(i in 1:R){
boot.stat[i]<-statistic(data[sample(seq(1,n),replace=TRUE)])}}
boot.stat
}