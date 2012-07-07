see.logis.tck<-function () 
{
require(tcltk) || stop("tcltk support is absent")
    if (!exists("slider.env")) 
        slider.env <- NULL; suppressWarnings(rm(slider.env)); slider.env <<- new.env()# Dummy to trick R CMD check 
    theta <- 1
    beta<-0
    assign("theta", tclVar(theta), envir= slider.env)
    assign("beta", tclVar(beta), envir= slider.env)
    xmin <- -10
    assign("xmin", tclVar(xmin), envir= slider.env)
    xmax <- 10
    assign("xmax", tclVar(xmax), envir= slider.env)
           
   norm.refresh <- function(...) {
        theta <- as.numeric(evalq(tclvalue(theta), envir= slider.env))
        beta <- as.numeric(evalq(tclvalue(beta), envir= slider.env))
        xmin <- as.numeric(evalq(tclvalue(xmin), envir= slider.env))
        xmax <- as.numeric(evalq(tclvalue(xmax), envir= slider.env))
        xx <- seq(xmin, xmax, length = 500)
        yy <- dlogis(xx, beta, theta)
        dev.hold()
        plot(xx, yy, type = "l", xlim = c(xmin, xmax), ylab = "f(x)", xlab = "x")
        dev.flush()          
                    }
    tclServiceMode(TRUE)
    m <- tktoplevel()
    tkwm.title(m, "Visualizing the Logistic Distribution")
    tkpack(tklabel(m,text="      Visualizing the Logistic Distribution      "))
    tkwm.geometry(m, "+0+0")
    tkpack(fr <- tkframe(m), side = "top")
    tkpack(tklabel(fr, text = '\u03b2',font=c("Helvetica","9","italic"), width = "20"), side = "right")
    tkpack(sc <- tkscale(fr, command = norm.refresh, from = -4, 
        to = 4, orient = "horiz", resolution = 0.1, showvalue = TRUE), 
        side = "left")
    assign("sc", sc, envir= slider.env)
    evalq(tkconfigure(sc, variable = beta), envir= slider.env)
    
    tkpack(fr <- tkframe(m), side = "top")
    tkpack(tklabel(fr, text = '\u03b8', font=c("Helvetica","9","italic"), width = "20"), 
        side = "right")
    tkpack(sc <- tkscale(fr, command = norm.refresh, from = 0.1, 
        to = 3, orient = "horiz", resolution = 0.1, showvalue = TRUE), 
        side = "left")
    assign("sc", sc, envir= slider.env)
    evalq(tkconfigure(sc, variable = theta), envir= slider.env)
    
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



see.logiscdf.tck<-function (){ 
require(tcltk) || stop("tcltk support is absent")
    if (!exists("slider.env")) 
        slider.env <- NULL; suppressWarnings(rm(slider.env)); slider.env <<- new.env()# Dummy to trick R CMD check 
    theta <- 1
    beta<-0
    assign("theta", tclVar(theta), envir= slider.env)
    assign("beta", tclVar(beta), envir= slider.env)
    xmin <- -10
    assign("xmin", tclVar(xmin), envir= slider.env)
    xmax <- 10
    assign("xmax", tclVar(xmax), envir= slider.env)
           
   dev.new(height=4,width=8);par(mfrow=c(1,2),mar=c(4.4,4.5,1,0.5),cex=.85);layout(matrix(c(1,2), 1, 2, byrow = TRUE))
   norm.refresh <- function(...) {
        theta <- as.numeric(evalq(tclvalue(theta), envir= slider.env))
        beta <- as.numeric(evalq(tclvalue(beta), envir= slider.env))
        xmin <- as.numeric(evalq(tclvalue(xmin), envir= slider.env))
        xmax <- as.numeric(evalq(tclvalue(xmax), envir= slider.env))
        xx <- seq(xmin, xmax, length = 500)
        yy <- dlogis(xx, beta, theta)
        y1<- plogis(xx, beta, theta)
        dev.hold()
        plot(xx, yy, type = "l", xlim = c(xmin, xmax), ylab = "f(x)", xlab = "x")
        plot(xx, y1, type = "l", xlim = c(xmin, xmax), ylab = "F(x)", xlab = "x")
        dev.flush()          
                    }
    tclServiceMode(TRUE)
    m <- tktoplevel()
  tkwm.title(m, "Visualizing the Logistic Distribution")
    tkpack(tklabel(m,text="      Visualizing the Logistic Distribution      "))
    tkwm.geometry(m, "+0+0")
    tkpack(fr <- tkframe(m), side = "top")
    tkpack(tklabel(fr, text = '\u03b2', font=c("Helvetica","9","italic"), width = "20"), side = "right")
    tkpack(sc <- tkscale(fr, command = norm.refresh, from = -4, 
        to = 4, orient = "horiz", resolution = 0.1, showvalue = TRUE), 
        side = "left")
    assign("sc", sc, envir= slider.env)
    evalq(tkconfigure(sc, variable = beta), envir= slider.env)
    
    tkpack(fr <- tkframe(m), side = "top")
    tkpack(tklabel(fr, text = '\u03b8', font=c("Helvetica","9","italic"), width = "20"), 
        side = "right")
    tkpack(sc <- tkscale(fr, command = norm.refresh, from = 0.1, 
        to = 3, orient = "horiz", resolution = 0.1, showvalue = TRUE), 
        side = "left")
    assign("sc", sc, envir= slider.env)
    evalq(tkconfigure(sc, variable = theta), envir= slider.env)
    
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
                            