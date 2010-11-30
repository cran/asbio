see.M<-function () 
{
require(tcltk) || stop("tcltk support is absent")
    if (!exists("slider.env")) 
        slider.env <<- new.env()
    cval <- 0
    assign("cval", tclVar(cval), env = slider.env)
    xmin <- -5
    assign("xmin", tclVar(xmin), env = slider.env)
    xmax <- 5
    assign("xmax", tclVar(xmax), env = slider.env)
    
    
    norm.refresh <- function(...) {
        cval <- as.numeric(evalq(tclvalue(cval), env = slider.env))
        xmin <- as.numeric(evalq(tclvalue(xmin), env = slider.env))
        xmax <- as.numeric(evalq(tclvalue(xmax), env = slider.env))
        xx <- seq(xmin, xmax, length = 500)
        yy <- sapply(xx,function(x){min(1,cval/abs(x))})
        p<-plot(xx, yy, type = "l", xlim = c(xmin, xmax), ylab = "Weight", xlab=expression(paste("x - ",hat(mu))),lwd=2,bty="l")
        grid(p) 
        legend("topright", legend=paste("c = ", cval),box.col="white",bg="white")
     
         
    }
    m <- tktoplevel()
    tkwm.title(m, "Visualizing M-estimation of location")
    tkwm.geometry(m, "+0+0")
    tkpack(fr <- tkframe(m), side = "top")
    tkpack(tklabel(fr, text = "c", width = "20"), side = "right")
    tkpack(sc <- tkscale(fr, command = norm.refresh, from = 0.01, 
        to = 5, orient = "horiz", resolution = 0.01, showvalue = TRUE), 
        side = "left")
    assign("sc", sc, env = slider.env)
    evalq(tkconfigure(sc, variable = cval), env = slider.env)
      
    
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
