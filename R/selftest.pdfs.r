selftest.pdfs.tck <- function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "Probability Density Functions")
  size(w) <- c(700, 950)
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
  q17 <- gexpandgroup("Question 17", container=g, anchor=c(-1,1))
  q18 <- gexpandgroup("Question 18", container=g, anchor=c(-1,1))
  
  visible(q2) <- FALSE
  
  #------------- Question 1 -----------#
  gp1 <- ggroup(container = q1, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("All but which of the following are requirements for f(x) to be a valid pdf for a random variable X.", container = gp1, anchor = c(-1,1))
  addSpace(gp1, .5, horizontal=FALSE)
  ans1 <- c("(a)     \u2211\u2093 f(x) = 1, if X is discrete.",
            "(b)     \u222B\u2093 f(x) = 1, if X is continuous.",
            "(c)     f(x) \u2265 0 for any x.",
            "(d)     x \u2265 0 for any x.")
  
  r1 <- gcheckboxgroup(ans1, container = gp1, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r1, handler = function(h,....){
    if(tail(svalue(r1),1) == ans1[1]){
      gmessage(message="Incorrect.  This is a characteristic of a valid discrete pdf, i.e., a probability mass function.",  icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[2]){
      gmessage(message="Incorrect.  This is a characteristic of a valid continuous pdf.",  icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[3]){
      gmessage(message="Incorrect.  This is a characteristic of all valid pdfs", icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[4]){
      gmessage(message="Correct.  This is not a requirement for a valid pdf.  In some cases, random variable outcomes, x, may be less than 0")
    }
    svalue(r1) <- character(0)
  })
  
  
  #------------- Question 2 -----------#
  gp2 <- ggroup(container = q2, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("For a discrete random variable, X, which of the following describes the pdf, f(x)?", container = gp2, anchor = c(-1,1))
  addSpace(gp2, .5, horizontal=FALSE)
  ans2 <- c("(a)     P(X < x).  ",
            "(b)     P(X = x).  ",
            "(c)     P(X \u2264 x).  ",
            "(d)     P(X \u2265 z).   ")
  
  r2 <- gcheckboxgroup(ans2, container = gp2, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r2, handler = function(h,....){
    if(tail(svalue(r2),1) == ans2[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[2]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r2),1)== ans2[3]){
      gmessage(message="Incorrect.  This describes the cdf.", icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r2) <- character(0)
  })
  
  #------------- Question 3 -----------#
  
  gp3 <- ggroup(container = q3, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("For a discrete or continuous random variable, X, which of the following describes the cdf, F(x)?", container = gp3, anchor = c(-1,1))
  addSpace(gp3, .5, horizontal=FALSE)
  ans3 <- c("(a)     P(X < x).  ",
            "(b)     P(X = x).  ",
            "(c)     P(X \u2264 x).  ",
            "(d)     P(X \u2265 z).   ")
  
  r3 <- gcheckboxgroup(ans3, container = gp3, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r3, handler = function(h,....){
    if(tail(svalue(r3),1) == ans3[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[2]){
      gmessage(message="Incorrect.  This describes density for a discrete random variable.", icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[3]){
      gmessage(message="Correct.  This probability represents the cdf for both discrete and continuous random variables.  Note that for a continuous pdf, answers (a) and (c) are equivalent.")
    }
    if(tail(svalue(r3),1)== ans3[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r3) <- character(0)
  })
  
  #------------- Question 4 -----------#
  
  gp4 <- ggroup(container = q4, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("For a discrete or continuous random variable, X, what does the inverse cdf, F\u02c9\u00b9, provide?",
         container = gp4, anchor = c(-1,1))
  addSpace(gp4, .5, horizontal=FALSE)
  ans4 <- c("(a)  The outcome x, given a upper-tailed probability.",
            "(b)  The lower-tailed probability of an outcome x.",
            "(c)  The upper-tailed probability of an outcome x.",
            "(d)  The outcome x, given a lower-tailed probability.")
  
  r4 <- gcheckboxgroup(ans4, container = gp4, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r4, handler = function(h,....){
    if(tail(svalue(r4),1) == ans4[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[2]){
      gmessage(message="Incorrect. This describes the cdf", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[3]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[4]){
      gmessage(message="Correct")
    }
    svalue(r4) <- character(0)
  })
  
  
  #------------- Question 5 -----------#
  
  gp5 <- ggroup(container = q5, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("For a discrete random variable X, assume that f(x) = 0.5(x/4) for x = 1, 3, and 4, and that f(x) = 0 for all other x outcomes. \nWhat is P(X = 4)?",
         container = gp5, anchor = c(-1,1))
  addSpace(gp5, .5, horizontal=FALSE)
  ans5 <- c("(a)  1/8",
            "(b)  1/4",
            "(c)  3/8",
            "(d)  1/2")
  
  r5 <- gcheckboxgroup(ans5, container = gp5, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r5, handler = function(h,....){
    if(tail(svalue(r5),1) == ans5[1]){
      gmessage(message="Incorrect.  Make a table of probabilities for x outcomes and try again.",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[2]){
      gmessage(message="Incorrect.  Make a table of probabilities for x outcomes and try again.",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[3]){
      gmessage(message="Incorrect.  Make a table of probabilities for x outcomes and try again.",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[4]){
      gmessage(message="Correct")
    }
    svalue(r5) <- character(0)
  })
  
  
  #------------- Question 6 -----------#
  
  gp6 <- ggroup(container = q6, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("For a discrete random variable X, assume that f(x) = 0.5(x/4) for x = 1, 3, and 4, and that f(x) = 0 for all other x outcomes. \nWhat is P(X < 4)?",
         container = gp6, anchor = c(-1,1))
  addSpace(gp6, .5, horizontal=FALSE)
  ans6 <- c("(a)  1/8",
            "(b)  1/4",
            "(c)  3/8",
            "(d)  1/2")
  
  r6 <- gcheckboxgroup(ans6, container = gp6, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r6, handler = function(h,....){
    if(tail(svalue(r6),1) == ans6[1]){
      gmessage(message="Incorrect.  Make a table of probabilities for x outcomes and try again.",  icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[2]){
      gmessage(message="Incorrect.  Make a table of probabilities for x outcomes and try again.",  icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[3]){
      gmessage(message="Incorrect.  Make a table of probabilities for x outcomes and try again.",  icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[4]){
      gmessage(message="Correct")
    }
    svalue(r6) <- character(0)
  })
  
  
  #------------- Question 7 -----------#
  
  gp7 <- ggroup(container = q7, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("In a continuous distribution, X, with pdf f(x)...", container = gp7, anchor = c(-1,1))
  addSpace(gp7, .5, horizontal=FALSE)
  ans7 <- c("(a)  f(x) = P(X = x).",
            "(b)  P(X = x) = 0.",
            "(c)  P(X \u2264 x) = P(X < x).",
            "(d)  P(X \u2265 x) = P(X > x).",
            "(e)  All of the above",
            "(f)  All of the above but (a).")
  
  r7 <- gcheckboxgroup(ans7, container = gp7, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r7, handler = function(h,....){
    if(tail(svalue(r7),1) == ans7[1]){
      gmessage(message="Incorrect",icon="error")
    }
    if(tail(svalue(r7),1)== ans7[2]){
      gmessage(message="Partially correct",icon="error")
    }
    if(tail(svalue(r7),1)== ans7[3]){
      gmessage(message="Partially correct", icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[4]){
      gmessage(message="Partially correct",  icon = "error")
    }
    if(tail(svalue(r7),1) == ans7[5]){
      gmessage(message="Incorrect",icon="error")
    }
    if(tail(svalue(r7),1) == ans7[6]){
      gmessage(message="Correct")
    }
    svalue(r7) <- character(0)
  })
  
  
  #------------- Question 8 -----------#
  
  gp8 <- ggroup(container = q8, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("What does the normal pdf describe?", container = gp8, anchor = c(-1,1))
  addSpace(gp8, .5, horizontal=FALSE)
  ans8 <- c("(a)  A continuous random variable, e.g., height or weight.",
            "(b)  The number of successes, with a lower limit of 0, and an unbounded upper limit.",
            "(c)  The number of successes, with a lower limit of 0, and an upper bound of n.",
            "(d)  A discrete random variable, e.g. height or weight.")
  
  r8 <- gcheckboxgroup(ans8, container = gp8, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r8, handler = function(h,....){
    if(tail(svalue(r8),1) == ans8[1]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r8),1)== ans8[2]){
      gmessage(message="Incorrect.  The normal distribution describes continuous random variables.", icon = "error")
    }
    if(tail(svalue(r8),1)== ans8[3]){
      gmessage(message="Incorrect.  The normal distribution describes continuous random variables.", icon = "error")
    }
    if(tail(svalue(r8),1)== ans8[4]){
      gmessage(message="Incorrect.  Height and weight are continuous.", icon = "error")
    }
    svalue(r8) <- character(0)
  })
  
  
  
  #------------- Question 9 -----------#
  
  gp9 <- ggroup(container = q9, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("What does the binomial pdf describe?", container = gp9, anchor = c(-1,1))
  addSpace(gp9, .5, horizontal=FALSE)
  ans9 <- c("(a)  A continuous random variable, e.g., height or weight.",
            "(b)  The number of successes, with a lower limit of 0, and an unbounded upper limit.",
            "(c)  The number of successes, with a lower limit of 0, and an upper bound of n.",
            "(d)  A discrete random variable, e.g. height or weight.")
  
  r9 <- gcheckboxgroup(ans9, container = gp9, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r9, handler = function(h,....){
    if(tail(svalue(r9),1) == ans9[1]){
      gmessage(message="Incorrect.  The binomial pdf describes discrete random variables.",icon="error")
    }
    if(tail(svalue(r9),1)== ans9[2]){
      gmessage(message="Incorrect.  The upper bound will equal the number of trials, n",icon="error")
    }
    if(tail(svalue(r9),1)== ans9[3]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r9),1)== ans9[4]){
      gmessage(message="Incorrect.  The binomial pdf describes discrete random variables.  Height and weight are not discrete.", icon = "error")
    }
    svalue(r9) <- character(0)
  })
  
  #------------- Question 10 -----------#
  
  gp10 <- ggroup(container = q10, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("What does the Poisson pdf describe?", container = gp10, anchor = c(-1,1))
  addSpace(gp10, .5, horizontal=FALSE)
  ans10 <- c("(a)  A continuous random variable, e.g., height or weight.",
             "(b)  The number of successes, with a lower limit of 0, and an unbounded upper limit.",
             "(c)  The number of successes, with a lower limit of 0, and an upper bound of n.",
             "(d)  A discrete random variable, e.g. height or weight.")
  
  r10 <- gcheckboxgroup(ans10, container = gp10, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r10, handler = function(h,....){
    if(tail(svalue(r10),1) == ans10[1]){
      gmessage(message="Incorrect.  The Poisson pdf describes discrete random variables.",  icon = "error")
    }
    if(tail(svalue(r10),1)== ans10[2]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r10),1)== ans10[3]){
      gmessage(message="Incorrect.  There is no upper bound to x in a Poisson distribution", icon = "error")
    }
    if(tail(svalue(r10),1)== ans10[4]){
      gmessage(message="Incorrect.  The Poisson pdf describes discrete random variables.  Height and weight are not discrete.", icon = "error")
    }
    svalue(r10) <- character(0)
  })
  
  #------------- Question 11 -----------#
  gp11 <- ggroup(container = q11, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("What are the parameters for a normal distribution?", container = gp11, anchor = c(-1,1))
  addSpace(gp11, .5, horizontal=FALSE)
  ans11 <- c("(a)  \u03bc and \u03c3, repressing the mean and the variance, respectively.",
             "(b)   \u03bc and \u03c3\u00b2, repressing the mean and the variance, respectively",
             "(c)  \u03bc and \u03c3, repressing the variance and mean, respectively.",
             "(d)  \u03bc and \u03c3\u00b2, repressing the variance and the mean, respectively")
  
  r11 <- gcheckboxgroup(ans11, container = gp11, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r11, handler = function(h,....){
    if(tail(svalue(r11),1) == ans11[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r11),1)== ans11[2]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r11),1)== ans11[3]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r11),1)== ans11[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r11) <- character(0)
  })
  
  
  #------------- Question 12 -----------#
  gp12 <- ggroup(container = q12, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("Approximately what percentage of a normal distribution is \u00b1 2\u03c3 from \u03bc?", container = gp12, anchor = c(-1,1))
  addSpace(gp12, .5, horizontal=FALSE)
  ans12 <- c("(a)  100%",
             "(b)  99.7%",
             "(c)  95%",
             "(d)  68%")
  
  r12 <- gcheckboxgroup(ans12, container = gp12, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r12, handler = function(h,....){
    if(tail(svalue(r12),1) == ans12[1]){
      gmessage(message="Incorrect",  icon = "error")
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
  glabel("In the binomial distribution, the parameter \u03c0 represents...", container = gp13, anchor = c(-1,1))
  addSpace(gp13, .5, horizontal=FALSE)
  ans13 <- c("(a)  The probability of success.",
             "(b)  The mean and the variance of the distribution.",
             "(c)  The rate of success.",
             "(d)  The standard deviation of the distribution.",
             "(e)  (a) and (d).",
             "(f)  (b) and (c).")
  
  r13 <- gcheckboxgroup(ans13, container = gp13, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r13, handler = function(h,....){
    if(tail(svalue(r13),1) == ans13[1]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r13),1)== ans13[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r13),1)== ans13[3]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r13),1)== ans13[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r13),1)== ans13[5]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r13),1)== ans13[6]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r13) <- character(0)
  })
  
  #------------- Question 14 -----------#
  gp14 <- ggroup(container = q14, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("The Bernoulli is a special case of binomial distribution, when...", container = gp14, anchor = c(-1,1))
  addSpace(gp14, .5, horizontal=FALSE)
  ans14 <- c("(a)  \u03c0 = 0.5.",
             "(b)  \u03c0 = 1.",
             "(c)  \u03c0 = 1 and n = 0.",
             "(d)  n = 1.")
  
  r14 <- gcheckboxgroup(ans14, container = gp14, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r14, handler = function(h,....){
    if(tail(svalue(r14),1) == ans14[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r14),1)== ans14[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r14),1)== ans14[3]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r14),1)== ans14[4]){
      gmessage(message="Correct")
    }
    svalue(r14) <- character(0)
  })  
  
  
  #------------- Question 15 -----------#
  gp15 <- ggroup(container = q15, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("In the Poisson distribution, the parameter \u03bb represents...", container = gp15, anchor = c(-1,1))
  addSpace(gp15, .5, horizontal=FALSE)
  ans15 <- c("(a)  The probability of success.",
             "(b)  The mean and the variance of the distribution.",
             "(c)  The rate of success.",
             "(d)  The standard deviation of the distribution.",
             "(e)  (a) and (d).",
             "(f)  (b) and (c).")
  
  r15 <- gcheckboxgroup(ans15, container = gp15, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r15, handler = function(h,....){
    if(tail(svalue(r15),1) == ans15[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r15),1)== ans15[2]){
      gmessage(message="Partially correct", icon = "error")
    }
    if(tail(svalue(r15),1)== ans15[3]){
      gmessage(message="Partially correct", icon = "error")
    }
    if(tail(svalue(r15),1)== ans15[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r15),1)== ans15[5]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r15),1)== ans15[6]){
      gmessage(message="Correct")
    }
    svalue(r15) <- character(0)
  })
  
  #------------- Question 16 -----------#
  gp16 <- ggroup(container = q16, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("The hypergeometric distribution differs from the binomial distribution, in that...", container = gp16, anchor = c(-1,1))
  addSpace(gp16, .5, horizontal=FALSE)
  ans16 <- c("(a)  It does not consider the number of successes.",
             "(b)  It has only one parameter.",
             "(c)  It assumes sampling with replacement.",
             "(d)  It allows consideration of non-biological phenomena.")
  
  
  r16 <- gcheckboxgroup(ans16, container = gp16, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r16, handler = function(h,....){
    if(tail(svalue(r16),1) == ans16[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r16),1)== ans16[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r16),1)== ans16[3]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r16),1)== ans16[4]){
      gmessage(message="Incorrect.  Both the binomial and hypergeometric distribution allow consideration of non-biological (and biological) phenomena", icon = "error")
    }
    svalue(r16) <- character(0)
  }) 
  
  
  
  #------------- Question 17 -----------#
  gp17 <- ggroup(container = q17, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("All but which of the following are continuous distributions?", container = gp17, anchor = c(-1,1))
  addSpace(gp17, .5, horizontal=FALSE)
  ans17 <- c("(a)  t",
             "(b)  F",
             "(c)  exponential",
             "(d)  geometric",
             "(e)  gamma",
             "(f)  beta"
  )
  
  r17 <- gcheckboxgroup(ans17, container = gp17, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r17, handler = function(h,....){
    if(tail(svalue(r17),1) == ans17[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r17),1)== ans17[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r17),1)== ans17[3]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r17),1)== ans17[4]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r17),1)== ans17[5]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r17),1)== ans17[6]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r17) <- character(0)
  }) 
  
  
  #------------- Question 18 -----------#
  gp18 <- ggroup(container = q18, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("All but which of the following are discrete distributions?", container = gp18, anchor = c(-1,1))
  addSpace(gp18, .5, horizontal=FALSE)
  ans18 <- c("(a)  negative binomial",
             "(b)  Bernoulli",
             "(c)  hypergeometric",
             "(d)  Poisson",
             "(e)  chi-squared",
             "(f)  binomial"
  )
  
  r18 <- gcheckboxgroup(ans18, container = gp18, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r18, handler = function(h,....){
    if(tail(svalue(r18),1) == ans18[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r18),1)== ans18[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r18),1)== ans18[3]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r18),1)== ans18[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r18),1)== ans18[5]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r18),1)== ans18[6]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r18) <- character(0)
  }) 
}