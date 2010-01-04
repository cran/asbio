radiation.heatl <-
function(slope,aspect,lat){

asp.wrap.rad<-sapply(aspect,function(x){(-1*abs(x-180))+180})

asp.wrap.hl<-sapply(aspect,function(x){abs(180-abs(x-225))})

rad.lat<-(lat/180)*pi

rad.asp<-sapply(asp.wrap.rad,function(x){(x/180)*pi})

hl.asp<-sapply(asp.wrap.hl,function(x){(x/180)*pi})

rad.slope<-sapply(slope,function(x){(x/180)*pi})

rad<-matrix(nrow=length(slope),ncol=1)

hl<-matrix(nrow=length(slope),ncol=1)

for(i in 1:length(slope)){

rad[i]<-0.339+0.808*(cos(rad.lat)*cos(rad.slope[i]))-0.196*(sin(rad.lat)*sin(rad.slope[i]))-0.482*(cos(rad.asp[i])*sin(rad.slope[i]))

hl[i]<-0.339+0.808*(cos(rad.lat)*cos(rad.slope[i]))-0.196*(sin(rad.lat)*sin(rad.slope[i]))-0.482*(cos(hl.asp[i])*sin(rad.slope[i]))

}

result<-list()

result$radiation<-rad

result$heat.load<-hl

result

}

