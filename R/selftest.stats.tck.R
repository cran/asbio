selftest.stats.tck <- function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "Parameters and Statistics")
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
  
  #visible(q2) <- FALSE
  
  #------------- Question 1 -----------#
  gp1 <- ggroup(container = q1, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("Which describes the expected value of a discrete random variable X?", container = gp1, anchor = c(-1,1))
  addSpace(gp1, .5, horizontal=FALSE)
  ans1 <- c("(a)     E(X) = \u2211\u2093 xf(x).",
            "(b)     The arithmetic mean given all possible outcomes from X.",
            "(c)     E(X) = \u2211\u2093 f(x).",
            "(d)     (a) and (b) only.",
            "(e)     (b) and (c) only.")
  
  r1 <- gcheckboxgroup(ans1, container = gp1, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r1, handler = function(h,....){
    if(tail(svalue(r1),1) == ans1[1]){
      gmessage(message="Partially correct", icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[2]){
      gmessage(message="Partially correct", icon = "error")
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
  glabel("The variance of a random variable X is computed as:", container = gp2, anchor = c(-1,1))
  addSpace(gp2, .5, horizontal=FALSE)
  ans2 <- c("(a) Var(X) =  E(X\u00B2) - E(X)\u00B2.",
            "(b) Var(X) =  E(X)\u00B2 - E(X\u00B2).",
            "(c) Var(X) =  E(X\u00B2) + E(X)\u00B2.",
            "(d) Var(X) =  E(X)\u00B2 + E(X\u00B2).")
  
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
  glabel("For a random variable X, assume that f(x) = 0.5(x/4) for x = 1, 3, and 4, and that f(x) = 0 for all other x outcomes. \nWhat is E(X)?",
         container = gp3, anchor = c(-1,1))
  addSpace(gp3, .5, horizontal=FALSE)
  ans3 <- c("(a)  1",
            "(b)  3.25",
            "(c)  2.5",
            "(d)  0")
  
  r3 <- gcheckboxgroup(ans3, container = gp3, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r3, handler = function(h,....){
    if(tail(svalue(r3),1) == ans3[1]){
      gmessage(message="Incorrect.  Make a table of probabilities for x outcomes and try again.",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[2]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r3),1)== ans3[3]){
      gmessage(message="Incorrect.  Make a table of probabilities for x outcomes and try again.",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[4]){
      gmessage(message="Incorrect.  Make a table of probabilities for x outcomes and try again.",  icon = "error")
    }
    svalue(r3) <- character(0)
  })
  
  #------------- Question 4 -----------#
  
  gp4 <- ggroup(container = q4, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("For the pdf in question 3, what is E(X\u00B2)?",
         container = gp4, anchor = c(-1,1))
  addSpace(gp4, .5, horizontal=FALSE)
  ans4 <- c("(a)  1",
            "(b)  3.25",
            "(c)  11.5",
            "(d)  42.25")
  
  r4 <- gcheckboxgroup(ans4, container = gp4, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r4, handler = function(h,....){
    if(tail(svalue(r4),1) == ans4[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[2]){
      gmessage(message="Incorrect.  This is E(X)")
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
  glabel("For the pdf in question 3, what is Var(X)?",
         container = gp5, anchor = c(-1,1))
  addSpace(gp5, .5, horizontal=FALSE)
  ans5 <- c("(a)  0.9375",
            "(b)  1",
            "(c)  20.75",
            "(d)  \u221E")
  
  r5 <- gcheckboxgroup(ans5, container = gp5, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r5, handler = function(h,....){
    if(tail(svalue(r5),1) == ans5[1]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r5),1)== ans5[2]){
      gmessage(message="Incorrect.  This is E(X)")
    }
    if(tail(svalue(r5),1)== ans5[3]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[4]){
      gmessage(message="Incorrect",  icon = "error")
    }
    svalue(r5) <- character(0)
  })
  
  #------------- Question 6 -----------#
  
  gp6 <- ggroup(container = q6, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("The efficacy of a statistical estimator can be be quantified using its...", container = gp6, anchor = c(-1,1))
  addSpace(gp6, .5, horizontal=FALSE)
  ans6 <- c("(a)  stress.",
            "(b)  bias.",
            "(c)  consistency.",
            "(d)  efficiency.",
            "(e)  all but (a) are correct")
  
  r6 <- gcheckboxgroup(ans6, container = gp6, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r6, handler = function(h,....){
    if(tail(svalue(r6),1) == ans6[1]){
      gmessage(message="Incorrect",icon="error")
    }
    if(tail(svalue(r6),1)== ans6[2]){
      gmessage(message="Partially correct.  Bias is an important characteristic to consider in estimators.",icon="error")
    }
    if(tail(svalue(r6),1)== ans6[3]){
      gmessage(message="Partially correct.  Consistency is an important characteristic to consider in estimators.",icon="error")
    }
    if(tail(svalue(r6),1)== ans6[4]){
      gmessage(message="Partially correct.  Efficiency is an important characteristic to consider in estimators.", icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[5]){
      gmessage(message="Correct")
    }
    svalue(r6) <- character(0)
  })
  
  #------------- Question 7 -----------#
  
  gp7 <- ggroup(container = q7, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("From a random variable Y we observe the outcomes: y\u2081, y\u2082,...,y\u2099. Then, \u0233 =  7 is a(n)", container = gp7, anchor = c(-1,1))
  addSpace(gp7, .5, horizontal=FALSE)
  ans7 <- c("(a)  parameter.",
            "(b)  statistic.",
            "(c)  estimator.",
            "(d)  estimate.",
            "(e)  (b) and (d) above.",
            "(f)  (b) and (c) above.")
  
  r7 <- gcheckboxgroup(ans7, container = gp7, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r7, handler = function(h,....){
    if(tail(svalue(r7),1) == ans7[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[2]){
      gmessage(message="Partially correct", icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[3]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[4]){
      gmessage(message="Partially correct", icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[5]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r7),1)== ans7[6]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r7) <- character(0)
  })
  
  #------------- Question 8 -----------#
  
  gp8 <- ggroup(container = q8, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("From a random variable Y we observe the outcomes: y\u2081, y\u2082,...,y\u2099. Then, \u0232 is a(n)", container = gp8, anchor = c(-1,1))
  addSpace(gp8, .5, horizontal=FALSE)
  ans8 <- c("(a)  parameter.",
            "(b)  statistic.",
            "(c)  estimator.",
            "(d)  estimate.",
            "(e)  (b) and (d) above.",
            "(f)  (b) and (c) above.")
  
  r8 <- gcheckboxgroup(ans8, container = gp8, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r8, handler = function(h,....){
    if(tail(svalue(r8),1) == ans8[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r8),1)== ans8[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r8),1)== ans8[3]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r8),1)== ans8[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r8),1)== ans8[5]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r8),1)== ans8[6]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r8) <- character(0)
  })
  
  #------------- Question 9 -----------#
  
  gp9 <- ggroup(container = q9, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("From a random variable Y we observe the outcomes: y\u2081, y\u2082,...,y\u2099. Then, Var(Y) is a(n)", container = gp9, anchor = c(-1,1))
  addSpace(gp9, .5, horizontal=FALSE)
  ans9 <- c("(a)  parameter.",
            "(b)  statistic.",
            "(c)  estimator.",
            "(d)  estimate.",
            "(e)  (b) and (d) above.",
            "(f)  (b) and (c) above.")
  
  r9 <- gcheckboxgroup(ans9, container = gp9, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r9, handler = function(h,....){
    if(tail(svalue(r9),1) == ans9[1]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r9),1)== ans9[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r9),1)== ans9[3]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r9),1)== ans9[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r9),1)== ans9[5]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r9),1)== ans9[6]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r9) <- character(0)
  })
  
  #------------- Question 10 -----------#
  
  gp10 <- ggroup(container = q10, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("I want to find the mean growth rates given a series of rates. I would use the:", container = gp10, anchor = c(-1,1))
  addSpace(gp10, .5, horizontal=FALSE)
  ans10 <- c("(a) arithmetic mean.",
             "(b) geometric mean",
             "(c) harmonic mean",
             "(d) sample median")
  
  r10 <- gcheckboxgroup(ans10, container = gp10, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r10, handler = function(h,....){
    if(tail(svalue(r10),1) == ans10[1]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r10),1)== ans10[2]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r10),1)== ans10[3]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r10),1)== ans10[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r10) <- character(0)
  })
  
  #------------- Question 11 -----------#
  
  gp11 <- ggroup(container = q11, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("I want a location estimator that is robust to outliers. A widely used option is the:", container = gp11, anchor = c(-1,1))
  addSpace(gp11, .5, horizontal=FALSE)
  ans11 <- c("(a) arithmetic mean.",
             "(b) geometric mean",
             "(c) harmonic mean",
             "(d) sample median")
  
  r11 <- gcheckboxgroup(ans11, container = gp11, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r11, handler = function(h,....){
    if(tail(svalue(r11),1) == ans11[1]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r11),1)== ans11[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r11),1)== ans11[3]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r11),1)== ans11[4]){
      gmessage(message="Correct")
    }
    svalue(r11) <- character(0)
  })
  
  #------------- Question 12 -----------#
  
  gp12 <- ggroup(container = q12, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("I obtain a random sample of four male ISU students and measure their height.  \nThe measures (in meters) are: 2, 1.85, 1.85, and 1.7. \nWhat is arithmetic mean of these data?", container = gp12, anchor = c(-1,1))
  addSpace(gp12, .5, horizontal=FALSE)
  ans12 <- c("1.5m",
             "1.75m",
             "1.85m",
             "1.95m")
  
  r12 <- gcheckboxgroup(ans12, container = gp12, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r12, handler = function(h,....){
    if(tail(svalue(r12),1) == ans12[1]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r12),1)== ans12[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r12),1)== ans12[3]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r12),1)== ans12[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r12) <- character(0)
  })
  
  
  #------------- Question 13 -----------# 
  gp13 <- ggroup(container = q13, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("What is the sample median of the data in Question 12?", container = gp13, anchor = c(-1,1))
  addSpace(gp13, .5, horizontal=FALSE)
  ans13 <- c("1.5m",
             "1.75m",
             "1.85m",
             "1.95m") 
  r13 <- gcheckboxgroup(ans13, container = gp13, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r13, handler = function(h,....){
    if(tail(svalue(r13),1) == ans13[1]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r13),1)== ans13[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r13),1)== ans13[3]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r13),1)== ans13[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r13) <- character(0)
  })  
  
  #------------- Question 14 -----------# 
  gp14 <- ggroup(container = q14, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("What is the sample variance of the data in Question 12?", container = gp14, anchor = c(-1,1))
  addSpace(gp14, .5, horizontal=FALSE)
  ans14 <- c("0.015m",
             "0.015m\u00B2",
             "1.22m",
             "1.22m\u00B2") 
  r14 <- gcheckboxgroup(ans14, container = gp14, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r14, handler = function(h,....){
    if(tail(svalue(r14),1) == ans14[1]){
      gmessage(message="Incorrect.  The units are wrong.", icon = "error")
    }
    if(tail(svalue(r14),1)== ans14[2]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r14),1)== ans14[3]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r14),1)== ans14[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r14) <- character(0)
  })
  
  #------------- Question 15 -----------# 
  gp15 <- ggroup(container = q15, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("What is the sample standard deviation of the data in Question 12?", container = gp15, anchor = c(-1,1))
  addSpace(gp15, .5, horizontal=FALSE)
  ans15 <- c("0.015m",
             "0.015m\u00B2",
             "1.22m",
             "1.22m\u00B2") 
  r15 <- gcheckboxgroup(ans15, container = gp15, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r15, handler = function(h,....){
    if(tail(svalue(r15),1) == ans15[1]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r15),1)== ans15[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r15),1)== ans15[3]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r15),1)== ans15[4]){
      gmessage(message="Incorrect.  The units are wrong.", icon = "error")
    }
    svalue(r15) <- character(0)
  })
  
  
  #------------- Question 16 -----------# 
  gp16 <- ggroup(container = q16, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("(T or F) If a sample includes the entire population, \nthen statistics serve a descriptive instead of an inferential purpose. ", container = gp16, anchor = c(-1,1))
  addSpace(gp16, .5, horizontal=FALSE)
  ans16 <- c("True",
             "False") 
  r16 <- gcheckboxgroup(ans16, container = gp16, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r16, handler = function(h,....){
    if(tail(svalue(r16),1) == ans16[1]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r16),1)== ans16[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r16) <- character(0)
  })
}      


