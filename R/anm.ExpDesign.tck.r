anm.ExpDesign.tck<-function(){
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
        tkwm.title(tt,"Experimental designs")
      
        int.entry <- tkentry(tt, textvariable=Int, width = 10)
        iter.entry<-tkentry(tt, textvariable=Iter, width = 10)
       
                
	done <- tclVar(0)
  
        reset <- function()
        {
          
            tclvalue(Int)<-"0.5"
            tclvalue(Iter)<-"30"
          }
        reset.but <- tkbutton(tt, text="Reset", command=reset)
        submit.but <- tkbutton(tt, text="Submit",command=function()tclvalue(done)<-1)

        build <- function()
        {
       
            interval <-tclvalue(Int) 
            iter <-tclvalue(Iter)
     
           substitute(anm.ExpDesign(interval=as.numeric(interval),iter=as.numeric(iter)))
        }
        
        tkgrid(tklabel(tt,text="Experimental designs"),columnspan=2)
        tkgrid(tklabel(tt,text=""))
        tkgrid(tklabel(tt,text="Anim. int."),int.entry)
        tkgrid(tklabel(tt,text="Iterations "), iter.entry)
        tkgrid(tklabel(tt,text=""))
        tkgrid(submit.but, reset.but, sticky="w")
   
        

        tkbind(tt, "<Destroy>", function()tclvalue(done)<-2)

        tkwait.variable(done)

        if(tclvalue(done)=="2") stop("aborted")

        tkdestroy(tt)
        cmd <- build()
        eval.parent(cmd)
    }                            

      Iter<-tclVar("30")
      Int<-tclVar("0.5")
      dialog.sd()
})
}
