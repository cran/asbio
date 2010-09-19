see.unif.tck<-function () 
{
require(tcltk) || stop("tcltk support is absent")
    if (!exists("slider.env")) 
        slider.env <<- new.env()
    minX <- 2.5
    assign("minX", tclVar(minX), env = slider.env)
    maxX <- 3
    assign("maxX", tclVar(maxX), env = slider.env)
    xmin <- 0
    assign("xmin", tclVar(xmin), env = slider.env)
    xmax <- 5.5
    assign("xmax", tclVar(xmax), env = slider.env)
    
       
   norm.refresh <- function(...) {
        minX <- as.numeric(evalq(tclvalue(minX), env = slider.env))
        maxX <- as.numeric(evalq(tclvalue(maxX), env = slider.env))
        xmin <- as.numeric(evalq(tclvalue(xmin), env = slider.env))
        xmax <- as.numeric(evalq(tclvalue(xmax), env = slider.env))
        xx <- seq(xmin, xmax, length = 500)
        yy <- dunif(xx, minX, maxX)
        d <- dunif(minX, minX, maxX)
        umean<-(minX+maxX)/2
        plot(xx, yy, type = "n", xlim = c(xmin, xmax), ylab = "f(x)", xlab = "x")
        segments(minX,d,maxX,d) 
        segments(minX,0,minX,d)
        segments(maxX,0,maxX,d)
                    }
    m <- tktoplevel()
    tkwm.title(m, "Visualizing the Uniform Distribution")
    tkpack(tklabel(m,text="      Visualizing the Uniform Distribution      "))
    tkwm.geometry(m, "+0+0")
    tkpack(fr <- tkframe(m), side = "top")
    tkpack(tklabel(fr, text = "a", font=c("Helvetica","9","italic"),width = "20"), side = "right")
    tkpack(sc <- tkscale(fr, command = norm.refresh, from = 0, 
        to = 2.9, orient = "horiz", resolution = 0.1, showvalue = TRUE), 
        side = "left")
    assign("sc", sc, env = slider.env)
    evalq(tkconfigure(sc, variable = minX), env = slider.env)
    tkpack(fr <- tkframe(m), side = "top")
    tkpack(tklabel(fr, text = "b", font=c("Helvetica","9","italic"),width = "20"), 
        side = "right")
    tkpack(sc <- tkscale(fr, command = norm.refresh, from = 3, 
        to = 5.5, orient = "horiz", resolution = 0.1, showvalue = TRUE), 
        side = "left")
    assign("sc", sc, env = slider.env)
    evalq(tkconfigure(sc, variable = maxX), env = slider.env)
    
    
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



see.unifcdf.tck<-function () 
{
require(tcltk) || stop("tcltk support is absent")
    if (!exists("slider.env")) 
        slider.env <<- new.env()
    minX <- 2.5
    assign("minX", tclVar(minX), env = slider.env)
    maxX <- 3
    assign("maxX", tclVar(maxX), env = slider.env)
    xmin <- 0
    assign("xmin", tclVar(xmin), env = slider.env)
    xmax <- 5.5
    assign("xmax", tclVar(xmax), env = slider.env)
     
    
    dev.new(height=4,width=8);par(mfrow=c(1,2),mar=c(4.4,4.5,1,0.5),cex=.85);layout(matrix(c(1,2), 1, 2, byrow = TRUE))
    norm.refresh <- function(...) {
        minX <- as.numeric(evalq(tclvalue(minX), env = slider.env))
        maxX <- as.numeric(evalq(tclvalue(maxX), env = slider.env))
        xmin <- as.numeric(evalq(tclvalue(xmin), env = slider.env))
        xmax <- as.numeric(evalq(tclvalue(xmax), env = slider.env))
        xx <- seq(xmin, xmax, length = 500)
        yy <- dunif(xx, minX, maxX)
        y1 <- punif(xx, minX, maxX)
        d <- dunif(minX, minX, maxX)
        plot(xx, yy, type = "n", xlim = c(xmin, xmax), ylab = "f(x)", xlab = "x")
        segments(minX,d,maxX,d) 
        segments(minX,0,minX,d)
        segments(maxX,0,maxX,d)
        plot(xx, y1, type = "l", xlim = c(xmin, xmax), ylab = "F(x)", xlab = "x")
            }
    m <- tktoplevel()
    tkwm.title(m, "Visualizing the Uniform Distribution")
    tkpack(tklabel(m,text="      Visualizing the Uniform Distribution      "))
    tkwm.geometry(m, "+0+0")
    tkpack(fr <- tkframe(m), side = "top")
    tkpack(tklabel(fr, text = "a", font=c("Helvetica","9","italic"),width = "20"), side = "right")
    tkpack(sc <- tkscale(fr, command = norm.refresh, from = 0, 
        to = 2.9, orient = "horiz", resolution = 0.1, showvalue = TRUE), 
        side = "left")
    assign("sc", sc, env = slider.env)
    evalq(tkconfigure(sc, variable = minX), env = slider.env)
    tkpack(fr <- tkframe(m), side = "top")
    tkpack(tklabel(fr, text = "b", font=c("Helvetica","9","italic"),width = "20"), 
        side = "right")
    tkpack(sc <- tkscale(fr, command = norm.refresh, from = 3, 
        to = 5.5, orient = "horiz", resolution = 0.1, showvalue = TRUE), 
        side = "left")
    assign("sc", sc, env = slider.env)
    evalq(tkconfigure(sc, variable = maxX), env = slider.env)
    
    
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
