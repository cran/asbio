 see.nbin.tck<-function () 
{
require(tcltk) || stop("tcltk support is absent")
    if (!exists("slider.env")) 
        slider.env <- NULL; suppressWarnings(rm(slider.env)); slider.env <<- new.env()# Dummy to trick R CMD check 

    r <- 1
    p <- 0.5
    assign("r", tclVar(r), envir= slider.env)  
    assign("p", tclVar(p), envir= slider.env)           
    xmin <- 0
    assign("xmin", tclVar(xmin), envir= slider.env)
    xmax <- 20
    assign("xmax", tclVar(xmax), envir= slider.env)
   
     norm.refresh <- function(...) {
        r <- as.numeric(evalq(tclvalue(r), envir= slider.env))
        p <- as.numeric(evalq(tclvalue(p), envir= slider.env))
        xmin <- as.numeric(evalq(tclvalue(xmin), envir= slider.env))
        xmax <- as.numeric(evalq(tclvalue(xmax), envir= slider.env))
        xx <- seq(xmin, xmax)
        yy <- dnbinom(xx,r,p)
   
        plot(xx, yy, type = "h", ylab = "f(x)", xlab = "x")
        points(xx, yy, pch =19)
        dev.flush()
                    }
    
    m <- tktoplevel()
    tkwm.title(m, "Visualizing the Negative Binomial Distribution")
    tkpack(tklabel(m,text="      Visualizing the Negative Binomial Distribution      "))
    tkwm.geometry(m, "+0+0")
    
     tkpack(fr <- tkframe(m), side = "top")
    tkpack(tklabel(fr, text = "r", font=c("Helvetica","9","italic"),width = "20"), 
        side = "right")
    tkpack(sc <- tkscale(fr, command = norm.refresh, from = 1, 
        to = 20, orient = "horiz", resolution = 1, showvalue = TRUE), 
        side = "left")
    assign("sc", sc, envir= slider.env)
    evalq(tkconfigure(sc, variable = r), envir= slider.env)  
    
    tkpack(fr <- tkframe(m), side = "top")
    tkpack(tklabel(fr, text = "p", font=c("Helvetica","9","italic"),width = "20"), 
        side = "right")
    tkpack(sc <- tkscale(fr, command = norm.refresh, from = 0.01, 
        to = 1, orient = "horiz", resolution = 0.01, showvalue = TRUE), 
        side = "left")
    assign("sc", sc, envir= slider.env)
    evalq(tkconfigure(sc, variable = p), envir= slider.env)  

 tkpack(fr <- tkframe(m), side = "top")
    tkpack(tklabel(fr, text = "Xmin:", width = 6), side = "left")
    tkpack(e <- tkentry(fr, width = 8), side = "left")
    assign("e", e, envir= slider.env)
    evalq(tkconfigure(e, textvariable = xmin), envir= slider.env)
    tkpack(tklabel(fr, text = "Xmax:", width = 6), side = "left")
    tkpack(e <- tkentry(fr, width = 8), side = "left")
    assign("e", e, envir= slider.env)
    evalq(tkconfigure(e, textvariable = xmax), envir= slider.env)
    tkpack(tkbutton(m, text = "Refresh", command = norm.refresh), 
        side = "left")
    tkpack(tkbutton(m, text = "Exit", command = function() tkdestroy(m)), 
        side = "right")
}

 
 see.nbincdf.tck<-function () 
{
require(tcltk) || stop("tcltk support is absent")
    if (!exists("slider.env")) 
        slider.env <- NULL; suppressWarnings(rm(slider.env)); slider.env <<- new.env()# Dummy to trick R CMD check 

    r <- 1
    p <- 0.5
    assign("r", tclVar(r), envir= slider.env)  
    assign("p", tclVar(p), envir= slider.env)           
    xmin <- 0
    assign("xmin", tclVar(xmin), envir= slider.env)
    xmax <- 20
    assign("xmax", tclVar(xmax), envir= slider.env)
       
    dev.new(height=4,width=8);par(mfrow=c(1,2),mar=c(4.4,4.5,1,0.5),cex=.85);layout(matrix(c(1,2), 1, 2, byrow = TRUE))   
    norm.refresh <- function(...) {
        r <- as.numeric(evalq(tclvalue(r), envir= slider.env))
        p <- as.numeric(evalq(tclvalue(p), envir= slider.env))
        xmin <- as.numeric(evalq(tclvalue(xmin), envir= slider.env))
        xmax <- as.numeric(evalq(tclvalue(xmax), envir= slider.env))
        xx <- seq(xmin, xmax)
        yy <- dnbinom(xx,r,p)
        y1 <- pnbinom(xx,r,p)
        plot(xx, yy, type = "h", ylab = "f(x)", xlab = "x")
        points(xx, yy, pch =19)
        plot(xx, y1, type = "n", ylab = "F(x)", xlab = "x")
        points(xx, y1, pch =19)
        segments(xx, y1,xx+1,y1)
        points(xx+1, y1, pch =1)
        dev.flush()
                    }
    m <- tktoplevel()
    tkwm.title(m, "Visualizing the Negative Binomial Distribution")
    tkpack(tklabel(m,text="      Visualizing the Negative Binomial Distribution      "))
    tkwm.geometry(m, "+0+0")
    
    tkpack(fr <- tkframe(m), side = "top")
    tkpack(tklabel(fr, text = "r", font=c("Helvetica","9","italic"),width = "20"), 
        side = "right")
    tkpack(sc <- tkscale(fr, command = norm.refresh, from = 1, 
        to = 20, orient = "horiz", resolution = 1, showvalue = TRUE), 
        side = "left")
    assign("sc", sc, envir= slider.env)
    evalq(tkconfigure(sc, variable = r), envir= slider.env)  
    
    tkpack(fr <- tkframe(m), side = "top")
    tkpack(tklabel(fr, text = "p", font=c("Helvetica","9","italic"),width = "20"), 
        side = "right")
    tkpack(sc <- tkscale(fr, command = norm.refresh, from = 0.01, 
        to = 1, orient = "horiz", resolution = 0.01, showvalue = TRUE), 
        side = "left")
    assign("sc", sc, envir= slider.env)
    evalq(tkconfigure(sc, variable = p), envir= slider.env)  

    tkpack(fr <- tkframe(m), side = "top")
    tkpack(tklabel(fr, text = "Xmin:", width = 6), side = "left")
    tkpack(e <- tkentry(fr, width = 8), side = "left")
    assign("e", e, envir= slider.env)
    evalq(tkconfigure(e, textvariable = xmin), envir= slider.env)
    tkpack(tklabel(fr, text = "Xmax:", width = 6), side = "left")
    tkpack(e <- tkentry(fr, width = 8), side = "left")
    assign("e", e, envir= slider.env)
    evalq(tkconfigure(e, textvariable = xmax), envir= slider.env)
    tkpack(tkbutton(m, text = "Refresh", command = norm.refresh), 
        side = "left")
    tkpack(tkbutton(m, text = "Exit", command = function() tkdestroy(m)), 
        side = "right")
}
 