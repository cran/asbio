see.Fcdf.tck<-function () 
{
require(tcltk) || stop("tcltk support is absent")
    if (!exists("slider.env")) 
        slider.env <<- new.env()
    nu1 <- 5
    assign("nu1", tclVar(nu1), env = slider.env)
    nu2 <- 5
    assign("nu2", tclVar(nu2), env = slider.env)
    xmin <- 0
    assign("xmin", tclVar(xmin), env = slider.env)
    xmax <- 10
    assign("xmax", tclVar(xmax), env = slider.env)
        
    dev.new(height=4,width=8);par(mfrow=c(1,2),mar=c(4.4,4.5,1,0.5),cex=.85);layout(matrix(c(1,2), 1, 2, byrow = TRUE))
    norm.refresh <- function(...) {
        nu1 <- as.numeric(evalq(tclvalue(nu1), env = slider.env))
        nu2 <- as.numeric(evalq(tclvalue(nu2), env = slider.env))
        xmin <- as.numeric(evalq(tclvalue(xmin), env = slider.env))
        xmax <- as.numeric(evalq(tclvalue(xmax), env = slider.env))
        xx <- seq(0, 10, length = 200)
        yy <- df(xx, nu1, nu2)
        y1 <- pf(xx, nu1, nu2)
        plot(xx, yy, type = "l", xlim = c(xmin, xmax),ylab = "f(x)", xlab = "x")
        plot(xx, y1, type = "l", xlim = c(xmin, xmax),ylab = "F(x)", xlab = "x")
            }
    m <- tktoplevel()
    tkwm.title(m, "Visualizing the F Distribution")
    tkpack(tklabel(m,text="      Visualizing the F Distribution      "))
    tkwm.geometry(m, "+0+0")
    tkpack(fr <- tkframe(m), side = "top")
    tkpack(tklabel(fr, text = '\u03bd\u2081',width = "20"), side = "right")
    tkpack(sc <- tkscale(fr, command = norm.refresh, from = 1, 
        to = 30, orient = "horiz", resolution = 1, showvalue = TRUE), 
        side = "left")
    assign("sc", sc, env = slider.env)
    evalq(tkconfigure(sc, variable = nu1), env = slider.env)
    tkpack(fr <- tkframe(m), side = "top")
    tkpack(tklabel(fr, text = '\u03bd\u2082',width = "20"), side = "right")
    tkpack(sc <- tkscale(fr, command = norm.refresh, from = 1, 
        to = 30, orient = "horiz", resolution = 1, showvalue = TRUE), 
        side = "left")
    assign("sc", sc, env = slider.env)
    tkpack(fr <- tkframe(m), side = "top")
    evalq(tkconfigure(sc, variable = nu2), env = slider.env)
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


see.F.tck<-function () 
{
require(tcltk) || stop("tcltk support is absent")
    if (!exists("slider.env")) 
        slider.env <<- new.env()
    nu1 <- 5
    assign("nu1", tclVar(nu1), env = slider.env)
    nu2 <- 5
    assign("nu2", tclVar(nu2), env = slider.env)
        xmin <- 0
    assign("xmin", tclVar(xmin), env = slider.env)
    xmax <- 10
    assign("xmax", tclVar(xmax), env = slider.env)
        
    norm.refresh <- function(...) {
        nu1 <- as.numeric(evalq(tclvalue(nu1), env = slider.env))
        nu2 <- as.numeric(evalq(tclvalue(nu2), env = slider.env))
        xmin <- as.numeric(evalq(tclvalue(xmin), env = slider.env))
        xmax <- as.numeric(evalq(tclvalue(xmax), env = slider.env))
        xx <- seq(0, 10, length = 200)
        yy <- df(xx, nu1, nu2)
        plot(xx, yy, type = "l", xlim = c(xmin, xmax),ylab = "f(x)", xlab = "x")
                    }
    m <- tktoplevel()
    tkwm.title(m, "Visualizing the F Distribution")
    tkpack(tklabel(m,text="      Visualizing the F Distribution      "))
    tkwm.geometry(m, "+0+0")
    tkpack(fr <- tkframe(m), side = "top")
    tkpack(tklabel(fr, text = '\u03b7\u2081', width = "20"), side = "right")
    tkpack(sc <- tkscale(fr, command = norm.refresh, from = 1, 
        to = 30, orient = "horiz", resolution = 1, showvalue = TRUE), 
        side = "left")
    assign("sc", sc, env = slider.env)
    evalq(tkconfigure(sc, variable = nu1), env = slider.env)
    tkpack(fr <- tkframe(m), side = "top")
    tkpack(tklabel(fr, text = '\u03b7\u2082', width = "20"), side = "right")
    tkpack(sc <- tkscale(fr, command = norm.refresh, from = 1, 
        to = 30, orient = "horiz", resolution = 1, showvalue = TRUE), 
        side = "left")
    assign("sc", sc, env = slider.env)
    evalq(tkconfigure(sc, variable = nu2), env = slider.env)
        tkpack(fr <- tkframe(m), side = "top")
    evalq(tkconfigure(sc, variable = nu2), env = slider.env)
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