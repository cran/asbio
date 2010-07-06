loglik.tck<-function(){
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
    dialog.ll <- function(){
        tt <- tktoplevel()
        tkwm.title(tt,"Log-likelihood")
        custom.ent<-tkentry(tt, textvariable=Cust)
        X.entry <- tkentry(tt, textvariable=X)
                
	Norm.par<-tclVar("mu")
  done <- tclVar(0)
  Dist<- tclVar("norm")

        reset <- function()
        {
            tclvalue(Cust)<-"NULL"
            tclvalue(X)<-""
            tclvalue(Dist)<-"norm"
            tclvalue(Norm.Par)<-"mu"
        }
        reset.but <- tkbutton(tt, text="Reset", command=reset)
        submit.but <- tkbutton(tt, text="Submit",
                               command=function()tclvalue(done)<-1)

        build <- function()
        {
            func <-parse(text=tclvalue(Cust))[[1]]
            X  <- parse(text=tclvalue(X))[[1]]
            dist  <- tclvalue(Dist)
            parameter  <- tclvalue(Norm.Par)
                        
           substitute(loglik.plot(X=X,dist=dist,parameter=parameter, func=func))
        }
        alt.rbuts <- tkframe(tt)
        alt.rbuts1 <- tkframe(tt)

        tkpack(tklabel(alt.rbuts, text="pdf"))
        for ( i in c("norm","exp","poi","bin","custom")){
            tmp <- tkradiobutton(alt.rbuts, text=i, variable=Dist, value=i)
            tkpack(tmp,anchor="w")
        }
        
        tkpack(tklabel(alt.rbuts1, text="Norm parameter"))
        for ( i in c("mu","sigma.sq")){
            tmp <- tkradiobutton(alt.rbuts1, text=i, variable=Norm.Par, value=i)
            tkpack(tmp,anchor="w")
        }
        

        tkgrid(tklabel(tt,text="Log-likelihood"),columnspan=2)
        tkgrid(tklabel(tt,text="Data"), X.entry)
        tkgrid(tklabel(tt,text="Custom function"), custom.ent)
        tkgrid(alt.rbuts, alt.rbuts1)
        tkgrid(submit.but, reset.but)

        if (tclvalue(Cust)=="") tclvalue(Cust)<-"NULL"

        tkbind(tt, "<Destroy>", function()tclvalue(done)<-2)

        tkwait.variable(done)

        if(tclvalue(done)=="2") stop("aborted")

        tkdestroy(tt)
        cmd <- build()
        eval.parent(cmd)
    }                            
      X<-tclVar("rnorm(100)")
      Dist<-tclVar("norm")
      Norm.Par<-tclVar("mu")
      Cust<-tclVar("NULL")
      dialog.ll()
   
})
}
