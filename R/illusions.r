illusions<-function(ill.no=1) {
if(ill.no==1){
#Illusion#1
plot(seq(1,10),type="n",xaxt="n",yaxt="n",xlab="",ylab="",bty="n",main="Which line is longer?")
arrows(2,4,8,4,lwd=4)
arrows(8,4,2,4,lwd=4)
arrows(8,6,2,6,angle=140,lwd=4)
arrows(2,6,8,6,angle=140,lwd=4)
}
if(ill.no==2){
#Illusion#2
plot(seq(1,10),type="n",xaxt="n",yaxt="n",xlab="",ylab="",bty="n",main="Are the red lines straight?")
points(5,5,pch=8,cex=47,lwd=8)
segments(5,5,3,0,lwd=8)
segments(5,5,7,0,lwd=8)
segments(5,5,0,3,lwd=8)
segments(5,5,0,7,lwd=8)
segments(5,5,3,10,lwd=8)
segments(5,5,7,10,lwd=8)
segments(5,5,10,3,lwd=8)
segments(5,5,10,7,lwd=8)
segments(c(2,4,6,8),c(1,1,1,1),c(2,4,6,8),c(10,10,10,10),lwd=8,col="red")
}
if(ill.no==3){
#Illusion#3
op<-par(mar = c(0,0,0,0), bg = "black")
pn<-plot.new()
x = seq(0, 1, length = 10)
y = seq(0, 1, length = 10)
abline(v = x, h = y, col = "gray", lwd = 6)
points(rep(x, each = 10), rep(y, 10), col = "white", 
cex = 3, pch = 20)
par(op)
}}
