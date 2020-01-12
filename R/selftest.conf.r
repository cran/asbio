selftest.conf.tck1 <- function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "Confidence intervals")
  size(w) <- c(700, 400)
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
  q1 <- gexpandgroup("Question 1", container=g, anchor=c(-1,1))
  q2 <- gexpandgroup("Question 2", container=g, anchor=c(-1,1))
  q3 <- gexpandgroup("Question 3", container=g, anchor=c(-1,1))
  q4 <- gexpandgroup("Question 4", container=g, anchor=c(-1,1))

  
  visible(q2) <- FALSE
  
  #------------- Question 1 -----------#
  
  gp1 <- ggroup(container = q1, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("A 95% confidence interval for \u03bc is calculated with the following confidence limits: (24, 28).  \nWhat is the correct interpretation of this result?", container = gp1, anchor = c(-1,1))
  addSpace(gp1, .5, horizontal=FALSE)
  
  ans1 <- c("(a)  There is a probability of 0.95 that \u03bc will be between 24 and 28.",
            "(b)  We have 95% confidence that \u03bc will be between 24 and 28.",
            "(c)  We have 95% confidence that the sample mean will be between 24 and 28.",
            "(d)  There is a probability of 0.95 that the sample mean will be between 24 and 28.")
  
  r1 <- gcheckboxgroup(ans1, container = gp1, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r1, handler = function(h,....){
    if(tail(svalue(r1),1) == ans1[1]){
      gmessage(message="Incorrect. The interval has been calculated.  The interval will either contain mu, or it will not, i.e. the probability that the interval contains mu is either 0 or 1.",  icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[2]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r1),1)== ans1[3]){
      gmessage(message="Incorrect. The confidence interval for mu is calculated using the sample mean, and as a result the sample mean will always be in the confidence interval interval for mu", icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[4]){
      gmessage(message="Incorrect. This answer is incorrect for several reasons.  For one thing the confidence interval for mu is calculated using the sample mean, and as a result the sample mean will always be in the confidence interval interval for mu", icon = "error")
    }
    svalue(r1) <- character(0)
  })
  
  
  #------------- Question 2 -----------#
  gp2 <- ggroup(container = q2, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("(T or F) If one hundred confidence intervals for \u03bc are calculated then, \non average, a proportion of 1 - \u03b1 of these will contain \u03bc.", container = gp2, anchor = c(-1,1))
  addSpace(gp2, .5, horizontal=FALSE)
  
  
  ans2 <- c("True",
            "False")
  
    r2 <- gcheckboxgroup(ans2, container = gp2, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r2, handler = function(h,....){
    if(tail(svalue(r2),1) == ans2[1]){
      gmessage(message="Correct.  The definition given is correct, and is often used to help conceptualize confidence intervals.")
    }
    if(tail(svalue(r2),1)== ans2[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
   
    svalue(r2) <- character(0)
  })
  
  
  #------------- Question 3 -----------#
  gp3 <- ggroup(container = q3, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("The standard error of the mean statistic is calculated using?", container = gp3, anchor = c(-1,1))
  addSpace(gp3, .5, horizontal=FALSE)
  ans3 <- c("(a)  S/\u221an",
            "(b)  S/n",
            "(c)  S\u00b2/n",
            "(d)  S\u00b2/\u221an")
  
  r3 <- gcheckboxgroup(ans3, container = gp3, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r3, handler = function(h,....){
    if(tail(svalue(r3),1) == ans3[1]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r3),1)== ans3[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[3]){
      gmessage(message="Incorrect.  This is an estimator for the sampling distribution variance", icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r3) <- character(0)
  })
  
  #------------- Question 4 -----------#
  
  gp4 <- ggroup(container = q4, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("In general, a standard error is...", container = gp4, anchor = c(-1,1))
  addSpace(gp4, .5, horizontal=FALSE)
  ans4 <- c("(a) The variance of a sampling distribution.",
            "(b) The median of a sampling distribution.",
            "(c) The standard deviation of a sampling distribution.",
            "(d) The mean of a sampling distribution.")
  
  r4 <- gcheckboxgroup(ans4, container = gp4, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r4, handler = function(h,....){
    if(tail(svalue(r4),1) == ans4[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[3]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r4),1)== ans4[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r4) <- character(0)
  })
}

