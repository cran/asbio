selftest.typeIISS.tck1 <-function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "Type II and III SS")
  size(w) <- c(700, 950)
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
  
  #------------- Question 1 -----------#

  
  gp1 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp1.1 <- ggroup(container = gp1, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("1) ", container = gp1.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("We would use type II or III sums of squares whenever...", container = gp1.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  

  ans1 <- c("(a)  We have an unbalanced one way ANOVA format.",
            "(b)  We have a quantitative predictor.",
            "(c)  We have a balanced multiway ANOVA format.",
            "(d)  We have either an unbalanced multiway ANOVA format, or some other multiple X format with at least one \n       quantitative X variable.")
  
  
  f1 <- function(h,....){
    if(tail(svalue(r1),1) == ans1[1]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[4]){
      gmessage(msg="Correct")
    }
    svalue(r1) <- character(0)
  }
  
  r1 <- gcheckboxgroup(ans1, container = gp1, checked = FALSE, where = "beginning", handler = f1)
  
}