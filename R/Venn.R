Venn<-function(A,B,AandB=0,labA="A",labB="B"){
if(A>1|B>1|AandB>1|A+B-AandB>1|A<0|B<0|AandB<0){
stop("Violation of probability rules!")
}
if(AandB>A|AandB>B){
stop("Violation of probability rules!")
}
require(plotrix)
if(A+B==1&AandB==0){
S<-plot(seq(0,1),seq(0,1),type="n",xaxt="n",yaxt="n",xlab="",ylab="",bty="n")
rect(c(0,A),c(0,0), c(A,1),c(1,1),col=c(rgb(0.7,0.7,0.7,0.8),rgb(0.3,0.3,0.3,0.8)))
text(A/2,.5,paste("P(",bquote(.(labA))," = ",bquote(.(A)),")"),cex=.95)
text(A+((1-A)/2),.5,paste("P(",bquote(.(labB))," = ",bquote(.(B)),")"),cex=.95)
}

if(A+B!=1&AandB==0){
S<-plot(seq(0,2),seq(0,2),type="n",xaxt="n",yaxt="n",xlab="",ylab="",bty="n")
r.A<-sqrt(A/pi)
r.B<-sqrt(B/pi)
draw.circle(0.5,1,r=r.A,col=rgb(blue=0.7,red=0.7,green=0.7,alpha=.8))
draw.circle(1.25,1,r=r.B,col=rgb(blue=0.3,red=0.3,green=0.3,alpha=.8))
text(0.5,1,paste("P(",bquote(.(labA))," = ",bquote(.(A)),")"),cex=.95)
text(1.25,1,paste("P(",bquote(.(labB))," = ",bquote(.(B)),")"),cex=.95)
rect(0.5-sqrt(1/pi),1-sqrt(1/pi),1.25+sqrt(1/pi),1+sqrt(1/pi))
}

if(A+B!=1&AandB!=0){
S<-plot(seq(-1,1),seq(-1,1),type="n",xaxt="n",yaxt="n",xlab="",ylab="",bty="n")
r.A<-sqrt(A/pi)
r.B<-sqrt(B/pi)
r.diff<-r.A-r.B
d<-2*((1-AandB)*r.A)-r.diff
draw.circle(-.5,0,r=r.A,col=rgb(blue=0.7,red=0.7,green=0.7,alpha=.8))
draw.circle(d-.5,0,r=r.B,col=rgb(blue=0.3,red=0.3,green=0.3,alpha=.8))
text(-.5,0,paste("P(A = ",bquote(.(A)),")"),cex=.95)
text(d-.5,0,paste("P(B = ",bquote(.(B)),")"),cex=.95)
x<-((d+r.diff)/2)-.5
arrows(x,.6,x,0,length=.05)
text(x,.65,substitute(paste("P(A",intersect(),"B)")==list(x),list(x=AandB)),cex=.8)
rect(-0.5-sqrt(1/pi),sqrt(1/pi),(d-.5)+sqrt(1/pi),-sqrt(1/pi))
}
}