#############################################################################
#############################################################################

selftest.stats.tck1 <- function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "Transformations of random variables")
  size(w) <- c(700, 600)
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
  q1 <- gexpandgroup("Question 1", container=g, anchor=c(-1,1))
  q2 <- gexpandgroup("Question 2", container=g, anchor=c(-1,1))
  q3 <- gexpandgroup("Question 3", container=g, anchor=c(-1,1))
  q4 <- gexpandgroup("Question 4", container=g, anchor=c(-1,1))
  q5 <- gexpandgroup("Question 5", container=g, anchor=c(-1,1))
  q6 <- gexpandgroup("Question 6", container=g, anchor=c(-1,1))
  q7 <- gexpandgroup("Question 7", container=g, anchor=c(-1,1))
  
  #------------- Question 1 -----------# 
  gp1 <- ggroup(container = q1, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("Assume that a random variable X has the expected value, E(X) = 2.  \nTo X, I add 3, then multiply by 2.  The new expected value is...", 
         container = gp1, anchor = c(-1,1))
  addSpace(gp1, .5, horizontal=FALSE)
  ans1 <- c("(a)  7",
            "(b)  12",
            "(c)  10",
            "(d)  8") 
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
  glabel("Assume that a random variable X has the variance, Var(X) = 2.  \nTo X, I add 3, then multiply by 2.  The new population variance is...", 
         container = gp2, anchor = c(-1,1))
  addSpace(gp2, .5, horizontal=FALSE)
  ans2 <- c("(a)  7",
            "(b)  12",
            "(c)  10",
            "(d)  8") 
  
  r2 <- gcheckboxgroup(ans2, container = gp2, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r2, handler = function(h,....){
    if(tail(svalue(r2),1) == ans2[1]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[2]){
      gmessage(message="Incorrect", icon = "error")
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
  glabel("(T or F) The sum of two normal random variables is an exponential distribution.", container = gp3, anchor = c(-1,1))
  addSpace(gp3, .5, horizontal=FALSE)
  ans3 <- c("True",
            "False") 
  r3 <- gcheckboxgroup(ans3, container = gp3, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r3, handler = function(h,....){
    if(tail(svalue(r3),1) == ans3[1]){
      gmessage(message="Incorrect.  The sum of two normal random variables will also be normal.", icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[2]){
      gmessage(message="Correct.  The sum of two normal random variables will also be normal.")
    }
    svalue(r3) <- character(0)
  })
  
  #------------- Question 4 -----------# 
  gp4 <- ggroup(container = q4, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("Assume that X ~ N(0, 2), Y ~ N(2, 4), and Z = X - Y.  What is E(Z)?", 
         container = gp4, anchor = c(-1,1))
  addSpace(gp4, .5, horizontal=FALSE)
  ans4 <- c("(a)  -2",
            "(b)  0",
            "(c)  2",
            "(d)  6") 
  r4 <- gcheckboxgroup(ans4, container = gp4, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r4, handler = function(h,....){
    if(tail(svalue(r4),1) == ans4[1]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r4),1)== ans4[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[3]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r4) <- character(0)
  })
  
  #------------- Question 5 -----------# 
  gp5 <- ggroup(container = q5, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("Assume that X ~ N(0, 2), Y ~ N(2, 4), and Z = X - Y.  What is Var(Z)?  \nAssume that X and Y are independent", 
         container = gp5, anchor = c(-1,1))
  addSpace(gp5, .5, horizontal=FALSE)
  ans5 <- c("(a)  -2",
            "(b)  0",
            "(c)  2",
            "(d)  6") 
  r5 <- gcheckboxgroup(ans5, container = gp5, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r5, handler = function(h,....){
    if(tail(svalue(r5),1) == ans5[1]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[3]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[4]){
      gmessage(message="Correct")
    }
    svalue(r5) <- character(0)
  })
  
  
  #------------- Question 6 -----------# 
  gp6 <- ggroup(container = q6, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("Let X ~ N(0, 2), Y ~ N(2, 4), Z = X - Y, and assume X and Y are independent.  Then,", 
         container = gp6, anchor = c(-1,1))
  addSpace(gp6, .5, horizontal=FALSE)
  ans6 <- c("(a)  Cov(X,Y) = 0",
            "(b)  Cov(X,Y) < 0",
            "(c)  Cov(X,Y) > 0",
            "(d)  Cov(X,Y) is undefined") 
  r6 <- gcheckboxgroup(ans6, container = gp6, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r6, handler = function(h,....){
    if(tail(svalue(r6),1) == ans6[1]){
      gmessage(message="Correct.  If X and Y are independent, their covariance will equal 0.")
    }
    if(tail(svalue(r6),1)== ans6[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[3]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r6) <- character(0)
  })
  
  #------------- Question 7 -----------# 
  gp7 <- ggroup(container = q7, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("Let X ~ N(0, 2), Y ~ N(2, 4), Z = X - Y, and assume Cov(X,Y) = 1. What is Var(Z)?", 
         container = gp7, anchor = c(-1,1))
  addSpace(gp7, .5, horizontal=FALSE)
  ans7 <- c("(a)  -2",
            "(b)  0",
            "(c)  4",
            "(d)  6") 
  r7 <- gcheckboxgroup(ans7, container = gp7, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r7, handler = function(h,....){
    if(tail(svalue(r7),1) == ans7[1]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[3]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r7),1)== ans7[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r7) <- character(0)
  })
}