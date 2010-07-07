samp.dist.tck<-function(){
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
    dialog.sd <- function(){
        tt <- tktoplevel()
        tkwm.title(tt,"Sampling distributions")
        parent.entry1 <- tkentry(tt, textvariable=Parent1)
        parent.entry2 <- tkentry(tt, textvariable=Parent2)
        s.size1.entry<-tkentry(tt, textvariable=S.size1)
        s.size2.entry<-tkentry(tt, textvariable=S.size2)
        stat.entry1<-tkentry(tt, textvariable=Stat1)
        stat.entry2<-tkentry(tt, textvariable=Stat2)
        stat.entry3<-tkentry(tt, textvariable=Stat3)
        stat.entry4<-tkentry(tt, textvariable=Stat4)
        func.entry<-tkentry(tt, textvariable=Func)
        R.entry<-tkentry(tt, textvariable=Rep)
        x.entry<-tkentry(tt, textvariable=Xlab)
        int.entry<-tkentry(tt, textvariable=Int)
  x.lab<- tclVar("Mean")              
	done <- tclVar(0)
  fixn<-tclVar(1)
  show.SE<-tclVar(0)
        reset <- function()
        {
            tclvalue(Parent1)<-"rexp(100)"
            tclvalue(Parent2)<-"NULL"
            tclvalue(S.size1)<-""
            tclvalue(S.size2)<-"NULL"
            tclvalue(Stat1)<-"mean"
            tclvalue(Stat2)<-"NULL"
            tclvalue(Stat3)<-"NULL"
            tclvalue(Stat4)<-"NULL"
            tclvalue(Func)<-"NULL"
            tclvalue(Rep)<-""
            tclvalue(Xlab)<-"Mean"
            tclvalue(Int)<-"0.1"
            tclvalue(fixn)<-"1"
            tclvalue(show.SE)<-"0"
        }
        reset.but <- tkbutton(tt, text="Reset", command=reset)
        submit.but <- tkbutton(tt, text="Submit",command=function()tclvalue(done)<-1)

        build <- function()
        {
            parent <-parse(text=tclvalue(Parent1))[[1]]
            parent2 <-parse(text=tclvalue(Parent2))[[1]]
            s.size <-tclvalue(S.size1)
            s.size2 <-tclvalue(S.size2)
            stat <-parse(text=tclvalue(Stat1))[[1]]
            stat2 <-parse(text=tclvalue(Stat2))[[1]]
            stat3 <-parse(text=tclvalue(Stat3))[[1]]
            stat4 <-parse(text=tclvalue(Stat4))[[1]]
            R <-tclvalue(Rep)
            x<-tclvalue(Xlab)
            func<-parse(text=tclvalue(Func))[[1]]
            f <- as.logical(tclObj(fixn))
            se <- as.logical(tclObj(show.SE))
            interval<-tclvalue(Int)
           substitute(samp.dist(parent=parent,parent2=parent2,s.size=as.numeric(s.size),s.size2=as.numeric(s.size2),stat=stat,stat2=stat2,stat3=stat3,stat4=stat4, func=func,R=as.numeric(R),fix.n=f,xlab=x,interval=as.numeric(interval),show.SE=se))
        }
        n.cbut <- tkcheckbutton(tt, text="Fix n", variable=fixn)
        se.cbut <- tkcheckbutton(tt, text="Show SE", variable=show.SE)
        tkgrid(tklabel(tt,text="Sampling distributions"),columnspan=2)
        tkgrid(tklabel(tt,text="Parent 1"), parent.entry1)
        tkgrid(tklabel(tt,text="Parent 2"), parent.entry2)
        tkgrid(tklabel(tt,text="Samp size 1"), s.size1.entry)
        tkgrid(tklabel(tt,text="Samp size 2"), s.size2.entry)
        tkgrid(tklabel(tt,text="Stat"), stat.entry1)
        tkgrid(tklabel(tt,text="Stat 2"), stat.entry2)
        tkgrid(tklabel(tt,text="Stat 3"), stat.entry3)
        tkgrid(tklabel(tt,text="Stat 4"), stat.entry4)
        tkgrid(tklabel(tt,text="Iterations"), R.entry)
        tkgrid(tklabel(tt,text="Function"), func.entry)
        tkgrid(tklabel(tt,text="Interval"), int.entry)
        tkgrid(tklabel(tt,text="X-axis label"), x.entry)
        
        tkgrid(n.cbut,se.cbut)
        tkgrid(submit.but, reset.but)

        if (tclvalue(x.lab)=="") tclvalue(x.lab)<-"Mean"

        tkbind(tt, "<Destroy>", function()tclvalue(done)<-2)

        tkwait.variable(done)

        if(tclvalue(done)=="2") stop("aborted")

        tkdestroy(tt)
        cmd <- build()
        cat("### Command executed via Tk ###\n")
        cat(deparse(build()),sep="\n")
        cat("### -----\n")
        eval.parent(cmd)
    }                            
      Parent1<-tclVar("rexp(100)")
      Parent2<-tclVar("NULL")
      S.size1<-tclVar("10")
      S.size2<-tclVar("10")
      Stat1<-tclVar("mean")
      Stat2<-tclVar("NULL")
      Stat3<-tclVar("NULL")
      Stat4<-tclVar("NULL")
      Func<-tclVar("NULL")
      Rep<-tclVar("1000")
      Xlab<- tclVar("Mean")
      Int<-tclVar("0.1")
      dialog.sd()
   
})
}
