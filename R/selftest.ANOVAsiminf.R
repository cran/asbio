selftest.ANOVAsiminf.tck1 <-function(){

  options(guiToolkit="tcltk")
  w <- gwindow(title = "Simultaneous inference")
  size(w) <- c(700, 400)
  
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
  
  
  #------------- Question 1 -----------#
  
  f1 <- function(h,....){
    if(svalue(r1) == ans1[1]){
      gmessage(msg="Correct", parent = gp1)
    }
    if(svalue(r1)== ans1[2]){
      gmessage(msg="Inorrect", icon = "error", parent = gp1)
    }
    if(svalue(r1)== ans1[3]){
      gmessage(msg="Incorrect", icon = "error", parent = gp1)
    }
    if(svalue(r1)== ans1[4]){
      gmessage(msg="Inorrect", icon = "error", parent = gp1)
    }
    svalue(r1) <- character(0)
  }
  
  
  gp1 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp1.1 <- ggroup(container = gp1, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("1) ", container = gp1.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("What is the set of comparisons for which Scheff\u00E9's procedure will control family-wise type I error?", container = gp1.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  #addSpace(gp1, .5)
  
  ans1 <- c("(a)  All possible comparisons.",
            "(b)  All possible pairwise comparisons.",
            "(c)  All possible comparisons to a control.",
            "(d)  None of the above.")
  
  r1 <- gcheckboxgroup(ans1, container = gp1, where = "beginning", handler = f1)
  

}