polar.ord<-function(data,index="steinhaus",endpoint=c("BC.original","PC_ORD.original","var.reg"), get.resid.dist =FALSE){
  D<-as.matrix(as.dist(get.dist(data,index),upper=TRUE,diag=TRUE)) 
  SStot<-sum(get.dist(data,index)^2)
   
   all.pairs<-function(r){
     list(first=rep(1:r,rep(r,r))[lower.tri(diag(r))],
     second=rep(1:r,r)[lower.tri(diag(r))])
           }
	
  pairw<-all.pairs(ncol(D))

   get.Dmat<-function(unst.mat){
      Dmat<-matrix(0,ncol=nrow(D),nrow=nrow(D))
      for(i in 1: nrow(mat1)){
         Dmat[unst.mat[,1][i],][unst.mat[,2][i]]<-unst.mat[,3][i]
         Dmat[unst.mat[,2][i],][unst.mat[,1][i]]<-unst.mat[,3][i]
          }
      Dmat	
          }

if(endpoint == "BC.original"){
   get.endp<-function(mat,RD,dim=1){
     endp<-mat[mat[,3]==max(RD),]
if(!is.null(nrow(endp))){#more than 1 max 
     A<-as.numeric(endp[1,][1])
     B<-as.numeric(endp[1,][2])}
if(is.null(nrow(endp))){
     A<-as.numeric(endp[1])
     B<-as.numeric(endp[2])}
     C<-seq(1:nrow(D))[seq(1:nrow(D))!=B&seq(1:nrow(D))!=A]
     res<-list()
     res$A<-A
     res$B<-B
     res$C<-C
     res
           }}

else if(endpoint == "PC_ORD.original"){
    get.endp<-function(mat,RD,dim=1){
    if (dim==1){ 
    endD<-get.Dmat(mat)
     endV<-apply(endD,2,sum)
     A<-as.numeric(which(endV==max(endV)))[1]
     B<-as.numeric(which(endD[,A]==max(endD[,A])))[1]}
     if (dim>1){
     endp<-mat[mat[,3]==max(RD),]
if(!is.null(nrow(endp))){#more than 1 max 
     A<-as.numeric(endp[1,][1])
     B<-as.numeric(endp[1,][2])}
if(is.null(nrow(endp))){
     A<-as.numeric(endp[1])
     B<-as.numeric(endp[2])}}
     C<-seq(1:nrow(D))[seq(1:nrow(D))!=B&seq(1:nrow(D))!=A]
     res<-list()
     res$A<-A
     res$B<-B
     res$C<-C
     res
          }}

else if(endpoint == "var.reg"){
   get.endp<-function(mat,RD,dim=1){
     endD<-get.Dmat(mat)
     diag(endD)<-NA
       sum.sq<-function(x){
  SS<-sum((x[!is.na(x)]-mean(x,na.rm=TRUE))^2)
         SS
                          }
     endV<-apply(endD,2,function(x){sum.sq(x)})
     A<-as.numeric(which(endV==max(endV)))[1]
     notA<-seq(1:nrow(endD))[seq(1:nrow(endD))!=A]
     Bmat<-matrix(ncol=1,nrow=nrow(endD)-1)
     diag(endD)<-0

     for(i in 1: (nrow(endD)-1)){
       D1<-endD[,A]
       Bmat[i]<-as.numeric(lm(endD[,notA[i]]~D1)$coefficients[2])
          }
     B<-notA[Bmat==min(Bmat)][1]
     C<-seq(1:nrow(endD))[seq(1:nrow(endD))!=B&seq(1:nrow(endD))!=A]
     res<-list()
     res$A<-A
     res$B<-B
     res$C<-C
     res
          }}

## Note "var.reg" does not give the same results as the PC-ORD when it is using the variance-regression method.

get.scores<-function(pairw1,D.AB,A,B,C,dim=1){
     scores1<-matrix(ncol=1,nrow=nrow(D))
     for(i in 2:(nrow(D)-1)){
       scores1[1]<-0
       scores1[ncol(D)]<-D.AB

       if(C[i-1]> A&C[i-1]>B){
       scores1[i]<-(D.AB^2+(pairw1[,3][pairw1[,1]==A&pairw1[,2]==C[i-1]]^2)-(pairw1[,3][pairw1[,1]==B&pairw1[,2]==C[i-1]]^2))/(2* D.AB)}

       else if(C[i-1] < A&C[i-1]>B){
       scores1[i]<-(D.AB^2+(pairw1[,3][pairw1[,2]==A&pairw1[,1]==C[i-1]])^2-(pairw1[,3][pairw1[,1]==B&pairw1[,2]==C[i-1]]^2))/(2* D.AB)}

       else if(C[i-1] < A&C[i-1]<B){
       scores1[i]<-(D.AB^2+(pairw1[,3][pairw1[,2]==A&pairw1[,1]==C[i-1]])^2-(pairw1[,3][pairw1[,2]==B&pairw1[,1]==C[i-1]]^2))/(2* D.AB)}
 
       else if(C[i-1] > A&C[i-1]<B){
       scores1[i]<-(D.AB^2+(pairw1[,3][pairw1[,1]==A&pairw1[,2]==C[i-1]])^2-(pairw1[,3][pairw1[,2]==B&pairw1[,1]==C[i-1]]^2))/(2* D.AB)}
           }
     sites<-c(A,C,B)
     scores1<-as.matrix(scores1[order(sites),])
     colnames(scores1)<-paste("Dim",dim,"Scores")
     scores1 
           }

####################### Axis 1 ##########################

Dist1<-matrix(ncol=1,nrow=(ncol(D)^2-ncol(D))/2)
for(i in 1:(ncol(D)^2-ncol(D))/2){
Dist1[i]<-D[pairw$second[i],(pairw$first[i])]}
mat1<-cbind(pairw$first,pairw$second,Dist1)

A<-get.endp(mat1,RD=D)$A
B<-get.endp(mat1,RD=D)$B
C<-get.endp(mat1,RD=D)$C
if (A<B){
D.AB<-mat1[,3][mat1[,1]==A& mat1[,2]==B]}
if (A>B){
D.AB<-mat1[,3][mat1[,2]==A& mat1[,1]==B]}
scores1<-get.scores(mat1,D.AB=D.AB,A,B,C,dim=1)
end1<-c(rownames(as.data.frame(data))[A],rownames(as.data.frame(data))[B])

####################### Axis 2 ##########################

Dist2<-matrix(ncol=1,nrow=(ncol(D)^2-ncol(D))/2)
for(i in 1:(ncol(D)^2-ncol(D))/2){
Dist2[i]<-as.matrix(scores1[pairw$first[i]]-scores1[pairw$second[i]])^2}
Dist2.1<-cbind(pairw$first,pairw$second,sqrt(ifelse(mat1[,3]^2- Dist2<0,0,mat1[,3]^2-Dist2)))

A<-get.endp(Dist2.1,RD=Dist2.1[,3],dim=2)$A
B<-get.endp(Dist2.1,RD=Dist2.1[,3],dim=2)$B
C<-get.endp(Dist2.1,RD=Dist2.1[,3],dim=2)$C
if (A<B){
D.AB<- Dist2.1[,3][Dist2.1[,1]==A& Dist2.1[,2]==B]}
if (A>B){
D.AB<- Dist2.1[,3][Dist2.1[,2]==A& Dist2.1[,1]==B]}

scores2<-get.scores(pairw1=Dist2.1,D.AB,A=A,B=B,C=C,dim=2)
end2<- c(rownames(as.data.frame(data))[A],rownames(as.data.frame(data))[B])

####################### Axis 3 ##########################

Dist3<-matrix(ncol=1,nrow=(ncol(D)^2-ncol(D))/2)
for(i in 1:(ncol(D)^2-ncol(D))/2){
Dist3[i]<-as.matrix(scores2[pairw$first[i]]-scores2[pairw$second[i]])^2}
Dist3.1<-Dist3+Dist2
Dist3.2<-cbind(pairw$first,pairw$second,sqrt(ifelse(mat1[,3]^2-Dist3.1<0,0,mat1[,3]^2-Dist3.1)))

A<-get.endp(Dist3.2,Dist3.2[,3],dim=3)$A
B<-get.endp(Dist3.2,Dist3.2[,3],dim=3)$B
C<-get.endp(Dist3.2,Dist3.2[,3],dim=3)$C

if (A<B){
D.AB<-Dist3.2[,3][Dist3.2[,1]==A&Dist3.2[,2]==B]}
if (A>B){
D.AB<-Dist3.2[,3][Dist3.2[,2]==A&Dist3.2[,1]==B]}
scores3<-get.scores(Dist3.2,D.AB,A,B,C,dim=3)

Dist4<-matrix(ncol=1,nrow=(ncol(D)^2-ncol(D))/2)
for(i in 1:(ncol(D)^2-ncol(D))/2){
Dist4[i]<-as.matrix(scores3[pairw$first[i]]-scores3[pairw$second[i]])^2}
Dist4.1<-Dist4+Dist3+Dist2
Dist4.2<-sqrt(ifelse(mat1[,3]^2-Dist4.1<0,0,mat1[,3]^2-Dist4.1))
end3<- c(rownames(as.data.frame(data))[A],rownames(as.data.frame(data))[B])

#################### Scores and Summary Stats ####################

SS.resid<-matrix(ncol=1,nrow=3,data=c(sum(Dist2.1[,3]^2),sum(Dist3.2[,3]^2),sum(Dist4.2^2)),dimnames = list(c("Dim1","Dim2","Dim3"), c("SS.residuals"))) 

Var.exp<-
matrix(ncol=1,nrow=3,data=c(100*(1-(SS.resid[1]/SStot)),100*(1-(SS.resid[2]/SStot)),100*(1-(SS.resid[3]/SStot))),dimnames = list(c("Dim1","Dim2","Dim3"), c("% Var explained"))) 

Scores<-matrix(nrow=nrow(data),ncol=3,data=cbind(scores1,scores2,scores3),dimnames = list(rownames(data), c("Dim1","Dim2","Dim3"))) 

orig.dist<-as.dist(D)
residual.dist1<-as.dist(get.Dmat(Dist2.1))
residual.dist2<-as.dist(get.Dmat(Dist3.2))
endpoints<-as.data.frame(matrix(ncol=2,nrow=3,data=rbind(end1,end2,end3),dimnames = list(c("Dim1","Dim2","Dim3"),c("1","2"))))
res<-list()
if (get.resid.dist == TRUE){
res$Resid.dist<-list(orig.dist=orig.dist, axis2=residual.dist1,axis3=residual.dist2)}
res$SS.resid<-SS.resid
res$Var.exp<-Var.exp
res$Endpoints<-endpoints
res$Scores<-Scores
res
}
