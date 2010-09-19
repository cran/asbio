anm.ls.tck<-function(){
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
        tkwm.title(tt,'Least squares estimation of \u03bc')
        data.entry <- tkentry(tt, textvariable=Data, width = 10)
        int.entry <- tkentry(tt, textvariable=Int, width = 10)
              
                
	done <- tclVar(0)
  
        reset <- function()
        {
            tclvalue(Data)<-"rnorm(30)"
            tclvalue(Int)<-"0.01"
           
          }
        reset.but <- tkbutton(tt, text="Reset", command=reset)
        submit.but <- tkbutton(tt, text="Submit",command=function()tclvalue(done)<-1)

        build <- function()
        {
            X <-n.seq<-parse(text=tclvalue(Data))[[1]]
            interval <-tclvalue(Int) 
            
     
           substitute(anm.ls(X=as.numeric(X),interval=as.numeric(interval)))
        }
        
        tkgrid(tklabel(tt,text='Least squares estimation of \u03bc '),columnspan=2)
        tkgrid(tklabel(tt,text=""))
        tkgrid(tklabel(tt,text="Data"), data.entry)
        tkgrid(tklabel(tt,text="Anim. int."),int.entry)
        tkgrid(tklabel(tt,text=""))
        tkgrid(submit.but, reset.but, sticky = "w")
         

        tkbind(tt, "<Destroy>", function()tclvalue(done)<-2)

        tkwait.variable(done)

        if(tclvalue(done)=="2") stop("aborted")

        tkdestroy(tt)
        cmd <- build()
        eval.parent(cmd)
    }                            
      Data<-tclVar("rnorm(30)")
      Int<-tclVar("0.01")
      dialog.sd()
})
}
