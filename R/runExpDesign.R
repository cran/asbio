runExpDesign<-function(method=c("CRD","factorial2by2","factorial2by2by2","nested","RCBD","RIBD","split","latin","pairs")){

L<-length(method)
if(L==2) {par(mfrow=c(2,1),mar=c(0.5,1.5,2,0.5))} else
if(L==3) {par(mfrow=c(3,1),mar=c(0.5,1.5,2,0.5))} else
if(L==4) {par(mfrow=c(2,2),mar=c(0.5,1.5,2,0.5))} else
if(L==5|L==6) {par(mfrow=c(3,2),mar=c(0.5,1.5,2,0.5))} else
if(L==7|L==8|L==9) {par(mfrow=c(3,3),mar=c(0.5,1.5,2,0.5))}


#CRD
if(any(method=="CRD")){
plot(seq(1:10),seq(1:10),xaxt="n",yaxt="n",xlab="",ylab="",type="n",main="CRD")
text(c(3,5.5,8),rep(9,3),c("EU1","EU2","EU3"))
segments(5.5,0,5.5,7.5,col="gray")
segments(0,7.5,11,7.5,col="gray")
text(c(3,8),c(4,4),cex=1.2,c("A","B"))
x.s<-sample(c(3,5.5,8),3,replace=FALSE)
x.e<-sample(c(3,8),3,replace=TRUE)
x.e[3]<-ifelse(x.e[1]==x.e[2]&x.e[1]==3,8,x.e[3])
x.e[3]<-ifelse(x.e[1]==x.e[2]&x.e[1]==8,3,x.e[3])
arrows(x.s,rep(8.5,3),x.e,rep(4.5,3),length=.1)
}

#Factorial 2 by 2
if(any(method=="factorial2by2")){
plot(seq(1:10),seq(1:10),xaxt="n",yaxt="n",xlab="",ylab="",type="n",main="2x2 Factorial Design")
segments(5.5,0,5.5,10.5,col="gray")
segments(0,5.5,10.5,5.5,col="gray")
text(x=c(1.45,6.4,1.45,6.4),y=c(9.75,4.75,4.75,9.75),c("EU1","EU2","EU3","EU4"))
m<-matrix(nrow=4,ncol=2,c(2.75,2.75,7.75,2.75,7.75,7.75,2.75,7.75),byrow=TRUE)
s<-sample(seq(1,4),4,replace=FALSE)
m.s<-m[s,]
text(x=m.s[,1],y=m.s[,2],c(expression(paste(A[1],B[1])),expression(paste(A[2],B[1])),expression(paste(A[1],B[2])),expression(paste(A[2],B[2]))),cex=1.1)
}

#Factorial 2 by 2 by 2
if(any(method=="factorial2by2by2")){
plot(seq(1:10),seq(1:10),xaxt="n",yaxt="n",xlab="",ylab="",type="n",main="2x2x2 Factorial Design")
segments(4,0,4,11,col="gray")
segments(7.25,0,7.25,11,col="gray")
segments(0,4,11,4,col="gray")
segments(0,7.25,11,7.25,col="gray")
text(x=c(rep(c(1.32,4.65,7.92),2),c(1.32,4.65)),y=c(rep(9.9,3),rep(6.8,3),rep(3.55,2)), c("EU1","EU2","EU3","EU4","EU5","EU6","EU7","EU8"))
t<-c(expression(paste(A[1],B[1],C[1])),expression(paste(A[2],B[1],C[1])),expression(paste(A[1],B[2],C[1])),expression(paste(A[2],B[2],C[1])),
expression(paste(A[1],B[1],C[2])),expression(paste(A[2],B[1],C[2])),expression(paste(A[1],B[2],C[2])),expression(paste(A[2],B[2],C[2])))
s<-sample(seq(1,8),8,replace=FALSE)
x<-c(rep(c(2.25,5.75,8.75),2),c(2.25,5.75))
y<-c(8.75,8.75,8.75,5.75,5.75,5.75,2.25,2.25)
text(x,y,t[s])
}

#Nested
if(any(method=="nested")){
plot(seq(1:10),seq(1:10),xaxt="n",yaxt="n",xlab="",ylab="",type="n",main="Nested Design")
x0<-c(3,3,8,8,1.75,1.75,4.25,4.25,6.75,6.75,9.25,9.25)
x1<-c(1.75,4.25,6.75,9.25,1.25,2.25,3.75,4.75,6.25,7.25,8.75,9.75)
y0<-c(7.75,7.75,7.75,7.75,5.5,5.5,5.5,5.5,5.5,5.5,5.5,5.5)
y1<-c(5.5,5.5,5.5,5.5,2.75,2.75,2.75,2.75,2.75,2.75,2.75,2.75)
segments(x0,y0,x1,y1)
symbols(x=c(5.5,5.5,5.5),y=c(7.75,5.5,2.75),rectangles=matrix(ncol=2,nrow=3,data=c(9,9,9,.75,.75,.75)),add=TRUE,
inches=FALSE,fg="white",bg="white")
segments(5.5,0,5.5,10.5,col="gray")
a<-c(expression(A[1]),expression(A[2]))
s<-sample(seq(1,2),2,replace=FALSE)
A<-a[s]
text(x=c(3,8,1.75,4.25,6.75,9.25,1.25,2.25,3.75,4.75,6.25,7.25,8.75,9.75),y=c(7.75,7.75,5.5,5.5,5.5,5.5,2.75,2.75,2.75,2.75,2.75,2.75,2.75,2.75),c(A[1],
A[2],expression(B[1]),expression(B[2]),expression(B[1]),expression(B[2]),expression(C[1]),expression(C[2]),expression(C[3]),expression(C[4]),
expression(C[1]),expression(C[2]),expression(C[3]),expression(C[4])))
}

#RCBD
if(any(method=="RCBD")){
plot(seq(1:10),seq(1:10),xaxt="n",yaxt="n",xlab="",ylab="",type="n",main="RCBD")
text(c(2,4.3,6.7,9.2),rep(9,3),c("EU1","EU2","EU3","EU4"))
segments(c(5.5,0,3,8),c(0,7.5,0,0),c(5.5,11,3,8),c(11,7.5,7.5,7.5),col="gray")
text(c(3,8),c(9.9,9.9),c("Block 1","Block 2"),cex=.9,col="gray")
text(c(2,4.3,6.7,9.2),c(4,4,4,4),cex=1.1,c("A","B","A","B"))
x.s1<-sample(c(2,4.3),2,replace=FALSE)
x.s2<-sample(c(6.7,9.2),2,replace=FALSE)
x.e1<-sample(c(2,4.3),2,replace=FALSE)
x.e2<-sample(c(6.7,9.2),2,replace=FALSE)
arrows(x.s1,rep(8.5,2),x.e1,rep(4.5,2),length=.1)
arrows(x.s2,rep(8.5,2),x.e2,rep(4.5,2),length=.1)
}

#RIBD
if(any(method=="RCBD")){
plot(seq(1:10),seq(1:10),xaxt="n",yaxt="n",xlab="",ylab="",type="n",main="RIBD")
segments(4,0,4,11,col="gray")
segments(7.25,0,7.25,11,col="gray")
segments(0,7.5,11,7.5,col="gray")
segments(c(2.3,5.7,8.8),c(0,0,0),c(2.3,5.7,8.8),c(7.5,7.5,7.5),col="gray")
text(c(2.3,5.7,8.8),c(9.9,9.9,9.9),c("Block 1","Block 2","Block 3"),cex=.9,col="gray")
text(c(1.4,3.15,4.85,6.475,8.025,9.55),c(rep(4,6)),c("A","C","B","C","A","B"))
text(c(1.4,3.15,4.85,6.475,8.025,9.55),c(rep(9,6)),c("EU1","EU2","EU3","EU4","EU5","EU6"))
x.s1<-sample(c(1.4,3.15),2,replace=FALSE)
x.s2<-sample(c(4.85,6.475),2,replace=FALSE)
x.s3<-sample(c(8.025,9.55),2,replace=FALSE)
x.e1<-sample(c(1.4,3.15),2,replace=FALSE)
x.e2<-sample(c(4.85,6.475),2,replace=FALSE)
x.e3<-sample(c(8.025,9.55),2,replace=FALSE)
arrows(x.s1,rep(8.5,2),x.e1,rep(4.5,2),length=.1)
arrows(x.s2,rep(8.5,2),x.e2,rep(4.5,2),length=.1)
arrows(x.s3,rep(8.5,2),x.e3,rep(4.5,2),length=.1)
}


#Split plot
if(any(method=="split")){
plot(seq(1:10),seq(1:10),xaxt="n",yaxt="n",xlab="",ylab="",type="n",main="Split Plot Design")
segments(5.5,0,5.5,10.5,col="gray")
segments(0,5.5,10.5,5.5,col="gray")
symbols(x=c(3,8),y=c(5.5,5.5),rectangles=matrix(nrow=2,ncol=2,c(1.5,1.5,.75,.75)),add=TRUE,
inches=FALSE,fg="white",bg="white")
a<-c(expression(A[1]),expression(A[2]))
s<-sample(seq(1,2),2,replace=FALSE)
text(x=c(3,8),y=c(5.5,5.5),a[s],cex=1.1)
s<-sample(seq(1,2),2,replace=FALSE)
m<-c(expression(B[1]),expression(B[2]))
text(x=c(3,3),y=c(3,8),m[s],cex=1.1)
text(x=c(8,8),y=c(3,8),m[s],cex=1.1)
}

#Latin squares
if(any(method=="latin")){
plot(seq(1:10),seq(1:10),xaxt="n",yaxt="n",xlab="",ylab="",type="n",main="Latin Squares Design")
segments(4,0,4,11,col="gray")
segments(7.25,0,7.25,11,col="gray")
segments(0,4,11,4,col="gray")
segments(0,7.25,11,7.25,col="gray")
m1<-c("A","B","C","C","C","A","C","A","B")
m2<-c("A","C","B","B","A","C","C","B","A")
m3<-c("B","A","C","C","B","A","A","C","B")
m4<-c("C","B","A","A","C","B","B","A","C")
m<-cbind(m1,m2,m3,m4)
s<-sample(seq(1,4),1)
x<-rep(c(2.25,5.75,8.75),3)
y<-c(8.75,8.75,8.75,5.75,5.75,5.75,2.25,2.25,2.25)
text(x,y,m[,s])
}

#Matched Pairs Design
if(any(method=="pairs")){
plot(seq(1:10),seq(1:10),xaxt="n",yaxt="n",xlab="",ylab="",type="n",main="Matched Pairs Design")
text(c(3,5.5,8),rep(9,3),c("EU1","EU2","EU3"),col=c(1,2,3))
segments(5.5,0,5.5,7.5,col="gray")
segments(0,7.5,11,7.5,col="gray")
text(c(3,8),c(4,4),cex=1.2,c("A","B"))
x.s<-sample(c(3,5.5,8),3,replace=FALSE)
x.e<-sample(c(3,8),3,replace=TRUE)
x.e[3]<-ifelse(x.e[1]==x.e[2]&x.e[1]==3,8,x.e[3])
x.e[3]<-ifelse(x.e[1]==x.e[2]&x.e[1]==8,3,x.e[3])
col<-matrix(ncol=1,nrow=3)
for(i in 1:3){
if(x.s[i]==3){col[i]=1} 
if(x.s[i]==5.5){col[i]=2} 
if(x.s[i]==8){col[i]=3}}
arrows(x.s,rep(8.5,3),x.e,rep(4.5,3),length=.1,col=col,lty=col)
x.e2<-matrix(ncol=1,nrow=3)
y.s2<-matrix(ncol=1,nrow=3)
for(i in 1:3){
x.e2[i]<-ifelse(x.e[i]==3,8,3) 
if(col[i]==1){y.s2[i]=3.2}
if(col[i]==2){y.s2[i]=2.6}
if(col[i]==3){y.s2[i]=2.0}}
arrows(x.e,y.s2,x.e2,y.s2,length=.1,col=col,lty=col)
}
}
