veg.table<-function(Y,cat,min.const=.3,method="aho",cover.only=FALSE)
{
      ####cover of species within groups
	cover <- function(Y,cat) 
	{cat<-as.matrix(cat)
   maxf<-as.matrix(as.numeric(as.factor(cat)))
    	cat<-as.factor(cat)
        cvr<-matrix(0,nrow=ncol(Y),ncol=max(maxf), dimnames = list(c(colnames(Y)), c(levels(cat))))
        for (i in levels(cat)) {
        tmp <- Y[cat==i,]
        cvr[,i]<-apply(tmp,2,mean)
                     }
        as.matrix(cvr)
       }
  cvr1<-cover(Y,cat)
  con1<-const(Y,cat,digits=4)
  con2<-as.matrix(apply(con1,1,function(x){max(x)>=min.const}))
  if(all(con2==FALSE))stop("No data; Decrease min.val")
  cvr2<-cvr1[con2==TRUE,]
  con3<-con1[con2==TRUE,]
  con2.1<-as.matrix(apply(con1,1,function(x){max(x)<min.const}))
  if(all(con2.1==FALSE))cvr2.1=NULL
  if(any(con2.1==TRUE)){
  cvr2.1<-cvr1[con2.1==TRUE,]
  con3.1<-con1[con2.1==TRUE,]}

      ####constancy matrix
       diag.const<-function(con)
      {con1<-apply(con,2,function(x){replace(x,x==0,".")})
       con2<-apply(con1,2,function(x){replace(x,x>0&x<=.1,"+")})
       con3<-apply(con2,2,function(x){replace(x,x>0.1&x<=0.2,1.1)})
       con4<-apply(con3,2,function(x){replace(x,x>0.2&x<=0.3,2)})
       con5<-apply(con4,2,function(x){replace(x,x>0.3&x<=0.4,3)})
       con6<-apply(con5,2,function(x){replace(x,x>0.4&x<=0.5,4)})
       con7<-apply(con6,2,function(x){replace(x,x>0.5&x<=0.6,5)})
       con8<-apply(con7,2,function(x){replace(x,x>0.6&x<=0.7,6)})
       con9<-apply(con8,2,function(x){replace(x,x>0.7&x<=0.8,7)})
       con10<-apply(con9,2,function(x){replace(x,x>0.8&x<=0.9,8)})
       con11<-apply(con10,2,function(x){replace(x,x>0.9&x<=1.0,9)})
       con12<-apply(con11,2,function(x){replace(x,x==1.1,1)})
       constancy<-as.data.frame(con12)
       constancy
}
####Kenscale
      diag.cov<-function(cv,method){
if(method == "aho")	
      {cv7<-apply(cv,2,function(x){replace(x,x>25,1200)})
       cv6<-apply(cv7,2,function(x){replace(x,x>5&x<=25,1180)})
       cv5<-apply(cv6,2,function(x){replace(x,x>2&x<=5.0,1160)})
       cv4<-apply(cv5,2,function(x){replace(x,x>1&x<=2,1140)})
       cv3<-apply(cv4,2,function(x){replace(x,x>0.01&x<=1,1120)})
       cv2<-apply(cv3,2,function(x){replace(x,x>0&x<=0.01,1100)})
       cv1<-apply(cv2,2,function(x){replace(x,x==0,".")})
       cv7<-apply(cv1,2,function(x){replace(x,x==1200,"E")})
       cv6<-apply(cv7,2,function(x){replace(x,x==1180,"D")})
       cv5<-apply(cv6,2,function(x){replace(x,x==1160,"C")})
       cv4<-apply(cv5,2,function(x){replace(x,x==1140,"B")})
       cv3<-apply(cv4,2,function(x){replace(x,x==1120,"A")})
       cv2<-apply(cv3,2,function(x){replace(x,x==1100,"+")})
       cover<-as.data.frame(cv2)
      }
####Braun-Blanquet
if (method =="braun")
       {cv7<-apply(cv,2,function(x){replace(x,x>75,1200)})
       cv6<-apply(cv7,2,function(x){replace(x,x>50&x<=75,1180)})
       cv5<-apply(cv6,2,function(x){replace(x,x>25&x<=50,1160)})
       cv4<-apply(cv5,2,function(x){replace(x,x>5&x<=25,1140)})
       cv3<-apply(cv4,2,function(x){replace(x,x>1&x<=5,1120)})
       cv2<-apply(cv3,2,function(x){replace(x,x>0.1&x<=1,1100)})
       cv2.1<-apply(cv2,2,function(x){replace(x,x>0&x<=0.1,1000)})
       cv1<-apply(cv2.1,2,function(x){replace(x,x==0,".")})
       cv7<-apply(cv1,2,function(x){replace(x,x==1200,"5")})
       cv6<-apply(cv7,2,function(x){replace(x,x==1180,"4")})
       cv5<-apply(cv6,2,function(x){replace(x,x==1160,"3")})
       cv4<-apply(cv5,2,function(x){replace(x,x==1140,"2")})
       cv3<-apply(cv4,2,function(x){replace(x,x==1120,"1")})
       cv2<-apply(cv3,2,function(x){replace(x,x==1100,"+")})
       cv1<-apply(cv2,2,function(x){replace(x,x==1000,"r")})
       cover<-as.data.frame(cv1)
       }

####Daubenmire
if (method =="daub")
       {cv7<-apply(cv,2,function(x){replace(x,x>95,1200)})
       cv6<-apply(cv7,2,function(x){replace(x,x>75&x<=95,1180)})
       cv5<-apply(cv6,2,function(x){replace(x,x>50&x<=75,1160)})
       cv4<-apply(cv5,2,function(x){replace(x,x>25&x<=50,1140)})
       cv3<-apply(cv4,2,function(x){replace(x,x>5&x<=25,1120)})
       cv2<-apply(cv3,2,function(x){replace(x,x>0&x<=5,1100)})
       cv1<-apply(cv2,2,function(x){replace(x,x==0,".")})
       cv7<-apply(cv1,2,function(x){replace(x,x==1200,"6")})
       cv6<-apply(cv7,2,function(x){replace(x,x==1180,"5")})
       cv5<-apply(cv6,2,function(x){replace(x,x==1160,"4")})
       cv4<-apply(cv5,2,function(x){replace(x,x==1140,"3")})
       cv3<-apply(cv4,2,function(x){replace(x,x==1120,"2")})
       cv2<-apply(cv3,2,function(x){replace(x,x==1100,"1")})
       cover<-as.data.frame(cv2)
      }
cover
}
  dcn<-diag.const(con3)
  dcv<-diag.cov(cvr2,method)
  if(!is.null(cvr2.1)){
  dcn.1<-diag.const(con3.1)
  dcv.1<-diag.cov(cvr2.1,method)}

  pst<-function(x,y){
	x<-as.matrix(x)
	y<-as.matrix(y)
	m<-matrix(0,nrow=nrow(x),ncol=ncol(x))
	for(i in 1:ncol(x)){
		m[,i]<-as.matrix(paste(x[,i],y[,i],sep=""))
		}
	m<-as.data.frame(m)
	rownames(m)<-rownames(x)
	colnames(m)<-colnames(x)
	m
	}

  result<-list()
  const.cov<-pst(dcn,dcv)
  if(!is.null(cvr2.1)){
  const.cov.other<-pst(dcn.1,dcv.1)}
  if(is.null(cvr2.1)){
  const.cov.other<-"No data"}
if(cover.only==FALSE){
  result$const.cover<-const.cov
  result$const.cover_less.than.min.const<-const.cov.other}
if(cover.only==TRUE){
  result$cover<-as.data.frame(dcv)
  if(is.null(cvr2.1))  result$cover_less.than.min.const<-"No data" else
  result$cover_less.than.min.const<-as.data.frame(dcv.1)
  }
  result
}
