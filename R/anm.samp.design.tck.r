anm.samp.design.tck<-function(){
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
        tkwm.title(tt,"Sampling designs")
        n.entry <- tkentry(tt, textvariable=N)
        int.entry <- tkentry(tt, textvariable=Int)
        iter.entry<-tkentry(tt, textvariable=Iter)
       
                
	done <- tclVar(0)
  
        reset <- function()
        {
            tclvalue(N)<-"20"
            tclvalue(Int)<-"0.5"
            tclvalue(Iter)<-"30"
          }
        reset.but <- tkbutton(tt, text="Reset", command=reset)
        submit.but <- tkbutton(tt, text="Submit",command=function()tclvalue(done)<-1)

        build <- function()
        {
            n <-tclvalue(N)
            interval <-tclvalue(Int) 
            iter <-tclvalue(Iter)
     
           substitute(anm.samp.design(n=as.numeric(n),interval=as.numeric(interval),iter=as.numeric(iter)))
        }
        
        tkgrid(tklabel(tt,text="Sampling designs"),columnspan=2)
        tkgrid(tklabel(tt,text=""))
        tkgrid(tklabel(tt,text="Sample size"), n.entry)
        tkgrid(tklabel(tt,text="Animation interval"),int.entry)
        tkgrid(tklabel(tt,text="Iterations"), iter.entry)
        tkgrid(submit.but, reset.but)
        tkgrid(tklabel(tt,text=""))
        

        tkbind(tt, "<Destroy>", function()tclvalue(done)<-2)

        tkwait.variable(done)

        if(tclvalue(done)=="2") stop("aborted")

        tkdestroy(tt)
        cmd <- build()
        eval.parent(cmd)
    }                            
      N<-tclVar("20")
      Iter<-tclVar("30")
      Int<-tclVar("0.5")
      dialog.sd()
})
}
