samp.dist.snap<-function(parent,parent2 = NULL,stat = mean,stat2 = NULL, stat3 = NULL, stat4 = NULL,s.sizes=c(1,3,6,10,20,50),s.sizes2=NULL,R=1000, xlab = expression(bar(x)),show.SE = TRUE){
L <- length(s.sizes)
if(L>12) {stop("L must be <= 12")} else
if(L==1) {par(mfrow=c(1,1),mar=c(5,4,1,1.5))} else
if(L==2) {par(mfrow=c(2,1),mar=c(5,4,1,1.5))} else
if(L==3) {par(mfrow=c(3,1),mar=c(5,4,1.5))} else
if(L==4) {par(mfrow=c(2,2),mar=c(5,4,1,1.5))} else
if(L==5|L==6) {par(mfrow=c(3,2),mar=c(5,4,2,1.5))} else
if(L==7|L==8|L==9) {par(mfrow=c(3,3),mar=c(5,4,2,1.0))}else
if(L==10|L==11|L==12) {par(mfrow=c(4,3),mar=c(5,4,2,1.0))}

for(i in 1:L){
samp.dist(parent=parent,parent2=parent2,stat=stat,stat2=stat2,stat3=stat3,stat4=stat4,s.size=s.sizes[i],s.size2=ifelse(is.null(s.sizes2),NULL,s.sizes2[i]),R=R,xlab=xlab,show.SE=show.SE,anim=FALSE)
}
} 


samp.dist.snap.tck<-function(){
require(tcltk) || stop("tcltk support is absent")
local({
    have_ttk <- as.character(tcl("info", "tclversion")) >= "8.5"
    if(have_ttk) {
        tkbutton <- ttkbutton
        tkcheckbutton <- ttkcheckbutton
        tkentry <- ttkentry
        tkframe <- ttkframe
        tklabel <- ttklabel
        tkradiobutton <- ttkradiobutton
    }
    tclServiceMode(FALSE)
    dialog.sd <- function(){
        tt <- tktoplevel()
        tkwm.title(tt,"Sampling distributions")
        parent.entry1 <- tkentry(tt, textvariable=Parent1)
        parent.entry2 <- tkentry(tt, textvariable=Parent2)
        s.size.entry<-tkentry(tt, textvariable=SS)
        s.size.entry2<-tkentry(tt, textvariable=SS2)
        stat.entry1<-tkentry(tt, textvariable=Stat1)
        stat.entry2<-tkentry(tt, textvariable=Stat2)
        stat.entry3<-tkentry(tt, textvariable=Stat3)
        stat.entry4<-tkentry(tt, textvariable=Stat4)
        func.entry<-tkentry(tt, textvariable=Func)
        R.entry<-tkentry(tt, textvariable=Rep)
        x.entry<-tkentry(tt, textvariable=Xlab)

  x.lab<- tclVar("Mean")              
	done <- tclVar(0)
  show.SE<-tclVar(0)
        reset <- function()
        {
            tclvalue(Parent1)<-"rexp(100)"
            tclvalue(Parent2)<-"NULL"
            tclvalue(SS)<-""
            tclvalue(SS2)<-""
            tclvalue(Stat1)<-"mean"
            tclvalue(Stat2)<-"NULL"
            tclvalue(Stat3)<-"NULL"
            tclvalue(Stat4)<-"NULL"
            tclvalue(Func)<-"NULL"
            tclvalue(Rep)<-""
            tclvalue(Xlab)<-"expression(Mean)"
            tclvalue(show.SE)<-"0"
                }
        reset.but <- tkbutton(tt, text="Reset", command=reset)
        submit.but <- tkbutton(tt, text="Submit",command=function()tclvalue(done)<-1)


        build <- function()
        {
            parent <-parse(text=tclvalue(Parent1))[[1]]
            parent2 <-parse(text=tclvalue(Parent2))[[1]]
            s.sizes <-parse(text=tclvalue(SS))[[1]]
            stat <-parse(text=tclvalue(Stat1))[[1]]
            s.sizes2 <-tclvalue(SS2)
            stat2 <-parse(text=tclvalue(Stat2))[[1]]
            stat3 <-parse(text=tclvalue(Stat3))[[1]]
            stat4 <-parse(text=tclvalue(Stat4))[[1]]
            R <-tclvalue(Rep)
            x<-parse(text=tclvalue(Xlab))[[1]]
            func<-parse(text=tclvalue(Func))[[1]]
            R <-tclvalue(Rep)
            x<-parse(text=tclvalue(Xlab))[[1]]
            se <- as.logical(tclObj(show.SE))
            substitute(samp.dist.snap(parent=parent,parent2=parent2,s.size=s.sizes,s.sizes2=s.sizes2,stat=stat,stat2=stat2,stat3=stat3,stat4=stat4,R=as.numeric(R),xlab=x,show.SE=se))
             }
        
        se.cbut <- tkcheckbutton(tt, text="Show SE", variable=show.SE)
        tkgrid(tklabel(tt,text="Sampling distribution snapshots"),columnspan=4)
        tkgrid(tklabel(tt,text=""))
        tkgrid(tklabel(tt,text="Parent 1",font=c("Helvetica","9","bold"),foreground="red"), parent.entry1,tklabel(tt,text="Parent 2"), parent.entry2)
        tkgrid(tklabel(tt,text="Sample sizes ",font=c("Helvetica","9","bold"),foreground="red"), s.size.entry,tklabel(tt,text="Sample sizes 2"), s.size.entry2)
        tkgrid(tklabel(tt,text="Stat",font=c("Helvetica","9","bold"),foreground="red"), stat.entry1,tklabel(tt,text="Stat 2"), stat.entry2)
        tkgrid(tklabel(tt,text="Stat 3"), stat.entry3, tklabel(tt,text="Stat 4"), stat.entry4)
        tkgrid(tklabel(tt,text=""))
        tkgrid(tklabel(tt,text=""),tklabel(tt,text="Iterations"), R.entry)
        tkgrid(tklabel(tt,text=""),tklabel(tt,text="Function"), func.entry)
        tkgrid(tklabel(tt,text=""),tklabel(tt,text="X-axis label"), x.entry)
        tkgrid(tklabel(tt,text=""))
        tkgrid(tklabel(tt,text=""),se.cbut,sticky="w")
        tkgrid(tklabel(tt,text=""))
        tkgrid(tklabel(tt,text=""),submit.but, reset.but)
        tkgrid(tklabel(tt,text=""))
        if (tclvalue(x.lab)=="") tclvalue(x.lab)<-"Mean"
        
        tkbind(tt, "<Destroy>", function()tclvalue(done)<-2)

        tkwait.variable(done)

        if(tclvalue(done)=="2") stop("aborted")

        tkdestroy(tt)
        cmd <- build()
        eval.parent(cmd)
    tclServiceMode(TRUE)
    }                            
      Parent1<-tclVar("rexp(100)")
      Parent2<-tclVar("NULL")
      SS<-tclVar("c(1,3,7,10,20,50)")
      SS2<-tclVar("NULL")
      Stat1<-tclVar("mean")
      Stat2<-tclVar("NULL")
      Stat3<-tclVar("NULL")
      Stat4<-tclVar("NULL")
      Func<-tclVar("NULL")
      Rep<-tclVar("1000")
      Xlab<- tclVar("expression(bar(x))")
      dialog.sd()
})
}



