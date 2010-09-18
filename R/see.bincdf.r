see.bin.tck<-function () 
{
require(tcltk) || stop("tcltk support is absent")
    if (!exists("slider.env")) 
        slider.env <<- new.env()
    n <- 10
    p <- 0.5
    assign("n", tclVar(n), env = slider.env)
    assign("p", tclVar(p), env = slider.env)           
   
   norm.refresh <- function(...) {
        n <- as.numeric(evalq(tclvalue(n), env = slider.env))
        p <- as.numeric(evalq(tclvalue(p), env = slider.env))
        xx <- seq(0, n, length = n+1)
        yy <- dbinom(xx,n,p)
        
        plot(xx, yy, type = "h", ylab = "f(x)", xlab = "x")
        points(xx, yy, pch =19)
                    }
    m <- tktoplevel()
    tkwm.title(m, "Visualizing the Binomial Distribution")
    tkpack(tklabel(m,text="      Visualizing the Binomial Distribution      "))
    tkwm.geometry(m, "+0+0")
    tkpack(fr <- tkframe(m), side = "top")
    tkpack(tklabel(fr, text = "n", font=c("Helvetica","9","italic"),width = "20"), side = "right")
    tkpack(sc <- tkscale(fr, command = norm.refresh, from = 1, 
        to = 30, orient = "horiz", resolution = 1, showvalue = TRUE), 
        side = "left")
    assign("sc", sc, env = slider.env)
    evalq(tkconfigure(sc, variable = n), env = slider.env)
    
    tkpack(fr <- tkframe(m), side = "top")
    tkpack(tklabel(fr, text = "p", font=c("Helvetica","9","italic"),width = "20"), 
        side = "right")
    tkpack(sc <- tkscale(fr, command = norm.refresh, from = 0, 
        to = 1, orient = "horiz", resolution = 0.01, showvalue = TRUE), 
        side = "left")
    assign("sc", sc, env = slider.env)
    evalq(tkconfigure(sc, variable = p), env = slider.env)  

}

 
 see.bincdf.tck<-function () 
{
require(tcltk) || stop("tcltk support is absent")
    if (!exists("slider.env")) 
        slider.env <<- new.env()
    n <- 10
    p <- 0.5
    assign("n", tclVar(n), env = slider.env)
    assign("p", tclVar(p), env = slider.env)           
    dev.new(height=4,width=8);par(mfrow=c(1,2),mar=c(4.4,4.5,1,0.5),cex=.85);layout(matrix(c(1,2), 1, 2, byrow = TRUE))   
   norm.refresh <- function(...) {
        n <- as.numeric(evalq(tclvalue(n), env = slider.env))
        p <- as.numeric(evalq(tclvalue(p), env = slider.env))
        xx <- seq(0, n, length = n+1)
        yy <- dbinom(xx,n,p)
        y1 <- pbinom(xx,n,p)
        plot(xx, yy, type = "h", ylab = "f(x)", xlab = "x")
        points(xx, yy, pch =19)
        plot(xx, y1, type = "n", ylab = "F(x)", xlab = "x")
        points(xx, y1, pch =19)
        segments(xx, y1,xx+1,y1)
        points(xx+1, y1, pch =1)
        
                    }
    m <- tktoplevel()
    tkwm.title(m, "Visualizing the Binomial Distribution")
    tkpack(tklabel(m,text="      Visualizing the Binomial Distribution      "))
    tkwm.geometry(m, "+0+0")
    tkpack(fr <- tkframe(m), side = "top")
    tkpack(tklabel(fr, text = "n", font=c("Helvetica","9","italic"),width = "20"), side = "right")
    tkpack(sc <- tkscale(fr, command = norm.refresh, from = 1, 
        to = 30, orient = "horiz", resolution = 1, showvalue = TRUE), 
        side = "left")
    assign("sc", sc, env = slider.env)
    evalq(tkconfigure(sc, variable = n), env = slider.env)
    
    tkpack(fr <- tkframe(m), side = "top")
    tkpack(tklabel(fr, text = "p", font=c("Helvetica","9","italic"),width = "20"), 
        side = "right")
    tkpack(sc <- tkscale(fr, command = norm.refresh, from = 0, 
        to = 1, orient = "horiz", resolution = 0.01, showvalue = TRUE), 
        side = "left")
    assign("sc", sc, env = slider.env)
    evalq(tkconfigure(sc, variable = p), env = slider.env)  
}
 