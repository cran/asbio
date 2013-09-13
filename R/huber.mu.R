huber.mu<-function(x,c=1.28,iter=20,conv=.1e-06){
mu.hat<-huber.NR(x,c,iter)
for(i in 1:iter){
if(abs(mu.hat[i]-mu.hat[i+1])<=conv) mu.est=mu.hat[i+1]
}
mu.est
}