###############################################################################################




samp.dist.method.tck<-function(){
require(tcltk) || stop("tcltk support is absent")
local({
    have_ttk <- as.character(tcl("info", "tclversion")) >= "8.5"
    if(have_ttk) {
        tkbutton <- ttkbutton
        tkcheckbutton <- ttkcheckbutton
        tkentry <- ttkentry
        tkframe <- ttkframe
        tklabel <- ttklabel
        tkradiobutton <- ttkradiobutton
    }
tclServiceMode(FALSE)
dialog.ci <- function(){
        tt <- tktoplevel()
        tkwm.title(tt,"Sampling distributions")
        Par1<- tclVar("animation")
        done <- tclVar(0)
    
reset <- function()
        {
        tclvalue(Par)<-"animation"
        } 

distrib<-function(Par){
        if(Par=="animation")samp.dist.tck()
        if(Par=="snapshot")substitute(samp.dist.snap.tck())
        }
  
build <- function()
        {
            Par <-tclvalue(Par1)
            distrib(Par)
        }
               
        
        reset.but <- tkbutton(tt, text="Reset", command=reset)
        submit.but <- tkbutton(tt, text="Submit",
                               command=function()tclvalue(done)<-0)

        
        alt.rbuts <- tkframe(tt)
        tkpack(tklabel(alt.rbuts, text="Depiction method"))
        for ( i in c("animation", "snapshot")){
            tmp <- tkradiobutton(alt.rbuts, text=i, variable=Par1, value=i)
            tkpack(tmp,anchor="w")
        }
        
tkgrid(tklabel(tt,text=""),alt.rbuts)
tkgrid(submit.but,tklabel(tt,text=""),reset.but, sticky="w")

tkbind(tt, "<Destroy>", function()tclvalue(done)<-2)
tkwait.variable(done)
if(tclvalue(done)=="2") stop("aborted")
tkdestroy(tt) 
cmd <- build()
eval.parent(cmd)
    }                            
Par1 <-tclVar("animation")
dialog.ci()
})
}
