selftest.sampd.tck1 <- function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "Sampling distributions")
  size(w) <- c(700, 400)
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
  glabel("A sampling distribution can be best described as a...", container = gp1, anchor = c(-1,1))
  addSpace(gp1, .5, horizontal=FALSE)
  ans1 <- c("(a) A sample of individuals from a parent population one wishes to make inference to.  ",
            "(b) An idealization, describing an infinite number of independent statistical estimates (e.g., arithmetic means) \ntaken from the same parent distribution, using the same sample size.",
            "(c) A collection of statistics describing outcomes from a particular experiment.  ",
            "(d) A collection of random samples from a normal distribution.   ")
  
  r1 <- gcheckboxgroup(ans1, container = gp1, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r1, handler = function(h,....){
    if(tail(svalue(r1),1) == ans1[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[2]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r1),1)== ans1[3]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r1) <- character(0)
  })
  
  
  #------------- Question 2 -----------#
  gp2 <- ggroup(container = q2, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("If the parent distribution is \u0059 ~ N(\u03bc, \u03c3\u00b2), then the sampling distribution of \u0232 will be: ", container = gp2, anchor = c(-1,1))
  addSpace(gp2, .5, horizontal=FALSE)
  
  
  ans2 <- c("(a)    \u0232 ~ N(\u0232, \u03c3\u00b2).",
            "(b)    \u0232 ~ N(\u03bc, \u03c3/n).",
            "(c)    \u0232 ~ N(\u03bc/n, \u03c3\u00b2).",
            "(d)    \u0232 ~ N(\u03bc, \u03c3\u00b2/n).")
  
  
  r2 <- gcheckboxgroup(ans2, container = gp2, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r2, handler = function(h,....){
    if(tail(svalue(r2),1) == ans2[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[3]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[4]){
      gmessage(message="Correct")
    }
    svalue(r2) <- character(0)
  })
  
  
  #------------- Question 3 -----------#
  gp3 <- ggroup(container = q3, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("Which of the following describes the Central Limit Theorem?", container = gp3, anchor = c(-1,1))
  addSpace(gp3, .5, horizontal=FALSE)
  ans3 <- c("(a)  If Y ~ N(\u03bc, \u03c3\u00b2), then \u0232 ~ N(\u03bc/n, \u03c3\u00b2/n).",
            "(b)  If the sample size from Y is large, then the variance for the sampling distribution of \u0232 will be small.",
            "(c)  Even if Y is not normal, if the sample size from Y is large, then \u0232 will be approximately normal.",
            "(d)  None of the above.")
  
  r3 <- gcheckboxgroup(ans3, container = gp3, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r3, handler = function(h,....){
    if(tail(svalue(r3),1) == ans3[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[2]){
      gmessage(message="This does occur, but it is due to the Law of Large Numbers, not the Central Limit Theorem.",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[3]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r3),1)== ans3[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r3) <- character(0)
  })
  
  #------------- Question 4 -----------#
  
  gp4 <- ggroup(container = q4, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("Which of the following statistics have sampling distributions?", container = gp4, anchor = c(-1,1))
  addSpace(gp4, .5, horizontal=FALSE)
  ans4 <- c("(a) The sample mean",
            "(b) The sample median",
            "(c) The sample standard deviation.",
            "(d) All of the above.")
  
  r4 <- gcheckboxgroup(ans4, container = gp4, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r4, handler = function(h,....){
    if(tail(svalue(r4),1) == ans4[1]){
      gmessage(message="Partially correct",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[2]){
      gmessage(message="Partially correct", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[3]){
      gmessage(message="Partially correct", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[4]){
      gmessage(message="Correct.  Any statistical estimator can have a sampling distribution.")
    }
    svalue(r4) <- character(0)
  })
  
  #------------- Question 5 -----------#
  
  gp5 <- ggroup(container = q5, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("We sample from a normal parent distribution we to make inference to, Y with sample size n.  \nAssume that \u03bc\u2080 is equal to the mean of Y, \u03bc. That is, assume \u03bc = \u03bc\u2080.  \n\nWhat is the sampling distribution of \u221an(\u0232 - \u03bc\u2080)/S,  where is S is the sample standard deviation. 
         ",  container = gp5, anchor = c(-1,1))
  addSpace(gp5, .5, horizontal=FALSE)
  ans5 <- c("(a)  N(0,1)",
            "(b)  F(n - 1, n - 1)",
            "(c)  t(n - 1)",
            "(d)  t(n)")
  
  r5 <- gcheckboxgroup(ans5, container = gp5, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r5, handler = function(h,....){
    if(tail(svalue(r5),1) == ans5[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[3]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r5),1)== ans5[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r5) <- character(0)
  })
  
  
  #------------- Question 6 -----------#
  
  gp6 <- ggroup(container = q6, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("Given the assumptions in Question 4, what is the sampling distribution of \u221an(\u0232 - \u03bc\u2080)/\u03c3",
         container = gp6, anchor = c(-1,1))
  addSpace(gp6, .5, horizontal=FALSE)
  ans6 <- c("(a)  N(0,1)",
            "(b)  F(n - 1, n - 1)",
            "(c)  t(n - 1)",
            "(d)  t(n)")
  
  r6 <- gcheckboxgroup(ans6, container = gp6, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r6, handler = function(h,....){
    if(tail(svalue(r6),1) == ans6[1]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r6),1)== ans6[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[3]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[4]){
      gmessage(message="Incorrect",  icon = "error")
    }
    svalue(r6) <- character(0)
  })
  
  gp7 <- ggroup(container = q7, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("We sample from two normal distributions, Y\u2081 and Y\u2082, with sample sizes n\u2081 and n\u2082, respectively.  \nWe assume that the variances of Y\u2081 and Y\u2082 are equal.  \n\nWhat is the sampling distribution of the sample variances: S\u2081\u00b2/S\u2082\u00b2",
         container = gp7, anchor = c(-1,1))
  addSpace(gp7, .5, horizontal=FALSE)
  ans7 <- c("(a)  N(0,1)",
            "(b)  F(n - 1, n - 1)",
            "(c)  t(n - 1)",
            "(d)  t(n)")
  
  r7 <- gcheckboxgroup(ans7, container = gp7, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r7, handler = function(h,....){
    if(tail(svalue(r7),1) == ans7[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[2]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r7),1)== ans7[3]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[4]){
      gmessage(message="Incorrect",  icon = "error")
    }
    svalue(r7) <- character(0)
  })
  
  
  
}

