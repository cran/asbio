print.ci<-function(x,digits= max(3, getOption("digits") - 3), ...){
cat("\n")
cat(x$head,"\n")
rq<-structure(x$ci,names=x$ends)
print(rq,digits=digits)
cat("\n")
invisible(x)
}