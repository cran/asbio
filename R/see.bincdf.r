see.bin.tck<-function () 
{
require(tcltk) || stop("tcltk support is absent")
    if (!exists("slider.env")) 
        slider.env <<- new.env()
    n <- 10
    p <- 0.5
    assign("n", tclVar(n), env = slider.env)
    assign("p", tclVar(p), env = slider.env)           
   
   show.norm<-tclVar(0) 
      prefunc<-function(xx,yy,vy,muy,n,show.norm=FALSE){
        plot(xx, yy, type = "h", ylab = "f(x)", xlab = "x")
        points(xx, yy, pch =19)
        if(show.norm==TRUE) curve(dnorm(x,muy,sqrt(vy)),0,n, col =2,add=TRUE)
                  }   
   norm.refresh <- function(...) {
        n <- as.numeric(evalq(tclvalue(n), env = slider.env))
        p <- as.numeric(evalq(tclvalue(p), env = slider.env))
        xx <- seq(0, n, length = n+1)
        yy <- dbinom(xx,n,p)
        show.norm <- as.logical(tclObj(show.norm))
        vy<-sqrt(p*n*(1-p))
        muy<-n*p 
        prefunc(xx,yy,vy,muy,n,show.norm=show.norm)
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
    tkpack(fr,tkcheckbutton(m, text="Show normal approx.",variable=show.norm),anchor="w")
     tkpack(tkbutton(m, text = "Refresh", command = norm.refresh), 
        side = "left")
    tkpack(tkbutton(m, text = "Exit", command = function() tkdestroy(m)), 
        side = "right")
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
    
    show.norm<-tclVar(0)
    
    dev.new(height=4,width=8);par(mfrow=c(1,2),mar=c(4.4,4.5,1,0.5),cex=.85);layout(matrix(c(1,2), 1, 2, byrow = TRUE))   
   
    prefunc<-function(xx,yy,y1,vy,muy,n,show.norm=FALSE){
        plot(xx, yy, type = "h", ylab = "f(x)", xlab = "x")
        points(xx, yy, pch =19)
        if(show.norm==TRUE) curve(dnorm(x,muy,sqrt(vy)),0,n, col =2, add = TRUE)
        plot(xx, y1, type = "n", ylab = "F(x)", xlab = "x")
        points(xx, y1, pch =19)
        segments(xx, y1,xx+1,y1)
        points(xx+1, y1, pch =1)
        if(show.norm==TRUE) curve(pnorm(x,muy,sqrt(vy)),0,n, col =2, add=TRUE)
                  }   
   
   norm.refresh <- function(...) {
        n <- as.numeric(evalq(tclvalue(n), env = slider.env))
        p <- as.numeric(evalq(tclvalue(p), env = slider.env))
        xx <- seq(0, n, length = n+1)
        yy <- dbinom(xx,n,p)
        y1 <- pbinom(xx,n,p)
        show.norm <- as.logical(tclObj(show.norm))
        vy<-sqrt(p*n*(1-p))
        muy<-n*p 
        prefunc(xx,yy,y1,vy,muy,n,show.norm=show.norm)
        
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
    tkpack(fr,tkcheckbutton(m, text="Show normal approx.",variable=show.norm),anchor="w")
     tkpack(tkbutton(m, text = "Refresh", command = norm.refresh), 
        side = "left")
    tkpack(tkbutton(m, text = "Exit", command = function() tkdestroy(m)), 
        side = "right")
}
 