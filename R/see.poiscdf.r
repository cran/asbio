see.pois.tck<-function () 
{
require(tcltk) || stop("tcltk support is absent")
    if (!exists("slider.env")) 
        slider.env <<- new.env()
    lambda <- 5
    assign("lambda", tclVar(lambda), env = slider.env)
    xmin <- 0
    assign("xmin", tclVar(xmin), env = slider.env)
    xmax <- 20
    assign("xmax", tclVar(xmax), env = slider.env)
       
   norm.refresh <- function(...) {
        lambda <- as.numeric(evalq(tclvalue(lambda), env = slider.env))
        xmin <- as.numeric(evalq(tclvalue(xmin), env = slider.env))
        xmax <- as.numeric(evalq(tclvalue(xmax), env = slider.env))
        xx <- seq(xmin, xmax, length = (xmax-xmin)+1)
        yy <- dpois(xx, lambda)
        plot(xx, yy, type = "h", xlim = c(xmin, xmax), ylab = "f(x)", xlab = "x")
        points(xx, yy, pch=19)
                    }
    m <- tktoplevel()
    tkwm.title(m, "Visualizing the Poisson Distribution")
    tkpack(tklabel(m,text="      Visualizing the Poisson Distribution      "))
    tkwm.geometry(m, "+0+0")
    tkpack(fr <- tkframe(m), side = "top")
    tkpack(tklabel(fr, text = '\u03bb', font=c("Helvetica","9","italic"), width = "20"), side = "right")
    tkpack(sc <- tkscale(fr, command = norm.refresh, from = 0.1, 
        to = 10, orient = "horiz", resolution = 0.1, showvalue = TRUE), 
        side = "left")
    assign("sc", sc, env = slider.env)
    evalq(tkconfigure(sc, variable = lambda), env = slider.env)
   
    tkpack(fr <- tkframe(m), side = "top")
    tkpack(tklabel(fr, text = "Xmin:", width = 6), side = "left")
    tkpack(e <- tkentry(fr, width = 8), side = "left")
    assign("e", e, env = slider.env)
    evalq(tkconfigure(e, textvariable = xmin), env = slider.env)
    tkpack(tklabel(fr, text = "Xmax:", width = 6), side = "left")
    tkpack(e <- tkentry(fr, width = 8), side = "left")
    assign("e", e, env = slider.env)
    evalq(tkconfigure(e, textvariable = xmax), env = slider.env)
    tkpack(tkbutton(m, text = "Refresh", command = norm.refresh), 
        side = "left")
    tkpack(tkbutton(m, text = "Exit", command = function() tkdestroy(m)), 
        side = "right")
}


see.poiscdf.tck<-function () 
{
require(tcltk) || stop("tcltk support is absent")
    if (!exists("slider.env")) 
        slider.env <<- new.env()
    lambda <- 5
    assign("lambda", tclVar(lambda), env = slider.env)
    xmin <- 0
    assign("xmin", tclVar(xmin), env = slider.env)
    xmax <- 20
    assign("xmax", tclVar(xmax), env = slider.env)
    
   dev.new(height=4,width=8);par(mfrow=c(1,2),mar=c(4.4,4.5,1,0.5),cex=.85);layout(matrix(c(1,2), 1, 2, byrow = TRUE))    
   norm.refresh <- function(...) {
        lambda <- as.numeric(evalq(tclvalue(lambda), env = slider.env))
        xmin <- as.numeric(evalq(tclvalue(xmin), env = slider.env))
        xmax <- as.numeric(evalq(tclvalue(xmax), env = slider.env))
        xx <- seq(xmin, xmax, length = (xmax-xmin)+1)
        yy <- dpois(xx, lambda)
        y1<- ppois(xx, lambda)
        plot(xx, yy, type = "h", xlim = c(xmin, xmax), ylab = "f(x)", xlab = "x")
        points(xx, yy, pch=19)
        plot(xx, y1, type = "n", xlim = c(xmin, xmax), ylab = "F(x)", xlab = "x")
        segments(xx, y1, xx+1, y1, pch=19)
        points(xx,y1,pch=19)
        points(xx+1,y1,pch=1)
                    }
    m <- tktoplevel()
    tkwm.title(m, "Visualizing the Poisson Distribution")
    tkpack(tklabel(m,text="      Visualizing the Poisson Distribution      "))
    tkwm.geometry(m, "+0+0")
    tkpack(fr <- tkframe(m), side = "top")
    tkpack(tklabel(fr, text = '\u03bb', font=c("Helvetica","9","italic"), width = "20"), side = "right")
    tkpack(sc <- tkscale(fr, command = norm.refresh, from = 0.1, 
        to = 10, orient = "horiz", resolution = 0.1, showvalue = TRUE), 
        side = "left")
    assign("sc", sc, env = slider.env)
    evalq(tkconfigure(sc, variable = lambda), env = slider.env)
   
    tkpack(fr <- tkframe(m), side = "top")
    tkpack(tklabel(fr, text = "Xmin:", width = 6), side = "left")
    tkpack(e <- tkentry(fr, width = 8), side = "left")
    assign("e", e, env = slider.env)
    evalq(tkconfigure(e, textvariable = xmin), env = slider.env)
    tkpack(tklabel(fr, text = "Xmax:", width = 6), side = "left")
    tkpack(e <- tkentry(fr, width = 8), side = "left")
    assign("e", e, env = slider.env)
    evalq(tkconfigure(e, textvariable = xmax), env = slider.env)
    tkpack(tkbutton(m, text = "Refresh", command = norm.refresh), 
        side = "left")
    tkpack(tkbutton(m, text = "Exit", command = function() tkdestroy(m)), 
        side = "right")
}


