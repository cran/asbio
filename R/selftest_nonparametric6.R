selftest.nonparametric6.tck <- function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "Nonparametric alternatives to t-tests")
  size(w) <- c(700, 500)
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
  q1 <- gexpandgroup("Question 1", container=g, anchor=c(-1,1))
  q2 <- gexpandgroup("Question 2", container=g, anchor=c(-1,1))
  q3 <- gexpandgroup("Question 3", container=g, anchor=c(-1,1))
  q4 <- gexpandgroup("Question 4", container=g, anchor=c(-1,1))
  q5 <- gexpandgroup("Question 5", container=g, anchor=c(-1,1))
  
  #------------- Question 1 -----------#
  gp1 <- ggroup(container = q1, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("The Wilcoxon rank sum test is a nonparametric analogue of the...", container = gp1, anchor = c(-1,1))
  addSpace(gp1, .5, horizontal=FALSE)
  ans1 <- c("(a)     paired t-test.",
            "(b)     Welch's t-test.",
            "(c)     Pooled variance t-test.",
            "(d)     One sample t-test.")
  
  r1 <- gcheckboxgroup(ans1, container = gp1, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r1, handler = function(h,....){
    if(tail(svalue(r1),1) == ans1[1]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[3]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r1),1)== ans1[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r1) <- character(0)
  })
  
  
  #------------- Question 2 -----------#
  gp2 <- ggroup(container = q2, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("The Wilcoxon sign rank test is a nonparamteric analogue of the...", container = gp2, anchor = c(-1,1))
  addSpace(gp2, .5, horizontal=FALSE)
  ans2 <- c("(a)     paired t-test.",
            "(b)     Welch's t-test.",
            "(c)     Pooled variance t-test.",
            "(d)     One sample t-test.")
  
  r2 <- gcheckboxgroup(ans2, container = gp2, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r2, handler = function(h,....){
    if(tail(svalue(r2),1) == ans2[1]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r2),1)== ans2[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[3]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r2) <- character(0)
  })
  
  #------------- Question 3 -----------#
  
  gp3 <- ggroup(container = q3, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("Nonparametric tests tend to...",
         container = gp3, anchor = c(-1,1))
  addSpace(gp3, .5, horizontal=FALSE)
  ans3 <- c("(a)  have more power than their parametric analogues.",
            "(b)  have less power than their parametric analogues.",
            "(c)  have the same power as their parametric analogues.",
            "(d)  relative power of parametric and nonparametric tests cannot be determined")
  
  r3 <- gcheckboxgroup(ans3, container = gp3, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r3, handler = function(h,....){
    if(tail(svalue(r3),1) == ans3[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[2]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r3),1)== ans3[3]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[4]){
      gmessage(message="Incorrect",  icon = "error")
    }
    svalue(r3) <- character(0)
  })
  
  #------------- Question 4 -----------#
  
  gp4 <- ggroup(container = q4, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("Rank-based permutation tests tend not to be...",
         container = gp4, anchor = c(-1,1))
  addSpace(gp4, .5, horizontal=FALSE)
  ans4 <- c("(a)  robust to outliers.",
            "(b)  robust to non-normality.",
            "(c)  robust to heteroscedasticity.",
            "(d)  robust to outliers and non-normality.")
  
  r4 <- gcheckboxgroup(ans4, container = gp4, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r4, handler = function(h,....){
    if(tail(svalue(r4),1) == ans4[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[3]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r4),1)== ans4[4]){
      gmessage(message="Incorrect",  icon = "error")
    }
    svalue(r4) <- character(0)
  })
  
  #------------- Question 5 -----------#
  
  gp5 <- ggroup(container = q5, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("(T or F) Ties in data simplify the implementation of rank-based permutation tests.",
         container = gp5, anchor = c(-1,1))
  addSpace(gp5, .5, horizontal=FALSE)
  ans5 <- c("T",
            "F")
  
  r5 <- gcheckboxgroup(ans5, container = gp5, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r5, handler = function(h,....){
    if(tail(svalue(r5),1) == ans5[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[2]){
      gmessage(message="Correct")
    }
    svalue(r5) <- character(0)
  })
  
  
}