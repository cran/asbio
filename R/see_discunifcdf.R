see.disc.unif.tck <-function ()
{

  if (!exists("slider.env"))
    slider.env <- NULL
  suppressWarnings(rm(slider.env))
  slider.env <<- new.env()
  a <- 0
  b <- 10

  assign("a", tclVar(a), envir = slider.env)
  assign("b", tclVar(b), envir = slider.env)

  if(names(dev.cur()) == "RStudioGD") dev.new(noRStudioGD = TRUE)

  if(names(dev.cur()) == "RStudioGD") dev.new(noRStudioGD = TRUE)

  norm.refresh <- function(...) {
    a <- as.numeric(evalq(tclvalue(a), envir = slider.env))
    b <- as.numeric(evalq(tclvalue(b), envir = slider.env))
    xx <- seq(a,b,1)
    n <- length(xx)
    ddunif <- function(n){rep(1/n, n)}
    yy <- ddunif(n)
    plot(xx, yy, type = "h", xlab = expression(italic(x)),
         ylab = expression(paste(italic(f), "(", italic(x),
                                 ")", sep = "")))
    points(xx, yy, pch = 19)
    mtext(bquote(paste(italic(X), " ~ ", italic(DUNIF), "(",
                       .(a), ", ", .(b), ")", sep = "")), line = 1, side = 3)
    dev.flush()
  }
  tclServiceMode(TRUE)
  m <- tktoplevel()
  tkwm.title(m, "DUNIF(a, b)")
  tkpack(tklabel(m, text = "      Visualizing the Discrete Uniform Distribution      "))
  tkwm.geometry(m, "+0+0")
  tkpack(fr <- tkframe(m), side = "top")
  tkpack(tklabel(fr, text = "a", font = c("Helvetica", "9",
                                          "italic"), width = "20"), side = "right")
  tkpack(sc <- tkscale(fr, command = norm.refresh, from = 0,
                       to = 5, orient = "horiz", resolution = 1, showvalue = TRUE),
         side = "left")
  assign("sc", sc, envir = slider.env)
  evalq(tkconfigure(sc, variable = a), envir = slider.env)

  tkpack(fr <- tkframe(m), side = "top")
  tkpack(tklabel(fr, text = "b", font = c("Helvetica", "9",
                                          "italic"), width = "20"), side = "right")
  tkpack(sc <- tkscale(fr, command = norm.refresh, from = 5,
                       to = 20, orient = "horiz", resolution = 0.01, showvalue = TRUE),
         side = "left")
  assign("sc", sc, envir = slider.env)
  evalq(tkconfigure(sc, variable = b), envir = slider.env)
  tkpack(fr <- tkframe(m), side = "top")

  tkpack(tkbutton(m, text = "Refresh", command = norm.refresh),
         side = "left")
  tkpack(tkbutton(m, text = "Exit", command = function() tkdestroy(m)),
         side = "right")
}








see.disc.unifcdf.tck <- function ()
{
  #  old.par <- par(no.readonly = TRUE)
  if (!exists("slider.env"))
    slider.env <- NULL
  suppressWarnings(rm(slider.env))
  slider.env <<- new.env()
  a <- 0
  b <- 10
  assign("a", tclVar(a), envir = slider.env)
  assign("b", tclVar(b), envir = slider.env)
  dev.new(height = 4, width = 8, noRStudioGD = TRUE)
  par(mar = c(4.4, 4.5, 1, 0.5), cex = 0.85, oma = c(0, 0,
                                                     1.5, 0))
  layout(matrix(c(1, 2), 1, 2, byrow = TRUE))
   norm.refresh <- function(...) {
    a <- as.numeric(evalq(tclvalue(a), envir = slider.env))
    b <- as.numeric(evalq(tclvalue(b), envir = slider.env))
    xx <- seq(a,b,1)
    n <- length(xx)
    ddunif <- function(n){rep(1/n, n)}
    yy <- ddunif(n)
    y1 <- cumsum(yy)
    plot(xx, yy, type = "h", xlab = expression(italic(x)),
         ylab = expression(paste(italic(f), "(", italic(x),
                                 ")", sep = "")))
    points(xx, yy, pch = 19)
    plot(xx, y1, type = "n", xlab = expression(italic(x)),
         ylab = expression(paste(italic(F), "(", italic(x),
                                 ")", sep = "")))
    points(xx, y1, pch = 19)
    segments(xx, y1, xx + 1, y1)
    points(xx + 1, y1, pch = 1)
    mtext(bquote(paste(italic(X), " ~ ", italic(DUNIF), "(",
                       .(a), ", ", .(b), ")", sep = "")), outer = TRUE,
          side = 3, cex = 0.9)
    dev.flush()
  }
  tclServiceMode(TRUE)
  m <- tktoplevel()
  tkwm.title(m, "DUNIF(a, b)")
  tkpack(tklabel(m, text = "      Visualizing the Discrete Uniform Distribution      "))
  tkwm.geometry(m, "+0+0")
  tkpack(fr <- tkframe(m), side = "top")
  tkpack(tklabel(fr, text = "a", font = c("Helvetica", "9",
                                          "italic"), width = "20"), side = "right")
  tkpack(sc <- tkscale(fr, command = norm.refresh, from = 0,
                       to = 5, orient = "horiz", resolution = 1, showvalue = TRUE),
         side = "left")
  assign("sc", sc, envir = slider.env)
  evalq(tkconfigure(sc, variable = a), envir = slider.env)

  tkpack(fr <- tkframe(m), side = "top")
  tkpack(tklabel(fr, text = "b", font = c("Helvetica", "9",
                                          "italic"), width = "20"), side = "right")
  tkpack(sc <- tkscale(fr, command = norm.refresh, from = 5,
                       to = 20, orient = "horiz", resolution = 0.01, showvalue = TRUE),
         side = "left")
  assign("sc", sc, envir = slider.env)
  evalq(tkconfigure(sc, variable = b), envir = slider.env)
  tkpack(fr <- tkframe(m), side = "top")

  tkpack(tkbutton(m, text = "Refresh", command = norm.refresh),
         side = "left")
  tkpack(tkbutton(m, text = "Exit", command = function() tkdestroy(m)),
         side = "right")
  #    on.exit(par(old.par))
}
