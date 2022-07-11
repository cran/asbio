selftest.ANOVAmixed.tck1 <-function(){

  options(guiToolkit="tcltk")
  w <- gwindow(title = "Mixed effect models")
  size(w) <- c(700, 400)
  
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
 
 
  

  
   
  #------------- Question 1 -----------#
  
  f1 <- function(h,....){
    if(svalue(r1) == ans1[1]){
      gmessage(msg="Partially correct",  icon = "error", parent = gp1)
    }
    if(svalue(r1)== ans1[2]){
      gmessage(msg="Partially correct", icon = "error", parent = gp1)
    }
    if(svalue(r1)== ans1[3]){
      gmessage(msg="Partially correct", icon = "error", parent = gp1)
    }
    if(svalue(r1)== ans1[4]){
      gmessage(msg="Correct", parent = gp1)
    }
    svalue(r1) <- character(0)
  }
  
  
  gp1 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp1.1 <- ggroup(container = gp1, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("1) ", container = gp1.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("Why do we use REML to estimate variances in random and mixed effect models?", container = gp1.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  #addSpace(gp1, .5)
  
  ans1 <- c("(a)  ML estimates are biased low.",
            "(b)  MOM estimates can be negative.",
            "(c)  Lack of balance in multifactor designs prevents MOM estimates.",
            "(d)  All of the above.")
  
  r1 <- gcheckboxgroup(ans1, container = gp1, where = "beginning", handler = f1)
  

  #------------- Question 2 -----------#
  
  gp2 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp2.1 <- ggroup(container = gp2, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("2) ", container = gp2.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("For a random factor A with three stipulated factor levels, we would use a random effect model to test\n the null hypothesis...", container = gp2.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  #addSpace(gp1, .5)
  
  ans2 <- c("(a)  \u03bc\u2081 = \u03bc\u2082 = \u03bc\u2083.",
            "(b)  The true variance of the population of factor level means in A equals zero.",
            "(c)  The true variance of the observed factor level means in A equals zero.",
            "(d)  None of the above.")

  
  f2 <- function(h,....){
    if(svalue(r2) == ans2[1]){
      gmessage(msg="Incorrect",  icon = "error", parent = gp2)
    }
    if(svalue(r2)== ans2[2]){
      gmessage(msg="Correct", parent = gp2)
    }
    if(svalue(r2)== ans2[3]){
      gmessage(msg="Incorrect", icon = "error", parent = gp2)
    }
    if(svalue(r2)== ans2[4]){
      gmessage(msg="Incorrect", icon = "error", parent = gp2)
    }
    svalue(r2) <- character(0)
  }
  
    
  r2 <- gcheckboxgroup(ans2, container = gp2, where = "beginning", handler = f2)
  
    

}