get.dist<-function(data,method,minkowski.power=2){
require(vegan)

chi.metric<-function(data){
col.sum<-apply(data,2,sum)
row.sum<-apply(data,1,sum)
new<-data/row.sum
e<-matrix(nrow=nrow(new),ncol=nrow(new))
for(i in 1:nrow(new)){
for(j in 1:nrow(new)){
e[i,j]<-sqrt(sum(((new[i,]-new[j,])^2)/col.sum))
}}
chi.m<-as.dist(e)
chi.m
}

################################

chi.dist<-function(data){
col.sum<-apply(data,2,sum)
row.sum<-apply(data,1,sum)
new<-data/row.sum
e<-matrix(nrow=nrow(new),ncol=nrow(new))
for(i in 1:nrow(new)){
for(j in 1:nrow(new)){
e[i,j]<-sqrt(sum(data))*sqrt(sum(((new[i,]-new[j,])^2)/col.sum))
}}
chi.d<-as.dist(e)
chi.d
}

#################################

if(method=="matching"||method=="D1"){
mat<-designdist(data, method = "(A+B-2*J)/P",terms="binary",abcd =TRUE,name="matching")}

if(method=="rogers"||method=="D2"){
mat<-designdist(data, method = "(A-J+(2*(B-J))+P-A-B+J)/(J+(2*(A-J))+(2*(B-J))+P-A-B+J)",terms="binary",abcd =TRUE,name="rogers")}

if(method=="jaccard.pa"||method=="D3"){
mat<-designdist(data, method = "(A+B-2*J)/(J+A+B-2*J)",terms="binary",abcd =TRUE,name="jaccard.pa")}

if(method=="sorenson"||method=="D4"){
mat<-designdist(data, method = "(A+B-2*J)/(A+B)",terms="binary",abcd =TRUE,name="sorenson")}

if(method=="kulkczynski.pa"||method=="D5"){
mat<-designdist(data, method = "(A+B-3*J)/(A+B-2*J)",terms="binary",abcd =TRUE,name="kulkczynski.pa")}

if(method=="ochiai"||method=="D6"){
mat<-designdist(data, method = "(sqrt((A)*(B))-J)/sqrt((A)*(B))",terms="binary",abcd =TRUE,name="ochiai")}

if(method=="gower"||method=="D7"){
mat<-vegdist(data,"gower")}

if(method=="steinhaus"||method=="D8"){
mat<-vegdist(data,"bray")}

if(method=="kulkczynski.q"||method=="D9"){
mat<-vegdist(data,"kulc")}

if(method=="jaccard.q"||method=="D10"){
mat<-vegdist(data,"jaccard")}

if(method=="euclidean"||method=="D11"){
mat<-vegdist(data,"euclidean")}

if(method=="rel.euclidean"||method=="D12"){
mat<-designdist(data, method = "sqrt(2*(1-(J/(A*B))))",terms="quadratic",name="rel.euclidean")}

if(method=="mahalanobis"||method=="D13"){
mat<-mahalanobis(t(data), colMeans(t(data)),cov(t(data)))}

if(method=="manhattan"||method=="D14"){
mat<-dist(data,method="manhattan")} 

if(method=="czekanowski"||method=="D15"){
mat<-(1/ncol(data))*dist(data,method="manhattan")} 

if(method=="whittaker"||method=="D16"){
new.data<-data/rowSums(data)
mat<-0.5*(dist(new.data,method="manhattan"))}

if(method=="canberra"||method=="D17"){
mat<-vegdist(data,"canberra")}

if(method=="chi.metric"||method=="D18"){
mat<-chi.metric(data)}

if(method=="chi.dist"||method=="D19"){
mat<-chi.dist(data)}

if(method=="morisita"||method=="D20"){
mat<-vegdist(data,"morisita")}

if(method=="morisita.horn"||method=="D21"){
mat<-vegdist(data,"horn")}

if(method=="minkowski"||method=="D22"){
mat<-dist(data,method="minkowski",p=minkowski.power)}

if(method=="mountford"||method=="D23"){
mat<-vegdist(data,"mountford")}

if(method=="raup.crick"||method=="D24"){
mat<-vegdist(data,"raup")}

if(method=="binomial"||method=="D25"){
mat<-vegdist(data,"binomial")}

if(method=="chao"||method=="D26"){
mat<-vegdist(data,"chao")}
mat
}
