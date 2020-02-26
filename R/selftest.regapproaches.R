selftest.regapproaches.tck1 <-function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "Regression approaches")
  size(w) <- c(700, 450)
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
  q1 <- gexpandgroup("Question 1", container=g, anchor=c(-1,1))
  q2 <- gexpandgroup("Question 2", container=g, anchor=c(-1,1))
  q3 <- gexpandgroup("Question 3", container=g, anchor=c(-1,1))
  q4 <- gexpandgroup("Question 4", container=g, anchor=c(-1,1))
  q5 <- gexpandgroup("Question 5", container=g, anchor=c(-1,1))
  q6 <- gexpandgroup("Question 6", container=g, anchor=c(-1,1))
  q7 <- gexpandgroup("Question 7", container=g, anchor=c(-1,1))
  
  
  visible(q2) <- FALSE
  
  #------------- Question 1 -----------#
  
  gp1 <- ggroup(container = q1, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("We use model II regression...", container = gp1, anchor = c(-1,1))
  addSpace(gp1, .5, horizontal=FALSE)

  ans1 <- c("(a) to address outliers in linear regression.",
            "(b) to address curvilinear associations within the context of a linear model.",
            "(c) to address heteroscedasticity in a general linear model.",
            "(d) to address cases in which levels in X are not fixed, or are measured with error.",
            "(e) to address non-quantitative, discrete, and/or strictly bounded response variables."
            )
  
  r1 <- gcheckboxgroup(ans1, container = gp1, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r1, handler = function(h,....){
    if(tail(svalue(r1),1) == ans1[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[3]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[4]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r1),1)== ans1[5]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r1) <- character(0)
  })
  
  
  #------------- Question 2 -----------#
  gp2 <- ggroup(container = q2, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("We use weighted least squares...", container = gp2, anchor = c(-1,1))
  addSpace(gp2, .5, horizontal=FALSE)
  
  
  ans2 <- c("(a) to address outliers in linear regression.",
            "(b) to address curvilinear associations within the context of a linear model.",
            "(c) to address heteroscedasticity in a general linear model.",
            "(d) to address cases in which levels in X are not fixed, or are measured with error.",
            "(e) to address non-quantitative, discrete, and/or strictly bounded response variables."
  )
  
  r2 <- gcheckboxgroup(ans2, container = gp2, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r2, handler = function(h,....){
    if(tail(svalue(r2),1) == ans2[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[3]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r2),1)== ans2[4]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[5]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r2) <- character(0)
  })
  
  
  #------------- Question 3 -----------#
  gp3 <- ggroup(container = q3, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("We use polynomial regression...", container = gp3, anchor = c(-1,1))
  addSpace(gp3, .5, horizontal=FALSE)
  ans3 <- c("(a) to address outliers in linear regression.",
            "(b) to address curvilinear associations within the context of a linear model.",
            "(c) to address heteroscedasticity in a general linear model.",
            "(d) to address cases in which levels in X are not fixed, or are measured with error.",
            "(e) to address non-quantitative, discrete, and/or strictly bounded response variables."
  )
  
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
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[5]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r3) <- character(0)
  })
  
  #------------- Question 4 -----------#
  
  gp4 <- ggroup(container = q4, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("We can use the framework of GLMs...", container = gp4, anchor = c(-1,1))
  addSpace(gp4, .5, horizontal=FALSE)
  ans4 <- c("(a) to address outliers in linear regression.",
            "(b) to address curvilinear associations within the context of a linear model.",
            "(c) to address heteroscedasticity in a general linear model.",
            "(d) to address cases in which levels in X are not fixed, or are measured with error.",
            "(e) to address non-quantitative, discrete, and/or strictly bounded response variables."
  )
  
  r4 <- gcheckboxgroup(ans4, container = gp4, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r4, handler = function(h,....){
    if(tail(svalue(r4),1) == ans4[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[3]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[4]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[5]){
      gmessage(message="Correct")
    }
    svalue(r4) <- character(0)
  })
  
  #------------- Question 5 -----------#
  
  gp5 <- ggroup(container = q5, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("We use robust regression approaches, i.e., M-estimation, S-estimation, etc. 
         ",  container = gp5, anchor = c(-1,1))
  addSpace(gp5, .5, horizontal=FALSE)
  ans5 <- c("(a) to address outliers in linear regression.",
            "(b) to address curvilinear associations within the context of a linear model.",
            "(c) to address heteroscedasticity in a general linear model.",
            "(d) to address cases in which levels in X are not fixed, or are measured with error.",
            "(e) to address non-quantitative, discrete, and/or strictly bounded response variables."
  )
  
  r5 <- gcheckboxgroup(ans5, container = gp5, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r5, handler = function(h,....){
    if(tail(svalue(r5),1) == ans5[1]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r5),1)== ans5[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[3]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[5]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r5) <- character(0)
  })
  
  
  #------------- Question 6 -----------#
  
  gp6 <- ggroup(container = q6, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("We would use a generalized additive model (GAM)...",
         container = gp6, anchor = c(-1,1))
  addSpace(gp6, .5, horizontal=FALSE)
  ans6 <- c("(a)  to fit data based on local, not global, models ",
            "(b)  to fit a model using smoother algorithms without a priori assumptions of model linearity or nonlinearity",
            "(c)  to incorporate appropriate, potentially non-normal, error structures.",
            "(d)  All of the above.",
            "(e)  (a) and (b) above.")
  
  r6 <- gcheckboxgroup(ans6, container = gp6, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r6, handler = function(h,....){
    if(tail(svalue(r6),1) == ans6[1]){
      gmessage(message="Partially correct",  icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[2]){
      gmessage(message="Partially correct",  icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[3]){
      gmessage(message="Partially correct",  icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[4]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r6),1)== ans6[5]){
      gmessage(message="Partially correct. The answer (c) is also true.",  icon = "error")
    }
    svalue(r6) <- character(0)
  })
  
  gp7 <- ggroup(container = q7, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("We of the following is a (are) nonlinear models(s), appropriate for fitting with R function nls?",
         container = gp7, anchor = c(-1,1))
  addSpace(gp7, .5, horizontal=FALSE)
  ans7 <- c("(a)  Y\u1d62 = \u03b2\u2092 + \u03b2\u2081X\u2081\u1d62 + \u03b2\u2082X\u2082\u1d62 + \u03b5\u1d62 ",
            "(b)  Y\u1d62 = \u03b2\u2092 + \u03b2\u2081X\u2081\u1d62 + \u03b2\u2082X\u00b2\u2081\u1d62 + \u03b5\u1d62 ",
            "(c)  Y\u1d62 = \u03b2\u2092X\u1d62/(\u03b2\u2081 + X\u1d62) + \u03b5\u1d62",
            "(d)  All of the above.",
            "(e)  (b) and (c) above.")
  
  r7 <- gcheckboxgroup(ans7, container = gp7, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r7, handler = function(h,....){
    if(tail(svalue(r7),1) == ans7[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[3]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r7),1)== ans7[4]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[5]){
      gmessage(message="Incorrect",  icon = "error")
    }
    svalue(r7) <- character(0)
  })
}
  
  
  
