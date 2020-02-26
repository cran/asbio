selftest.ttest.tck <- function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "t-tests")
  size(w) <- c(700, 900)
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
  q1 <- gexpandgroup("Question 1", container=g, anchor=c(-1,1))
  q2 <- gexpandgroup("Question 2", container=g, anchor=c(-1,1))
  q3 <- gexpandgroup("Question 3", container=g, anchor=c(-1,1))
  q4 <- gexpandgroup("Question 4", container=g, anchor=c(-1,1))
  q5 <- gexpandgroup("Question 5", container=g, anchor=c(-1,1))
  q6 <- gexpandgroup("Question 6", container=g, anchor=c(-1,1))
  q7 <- gexpandgroup("Question 7", container=g, anchor=c(-1,1))
  q8 <- gexpandgroup("Question 8", container=g, anchor=c(-1,1))
  q9 <- gexpandgroup("Question 9", container=g, anchor=c(-1,1))
  q10 <- gexpandgroup("Question 10", container=g, anchor=c(-1,1))
  q11 <- gexpandgroup("Question 11", container=g, anchor=c(-1,1))
  q12 <- gexpandgroup("Question 12", container=g, anchor=c(-1,1))
  q13 <- gexpandgroup("Question 13", container=g, anchor=c(-1,1))
  q14 <- gexpandgroup("Question 14", container=g, anchor=c(-1,1))
  q15 <- gexpandgroup("Question 15", container=g, anchor=c(-1,1))
  q16 <- gexpandgroup("Question 16", container=g, anchor=c(-1,1))
  
  
  #------------- Question 1 -----------#
  
  gp1 <- ggroup(container = q1, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("We sample from a normal distribution with unknown mean, \u03bc, and known variance, \u03c3\u00b2.  \nWe want to conduct a null hypothesis test concerning the value of \u03bc.  We would use a...", container = gp1, anchor = c(-1,1))
  addSpace(gp1, .5, horizontal=FALSE)
  ans1 <- c("(a)  pooled variance t-test.",
            "(b)  Welch t-test.",
            "(c)  paired t-test.",
            "(d)  one sample z-test.",
            "(e)  one sample t-test."
  )
  
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
    if(tail(svalue(r1),1)== ans1[5]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r1) <- character(0)
  })
  
  
  #------------- Question 2 -----------#
  
  gp2 <- ggroup(container = q2, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("We sample from a normal distribution with unknown mean, \u03bc, and unknown variance, \u03c3\u00b2.  \nWe want to conduct a null hypothesis test concerning the value of \u03bc.  We would use a...", container = gp2, anchor = c(-1,1))
  addSpace(gp2, .5, horizontal=FALSE)
  ans2 <- c("(a)  pooled variance t-test.",
            "(b)  Welch t-test.",
            "(c)  paired t-test.",
            "(d)  one sample z-test.",
            "(e)  one sample t-test."
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
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[5]){
      gmessage(message="Correct")
    }
    svalue(r2) <- character(0)
  })  
  
  #------------- Question 3 -----------#
  
  gp3 <- ggroup(container = q3, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("We sample from two normal distributions with unknown means, \u03bc\u2081, \u03bc\u2082, and common variance, \u03c3\u00b2 \n(i.e., we assume \u03c3\u00b2\u2081 = \u03c3\u00b2\u2082 = \u03c3\u00b2). We want to conduct a null hypothesis test concerning \nthe value of \u03bc\u2081 - \u03bc\u2082.  We would use a...", container = gp3, anchor = c(-1,1))
  addSpace(gp3, .5, horizontal=FALSE)
  ans3 <- c("(a)  pooled variance t-test.",
            "(b)  Welch t-test.",
            "(c)  paired t-test.",
            "(d)  one sample z-test.",
            "(e)  one sample t-test."
  )
  
  r3 <- gcheckboxgroup(ans3, container = gp3, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r3, handler = function(h,....){
    if(tail(svalue(r3),1) == ans3[1]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r3),1)== ans3[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[3]){
      gmessage(message="Incorrect", icon = "error")
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
  glabel("We have a blocked experimental design and in each block we have two treatments.  \nWe measure the differences of treatments in blocks and assume that these differences come from a normal \ndistribution with an unknown mean and an unknown variance.  We want to conduct a null hypothesis test \nconcerning the value of the unknown true mean of differences.  We would use a...", container = gp4, anchor = c(-1,1))
  addSpace(gp4, .5, horizontal=FALSE)
  ans4 <- c("(a)  pooled variance t-test.",
            "(b)  Welch t-test.",
            "(c)  paired t-test.",
            "(d)  one sample z-test.",
            "(e)  one sample t-test."
  )
  
  r4 <- gcheckboxgroup(ans4, container = gp4, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r4, handler = function(h,....){
    if(tail(svalue(r4),1) == ans4[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1) == ans4[3]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r4),1)== ans4[4]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[5]){
      gmessage(message="Incorrect",  icon = "error")
    }
    svalue(r4) <- character(0)
  }) 
  
  #------------- Question 5 -----------#
  
  gp5 <- ggroup(container = q5, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("We sample from two normal distributions with unknown means, \u03bc\u2081, \u03bc\u2082, and unknown variances, \u03c3\u00b2\u2081 and \u03c3\u00b2\u2082. \nWe want to conduct a null hypothesis test concerning the value of \u03bc\u2081 - \u03bc\u2082.  We would use a...", container = gp5, anchor = c(-1,1))
  addSpace(gp5, .5, horizontal=FALSE)
  ans5 <- c("(a)  pooled variance t-test.",
            "(b)  Welch t-test.",
            "(c)  paired t-test.",
            "(d)  one sample z-test.",
            "(e)  one sample t-test."
  )
  
  r5 <- gcheckboxgroup(ans5, container = gp5, checked = FALSE, where = "beginning")
  addhandlerclicked(r5, handler = function(h,....){
    if(tail(svalue(r5),1) == ans5[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[2]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r5),1) == ans5[3]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[4]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[5]){
      gmessage(message="Incorrect",  icon = "error")
    }
    svalue(r5) <- character(0)
  })
  
  #------------- Question 6 -----------#
  gp6 <- ggroup(container = q6, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("To calculate the pooled variance t-test test statistic we must calculate...", container = gp6, anchor = c(-1,1))
  addSpace(gp6, .5, horizontal=FALSE)
  ans6 <- c("(a)  MSE.",
            "(b)  the Satterthwaite degrees of freedom.",
            "(c)  the standard deviation of differences within blocks.",
            "(d)  the mean of differences within blocks.",
            "(e)  (c) and (d)."
  )
  
  
  r6 <- gcheckboxgroup(ans6, container = gp6, checked = FALSE, where = "beginning")
  addhandlerclicked(r6, handler = function(h,....){
    if(tail(svalue(r6),1)== ans6[1]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r6),1)== ans6[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r6),1) == ans6[3]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[4]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[5]){
      gmessage(message="Incorrect",  icon = "error")
    }
    svalue(r6) <- character(0)
  })
  
  #------------- Question 7 -----------#
  
  gp7 <- ggroup(container = q7, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("To calculate the paired t-test test statistic we must calculate...", container = gp7, anchor = c(-1,1))
  addSpace(gp7, .5, horizontal=FALSE)
  ans7 <- c("(a)  MSE.",
            "(b)  the Satterthwaite degrees of freedom.",
            "(c)  the standard deviation of differences within blocks.",
            "(d)  the mean of differences within blocks.",
            "(e)  (c) and (d)."
  )
  
  
  r7 <- gcheckboxgroup(ans7, container = gp7, checked = FALSE, where = "beginning")
  addhandlerclicked(r7, handler = function(h,....){
    if(tail(svalue(r7),1) == ans7[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r7),1) == ans7[3]){
      gmessage(message="Partially correct",  icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[4]){
      gmessage(message="Partially correct",  icon = "error")
    }
    if(tail(svalue(r7),1) == ans7[5]){
      gmessage(message="Correct")
    }
    svalue(r7) <- character(0)
  })
  
  #------------- Question 8 -----------#
  
  gp8 <- ggroup(container = q8, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("To calculate the Welch t-test p-value we must calculate...", container = gp8, anchor = c(-1,1))
  addSpace(gp8, .5, horizontal=FALSE)
  ans8 <- c("(a)  MSE.",
            "(b)  the Satterthwaite degrees of freedom.",
            "(c)  the standard deviation of differences within blocks.",
            "(d)  the mean of differences within blocks.",
            "(e)  (c) and (d)."
  )
  
  
  r8 <- gcheckboxgroup(ans8, container = gp8, checked = FALSE, where = "beginning")
  addhandlerclicked(r8, handler = function(h,....){
    if(tail(svalue(r8),1) == ans8[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r8),1)== ans8[2]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r8),1) == ans8[3]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r8),1)== ans8[4]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r8),1) == ans8[5]){
      gmessage(message="Incorrect",  icon = "error")
    }
    svalue(r8) <- character(0)
  })
  
  #------------- Question 9 -----------#
  
  gp9 <- ggroup(container = q9, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("the null distribution for a one sample z-test is...", container = gp9, anchor = c(-1,1))
  addSpace(gp9, .5, horizontal=FALSE)
  ans9 <- c("(a)  t(n-1).",
            "(b)  t(n\u2081 + n\u2082 - 2).",
            "(c)  t(\u03bd), where \u03bd = the Satterthwaite degrees of freedom.",
            "(d)  N(0,1).")
  
  
  r9 <- gcheckboxgroup(ans9, container = gp9, checked = FALSE, where = "beginning")
  addhandlerclicked(r9, handler = function(h,....){
    if(tail(svalue(r9),1) == ans9[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r9),1)== ans9[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r9),1) == ans9[3]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r9),1)== ans9[4]){
      gmessage(message="Correct")
    }
    svalue(r9) <- character(0)
  })
  
  
  #------------- Question 10 -----------#
  
  gp10 <- ggroup(container = q10, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("the null distribution for a pooled variance t-test is...", container = gp10, anchor = c(-1,1))
  addSpace(gp10, .5, horizontal=FALSE)
  ans10 <- c("(a)  t(n-1).",
             "(b)  t(n\u2081 + n\u2082 - 2).",
             "(c)  t(\u03bd), where \u03bd = the Satterthwaite degrees of freedom.",
             "(d)  N(0,1).")
  
  
  r10 <- gcheckboxgroup(ans10, container = gp10, checked = FALSE, where = "beginning")
  addhandlerclicked(r10, handler = function(h,....){
    if(tail(svalue(r10),1) == ans10[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r10),1)== ans10[2]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r10),1) == ans10[3]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r10),1)== ans10[4]){
      gmessage(message="Incorrect",  icon = "error")
    }
    svalue(r10) <- character(0)
  })
  
  
  #------------- Question 11 -----------#
  
  gp11 <- ggroup(container = q11, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("the null distribution for a paired t-test is...", container = gp11, anchor = c(-1,1))
  addSpace(gp11, .5, horizontal=FALSE)
  ans11 <- c("(a)  t(n-1).",
             "(b)  t(n\u2081 + n\u2082 - 2).",
             "(c)  t(\u03bd), where \u03bd = the Satterthwaite degrees of freedom.",
             "(d)  N(0,1).")
  
  
  r11 <- gcheckboxgroup(ans11, container = gp11, checked = FALSE, where = "beginning")
  addhandlerclicked(r11, handler = function(h,....){
    if(tail(svalue(r11),1) == ans11[1]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r11),1)== ans11[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r11),1) == ans11[3]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r11),1)== ans11[4]){
      gmessage(message="Incorrect",  icon = "error")
    }
    svalue(r11) <- character(0)
  })
  
  
  #------------- Question 12 -----------#
  
  gp12 <- ggroup(container = q12, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("the null distribution for a Welch t-test is...", container = gp12, anchor = c(-1,1))
  addSpace(gp12, .5, horizontal=FALSE)
  ans12 <- c("(a)  t(n-1).",
             "(b)  t(n\u2081 + n\u2082 - 2)",
             "(c)  t(\u03bd), where \u03bd = the Satterthwaite degrees of freedom",
             "(d)  N(0,1).")
  
  
  r12 <- gcheckboxgroup(ans12, container = gp12, checked = FALSE, where = "beginning")
  addhandlerclicked(r12, handler = function(h,....){
    if(tail(svalue(r12),1) == ans12[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r12),1)== ans12[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r12),1) == ans12[3]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r12),1)== ans12[4]){
      gmessage(message="Incorrect",  icon = "error")
    }
    svalue(r12) <- character(0)
  })
  
  #------------- Question 13 -----------#
  
  gp13 <- ggroup(container = q13, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("the null hypothesis for the Fligner-Killeen test is...", container = gp13, anchor = c(-1,1))
  addSpace(gp13, .5, horizontal=FALSE)
  ans13 <- c("(a)  H\u2080: \u03bc = \u03bc\u2080.",
             "(b)  H\u2080: \u03bc\u2081 = \u03bc\u2082.",
             "(c)  H\u2080: The underlying population is normal.",
             "(d)  H\u2080: \u03c3\u00b2\u2081 = \u03c3\u00b2\u2082.")
  
  
  r13 <- gcheckboxgroup(ans13, container = gp13, checked = FALSE, where = "beginning")
  addhandlerclicked(r13, handler = function(h,....){
    if(tail(svalue(r13),1) == ans13[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r13),1)== ans13[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r13),1) == ans13[3]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r13),1)== ans13[4]){
      gmessage(message="Correct")
    }
    svalue(r13) <- character(0)
  })
  
  
  #------------- Question 14 -----------#
  
  gp14 <- ggroup(container = q14, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("the null hypothesis for the Shapiro-Wilk test is...", container = gp14, anchor = c(-1,1))
  addSpace(gp14, .5, horizontal=FALSE)
  ans14 <- c("(a)  H\u2080: \u03bc = \u03bc\u2080.",
             "(b)  H\u2080: \u03bc\u2081 = \u03bc\u2082.",
             "(c)  H\u2080: The underlying population is normal.",
             "(d)  H\u2080: \u03c3\u00b2\u2081 = \u03c3\u00b2\u2082.")
  
  
  r14 <- gcheckboxgroup(ans14, container = gp14, checked = FALSE, where = "beginning")
  addhandlerclicked(r14, handler = function(h,....){
    if(tail(svalue(r14),1) == ans14[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r14),1)== ans14[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r14),1) == ans14[3]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r14),1)== ans14[4]){
      gmessage(message="Incorrect",  icon = "error")
    }
    svalue(r14) <- character(0)
  })
  
  
  #------------- Question 15 -----------#
  
  gp15 <- ggroup(container = q15, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("The plot below is a...", container = gp15, anchor = c(-1,1))
  addSpace(gp15, .1, horizontal=FALSE)
  x <- rnorm(20)
  gp15.1 <- getToolkitWidget(gp15)
  img <- tkrplot(gp15.1, function(){ 
    par(bg = "white", mar = c(4.5,4.1,1,1))
    qqnorm(x, cex.lab =.9, main = "")
    qqline(x, col = 2, lty = 2)
  }
  )
  add(gp15, img)
  addSpace(gp15, .1, horizontal=FALSE)
  ans15 <- c("(a) regression plot.",
             "(b) heteroscedasticy plot.",
             "(c) normal probability plot.",
             "(d) homoscedasticity plot.")
  
  
  r15 <- gcheckboxgroup(ans15, container = gp15, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r15, handler = function(h,....){
    if(tail(svalue(r15),1) == ans15[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r15),1)== ans15[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r15),1)== ans15[3]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r15),1)== ans15[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r15) <- character(0)
  })     
  
  #------------- Question 16 -----------#
  
  gp16 <- ggroup(container = q16, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("the plot from the previous question is generally used to...", container = gp16, anchor = c(-1,1))
  addSpace(gp16, .5, horizontal=FALSE)
  ans16 <- c("(a)  Check for the validity of the equal variances assumption.",
             "(b)  Check for the validity of the assumption of normality.",
             "(c)  Check for the validity of the assumption of independence.",
             "(d)  Check for outliers.")
  
  
  r16 <- gcheckboxgroup(ans16, container = gp16, checked = FALSE, where = "beginning")
  addhandlerclicked(r16, handler = function(h,....){
    if(tail(svalue(r16),1) == ans16[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r16),1)== ans16[2]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r16),1) == ans16[3]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r16),1)== ans16[4]){
      gmessage(message="Incorrect",  icon = "error")
    }
    svalue(r16) <- character(0)
  })
  
}


