selftest.ML_OLS.tck <- function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "OLS and ML estimation")
  size(w) <- c(700, 400)
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
  q1 <- gexpandgroup("Question 1", container=g, anchor=c(-1,1))
  q2 <- gexpandgroup("Question 2", container=g, anchor=c(-1,1))
  q3 <- gexpandgroup("Question 3", container=g, anchor=c(-1,1))
  q4 <- gexpandgroup("Question 4", container=g, anchor=c(-1,1))
  q5 <- gexpandgroup("Question 5", container=g, anchor=c(-1,1))
  
  #------------- Question 1 -----------#
  
  gp1 <- ggroup(container = q1, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("What is the likelihood of a value for a parameter \u03B8, given data?", container = gp1, anchor = c(-1,1))
  addSpace(gp1, .5, horizontal=FALSE)
  ans1 <- c("(a)  The absolute value of data densities resulting from a specified value of \u03B8, \nthat parameterizes an assumed probability distribution.",
            "(b)  P(\u03B8|data).",
            "(c)  The sum of probabilities of data data resulting from a specified value of \u03B8, \nthat parameterizes an assumed probability distribution.",
            "(d)  The product of data densities resulting from a specified value of \u03B8, \nthat parameterizes an assumed probability distribution.")
  
  r1 <- gcheckboxgroup(ans1, container = gp1, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r1, handler = function(h,....){
    if(tail(svalue(r1),1) == ans1[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[3]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[4]){
      gmessage(message="Correct")
    }
    svalue(r1) <- character(0)
  })
  
  
  #------------- Question 2 -----------#
  gp2 <- ggroup(container = q2, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("(T or F) Likelihood can be interpreted as a probability.", container = gp2, anchor = c(-1,1))
  addSpace(gp2, .5, horizontal=FALSE)
  ans2 <- c("True",
            "False")
  
  r2 <- gcheckboxgroup(ans2, container = gp2, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r2, handler = function(h,....){
    if(tail(svalue(r2),1) == ans2[1]){
      gmessage(message="Incorrect.  Densities cannot be interpreted as probabilities.  For instance, it is possible for a likelihood to be greater than 1",  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[2]){
      gmessage(message="Correct.  Densities cannot be interpreted as probabilities.  For instance, it is possible for a likelihood to be greater than 1")
    }
    svalue(r2) <- character(0)
  })   
  
  #------------- Question 3 -----------#
  gp3 <- ggroup(container = q3, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("(T or F) The arithmetic mean is the OLS estimator for the true mean of any distribution.", container = gp3, anchor = c(-1,1))
  addSpace(gp2, .5, horizontal=FALSE)
  ans3 <- c("True",
            "False")
  
  r3 <- gcheckboxgroup(ans3, container = gp3, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r3, handler = function(h,....){
    if(tail(svalue(r3),1) == ans3[1]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r3),1)== ans3[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    svalue(r3) <- character(0)
  })   
  
  
  #------------- Question 4 -----------#
  gp4 <- ggroup(container = q4, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("An OLS estimator for \u03B8...", container = gp4, anchor = c(-1,1))
  addSpace(gp4, .5, horizontal=FALSE)
  ans4 <- c("minimizes: \u2211\u2093(x\u1D62 - f\u1D62(\u03B8))\u00B2",
            "maximizes: \u2211\u2093(x\u1D62 - f\u1D62(\u03B8))\u00B2",
            "minimizes: \u220F\u2093 f(x\u1D62|\u03B8)",
            "maximizes: \u220F\u2093 f(x\u1D62|\u03B8)"
  )
  
  r4 <- gcheckboxgroup(ans4, container = gp4, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r4, handler = function(h,....){
    if(tail(svalue(r4),1) == ans4[1]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r4),1)== ans4[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1) == ans4[3]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[4]){
      gmessage(message="Incorrect",  icon = "error")
    }
    svalue(r4) <- character(0)
  }) 
  
  #------------- Question 5 -----------#
  gp5 <- ggroup(container = q5, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("A ML estimator for \u03B8...", container = gp5, anchor = c(-1,1))
  addSpace(gp5, .5, horizontal=FALSE)
  ans5 <- c("minimizes: \u2211\u2093(x\u1D62 - f\u1D62(\u03B8))\u00B2",
            "maximizes: \u2211\u2093(x\u1D62 - f\u1D62(\u03B8))\u00B2",
            "minimizes: \u220F\u2093 f(x\u1D62|\u03B8)",
            "maximizes: \u220F\u2093 f(x\u1D62|\u03B8)")
  
  
  r5 <- gcheckboxgroup(ans5, container = gp5, checked = FALSE, where = "beginning")
  addhandlerclicked(r5, handler = function(h,....){
    if(tail(svalue(r5),1) == ans5[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1) == ans5[3]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[4]){
      gmessage(message="Correct")
    }
    svalue(r5) <- character(0)
  })
}


