selftest.pdfs.tck <- function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "Probability Density Functions")
  size(w) <- c(700, 950)
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
 
  #------------- Question 1 -----------#
  gp1 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp1.1 <- ggroup(container = gp1, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("1) ", container = gp1.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("All but which of the following are requirements for f(x) to be a valid pdf for a random variable X.", container = gp1.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans1 <- c("(a)   \u2211\u2093 f(x) = 1, if X is discrete.",
            "(b)   \u222B\u2093 f(x) = 1, if X is continuous.",
            "(c)   f(x) \u2265 0 for any x.",
            "(d)   x \u2265 0 for any x.")

  f1 <- function(h,...){
    if(tail(svalue(r1),1) == ans1[1]){
      gmessage(msg="Incorrect.  This is a characteristic of a valid discrete pdf, i.e., a probability mass function.",  icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[2]){
      gmessage(msg="Incorrect.  This is a characteristic of a valid continuous pdf.",  icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[3]){
      gmessage(msg="Incorrect.  This is a characteristic of all valid pdfs", icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[4]){
      gmessage(msg="Correct.  This is not a requirement for a valid pdf.  In some cases, random variable outcomes, x, may be less than 0")
    }
    svalue(r1) <- character(0)
  }
  
  r1 <- gcheckboxgroup(ans1, container = gp1, checked = FALSE, where = "beginning", handler = f1)
  
  
  #------------- Question 2 -----------#
  gp2 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp2.1 <- ggroup(container = gp2, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("2) ", container = gp2.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("For a discrete random variable, X, which of the following describes the pdf, f(x)?", container = gp2.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans2 <- c("(a)  P(X < x).  ",
            "(b)  P(X = x).  ",
            "(c)  P(X \u2264 x).  ",
            "(d)  P(X \u2265 z).   ")
  

  f2 <- function(h,...){
    if(tail(svalue(r2),1) == ans2[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[2]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r2),1)== ans2[3]){
      gmessage(msg="Incorrect.  This describes the cdf.", icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r2) <- character(0)
  }

  r2 <- gcheckboxgroup(ans2, container = gp2, checked = FALSE, where = "beginning", handler = f2)
  
  #------------- Question 3 -----------#
  
  gp3 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp3.1 <- ggroup(container = gp3, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("3) ", container = gp3.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("For a discrete or continuous random variable, X, which of the following describes the cdf, F(x)?", container = gp3.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans3 <- c("(a)  P(X < x).  ",
            "(b)  P(X = x).  ",
            "(c)  P(X \u2264 x).  ",
            "(d)  P(X \u2265 z).   ")
  
  
  f3 <- function(h,...){
    if(tail(svalue(r3),1) == ans3[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[2]){
      gmessage(msg="Incorrect.  This describes density for a discrete random variable.", icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[3]){
      gmessage(msg="Correct.  This probability represents the cdf for both discrete and continuous random variables.  Note that for a continuous pdf, answers (a) and (c) are equivalent.")
    }
    if(tail(svalue(r3),1)== ans3[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r3) <- character(0)
  }

  r3 <- gcheckboxgroup(ans3, container = gp3, checked = FALSE, where = "beginning", handler = f3)
  
  #------------- Question 4 -----------#
  
  gp4 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp4.1 <- ggroup(container = gp4, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("4) ", container = gp4.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("For a discrete or continuous random variable, X, what does the inverse cdf, F\u02c9\u00b9, provide?",
         container = gp4.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans4 <- c("(a)  The outcome x, given a upper-tailed probability.",
            "(b)  The lower-tailed probability of an outcome x.",
            "(c)  The upper-tailed probability of an outcome x.",
            "(d)  The outcome x, given a lower-tailed probability.")
  
  f4 <- function(h,...){
    if(tail(svalue(r4),1) == ans4[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[2]){
      gmessage(msg="Incorrect. This describes the cdf", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[3]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[4]){
      gmessage(msg="Correct")
    }
    svalue(r4) <- character(0)
  }
  
  r4 <- gcheckboxgroup(ans4, container = gp4, checked = FALSE, where = "beginning", handler = f4)
  
 
    #------------- Question 5 -----------#
  
  gp5 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp5.1 <- ggroup(container = gp5, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("5) ", container = gp5.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("For a discrete random variable X, assume that f(x) = 0.5(x/4) for x = 1, 3, and 4, and that f(x) = 0 \nfor all other x outcomes. What is P(X = 4)?",
         container = gp5.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans5 <- c("(a)  1/8",
            "(b)  1/4",
            "(c)  3/8",
            "(d)  1/2")
  
  f5 <- function(h,...){
    if(tail(svalue(r5),1) == ans5[1]){
      gmessage(msg="Incorrect.  Make a table of probabilities for x outcomes and try again.",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[2]){
      gmessage(msg="Incorrect.  Make a table of probabilities for x outcomes and try again.",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[3]){
      gmessage(msg="Incorrect.  Make a table of probabilities for x outcomes and try again.",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[4]){
      gmessage(msg="Correct")
    }
    svalue(r5) <- character(0)
  }
  
  r5 <- gcheckboxgroup(ans5, container = gp5, checked = FALSE, where = "beginning", handler = f5)
  

  #------------- Question 6 -----------#
  
  gp6 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp6.1 <- ggroup(container = gp6, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("6) ", container = gp6.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("For a discrete random variable X, assume that f(x) = 0.5(x/4) for x = 1, 3, and 4, and that f(x) = 0 \nfor all other x outcomes. What is P(X < 4)?",
         container = gp6.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  
  ans6 <- c("(a)  1/8",
            "(b)  1/4",
            "(c)  3/8",
            "(d)  1/2")
  
  f6 <- function(h,...){
    if(tail(svalue(r6),1) == ans6[1]){
      gmessage(msg="Incorrect.  Make a table of probabilities for x outcomes and try again.",  icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[2]){
      gmessage(msg="Incorrect.  Make a table of probabilities for x outcomes and try again.",  icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[3]){
      gmessage(msg="Incorrect.  Make a table of probabilities for x outcomes and try again.",  icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[4]){
      gmessage(msg="Correct")
    }
    svalue(r6) <- character(0)
  }
  
  r6 <- gcheckboxgroup(ans6, container = gp6, checked = FALSE, where = "beginning", handler = f6)
  

  
  #------------- Question 7 -----------#
  
  gp7 <- ggroup(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp7.1 <- ggroup(container = gp7, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("7) ", container = gp7.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("In a continuous distribution, X, with pdf f(x)...", container = gp7.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans7 <- c("(a)  f(x) = P(X = x).",
            "(b)  P(X = x) = 0.",
            "(c)  P(X \u2264 x) = P(X < x).",
            "(d)  P(X \u2265 x) = P(X > x).",
            "(e)  All of the above",
            "(f)  All of the above but (a).")
  
  
  f7 <- function(h,...){
    if(tail(svalue(r7),1) == ans7[1]){
      gmessage(msg="Incorrect",icon="error")
    }
    if(tail(svalue(r7),1)== ans7[2]){
      gmessage(msg="Partially correct",icon="error")
    }
    if(tail(svalue(r7),1)== ans7[3]){
      gmessage(msg="Partially correct", icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[4]){
      gmessage(msg="Partially correct",  icon = "error")
    }
    if(tail(svalue(r7),1) == ans7[5]){
      gmessage(msg="Incorrect",icon="error")
    }
    if(tail(svalue(r7),1) == ans7[6]){
      gmessage(msg="Correct")
    }
    svalue(r7) <- character(0)
  }
  
  r7 <- gcheckboxgroup(ans7, container = gp7, checked = FALSE, where = "beginning", handler = f7)
  

  #------------- Question 8 -----------#
  
  gp8 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp8.1 <- ggroup(container = gp8, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("8) ", container = gp8.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("What does the normal pdf describe?", container = gp8.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans8 <- c("(a)  A continuous random variable, e.g., height or weight.",
            "(b)  The number of successes, with a lower limit of 0, and an unbounded upper limit.",
            "(c)  The number of successes, with a lower limit of 0, and an upper bound of n.",
            "(d)  A discrete random variable, e.g. height or weight.")
  
  f8 <- function(h,...){
    if(tail(svalue(r8),1) == ans8[1]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r8),1)== ans8[2]){
      gmessage(msg="Incorrect.  The normal distribution describes continuous random variables.", icon = "error")
    }
    if(tail(svalue(r8),1)== ans8[3]){
      gmessage(msg="Incorrect.  The normal distribution describes continuous random variables.", icon = "error")
    }
    if(tail(svalue(r8),1)== ans8[4]){
      gmessage(msg="Incorrect.  Height and weight are continuous.", icon = "error")
    }
    svalue(r8) <- character(0)
  }
  
  r8 <- gcheckboxgroup(ans8, container = gp8, checked = FALSE, where = "beginning", handler = f8)
  

  #------------- Question 9 -----------#
  
  gp9 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp9.1 <- ggroup(container = gp9, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("9) ", container = gp9.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("What does the binomial pdf describe?", container = gp9.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans9 <- c("(a)  A continuous random variable, e.g., height or weight.",
            "(b)  The number of successes, with a lower limit of 0, and an unbounded upper limit.",
            "(c)  The number of successes, with a lower limit of 0, and an upper bound of n.",
            "(d)  A discrete random variable, e.g. height or weight.")
  
  f9 <- function(h,...){
    if(tail(svalue(r9),1) == ans9[1]){
      gmessage(msg="Incorrect.  The binomial pdf describes discrete random variables.",icon="error")
    }
    if(tail(svalue(r9),1)== ans9[2]){
      gmessage(msg="Incorrect.  The upper bound will equal the number of trials, n",icon="error")
    }
    if(tail(svalue(r9),1)== ans9[3]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r9),1)== ans9[4]){
      gmessage(msg="Incorrect.  The binomial pdf describes discrete random variables.  Height and weight are not discrete.", icon = "error")
    }
    svalue(r9) <- character(0)
  }
  
  r9 <- gcheckboxgroup(ans9, container = gp9, checked = FALSE, where = "beginning", handler = f9)
  
  #------------- Question 10 -----------#
  
  gp10 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp10.1 <- ggroup(container = gp10, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("10) ", container = gp10.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("What does the Poisson pdf describe?", container = gp10.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans10 <- c("(a)  A continuous random variable, e.g., height or weight.",
             "(b)  The number of successes, with a lower limit of 0, and an unbounded upper limit.",
             "(c)  The number of successes, with a lower limit of 0, and an upper bound of n.",
             "(d)  A discrete random variable, e.g. height or weight.")
  
  f10 <- function(h,...){
    if(tail(svalue(r10),1) == ans10[1]){
      gmessage(msg="Incorrect.  The Poisson pdf describes discrete random variables.",  icon = "error")
    }
    if(tail(svalue(r10),1)== ans10[2]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r10),1)== ans10[3]){
      gmessage(msg="Incorrect.  There is no upper bound to x in a Poisson distribution", icon = "error")
    }
    if(tail(svalue(r10),1)== ans10[4]){
      gmessage(msg="Incorrect.  The Poisson pdf describes discrete random variables.  Height and weight are not discrete.", icon = "error")
    }
    svalue(r10) <- character(0)
  }
  
   r10 <- gcheckboxgroup(ans10, container = gp10, checked = FALSE, where = "beginning", handler = f10)
 
  #------------- Question 11 -----------#
  gp11 <- ggroup(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp11.1 <- ggroup(container = gp11, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("11) ", container = gp11.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("What are the parameters for a normal distribution?", container = gp11.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans11 <- c("(a)  \u03bc and \u03c3, repressing the mean and the variance, respectively.",
             "(b)   \u03bc and \u03c3\u00b2, repressing the mean and the variance, respectively",
             "(c)  \u03bc and \u03c3, repressing the variance and mean, respectively.",
             "(d)  \u03bc and \u03c3\u00b2, repressing the variance and the mean, respectively")
  
  
  f11 <- function(h,...){
    if(tail(svalue(r11),1) == ans11[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r11),1)== ans11[2]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r11),1)== ans11[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r11),1)== ans11[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r11) <- character(0)
  }
  
  r11 <- gcheckboxgroup(ans11, container = gp11, checked = FALSE, where = "beginning", handler = f11)
  


  #------------- Question 12 -----------#
  gp12 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp12.1 <- ggroup(container = gp12, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("12) ", container = gp12.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("Approximately what percentage of a normal distribution is \u00b1 2\u03c3 from \u03bc?", container = gp12.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
    ans12 <- c("(a)  100%",
             "(b)  99.7%",
             "(c)  95%",
             "(d)  68%")
  
    
    f12 <- function(h,...){
      if(tail(svalue(r12),1) == ans12[1]){
        gmessage(msg="Incorrect",  icon = "error")
      }
      if(tail(svalue(r12),1)== ans12[2]){
        gmessage(msg="Incorrect", icon = "error")
      }
      if(tail(svalue(r12),1)== ans12[3]){
        gmessage(msg="Correct")
      }
      if(tail(svalue(r12),1)== ans12[4]){
        gmessage(msg="Incorrect", icon = "error")
      }
      svalue(r12) <- character(0)
    }
    
    
     r12 <- gcheckboxgroup(ans12, container = gp12, checked = FALSE, where = "beginning", handler = f12)
  
 
  #------------- Question 13 -----------#
  gp13 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp13.1 <- ggroup(container = gp13, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("13) ", container = gp13.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("In the binomial distribution, the parameter \u03c0 represents...", container = gp13.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans13 <- c("(a)  The probability of success.",
             "(b)  The mean and the variance of the distribution.",
             "(c)  The rate of success.",
             "(d)  The standard deviation of the distribution.",
             "(e)  (a) and (d).",
             "(f)  (b) and (c).")
  
  f13 <- function(h,...){
    if(tail(svalue(r13),1) == ans13[1]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r13),1)== ans13[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r13),1)== ans13[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r13),1)== ans13[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r13),1)== ans13[5]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r13),1)== ans13[6]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r13) <- character(0)
  }
  
  r13 <- gcheckboxgroup(ans13, container = gp13, checked = FALSE, where = "beginning", handler = f13)
  
  
  #------------- Question 14 -----------#
  gp14 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp14.1 <- ggroup(container = gp14, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("14) ", container = gp14.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("The Bernoulli is a special case of binomial distribution, when...", container = gp14.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans14 <- c("(a)  \u03c0 = 0.5.",
             "(b)  \u03c0 = 1.",
             "(c)  \u03c0 = 1 and n = 0.",
             "(d)  n = 1.")
  f14 <-  function(h,...){
    if(tail(svalue(r14),1) == ans14[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r14),1)== ans14[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r14),1)== ans14[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r14),1)== ans14[4]){
      gmessage(msg="Correct")
    }
    svalue(r14) <- character(0)
  } 
  
  r14 <- gcheckboxgroup(ans14, container = gp14, checked = FALSE, where = "beginning", handler = f14)
  
  #------------- Question 15 -----------#
  gp15 <- ggroup(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp15.1 <- ggroup(container = gp15, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("15) ", container = gp15.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("In the Poisson distribution, the parameter \u03bb represents...", container = gp15.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans15 <- c("(a)  The probability of success.",
             "(b)  The mean and the variance of the distribution.",
             "(c)  The rate of success.",
             "(d)  The standard deviation of the distribution.",
             "(e)  (a) and (d).",
             "(f)  (b) and (c).")
  f15 <- function(h,...){
    if(tail(svalue(r15),1) == ans15[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r15),1)== ans15[2]){
      gmessage(msg="Partially correct", icon = "error")
    }
    if(tail(svalue(r15),1)== ans15[3]){
      gmessage(msg="Partially correct", icon = "error")
    }
    if(tail(svalue(r15),1)== ans15[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r15),1)== ans15[5]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r15),1)== ans15[6]){
      gmessage(msg="Correct")
    }
    svalue(r15) <- character(0)
  }
  
  r15 <- gcheckboxgroup(ans15, container = gp15, checked = FALSE, where = "beginning", handler = f15)
  
  #------------- Question 16 -----------#
  gp16 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp16.1 <- ggroup(container = gp16, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("16) ", container = gp16.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("The hypergeometric distribution differs from the binomial distribution, in that...", container = gp16.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans16 <- c("(a)  It does not consider the number of successes.",
             "(b)  It has only one parameter.",
             "(c)  It assumes sampling with replacement.",
             "(d)  It allows consideration of non-biological phenomena.")
  
  f16 <- function(h,...){
    if(tail(svalue(r16),1) == ans16[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r16),1)== ans16[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r16),1)== ans16[3]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r16),1)== ans16[4]){
      gmessage(msg="Incorrect.  Both the binomial and hypergeometric distribution allow consideration of non-biological (and biological) phenomena", icon = "error")
    }
    svalue(r16) <- character(0)
  }
 
   r16 <- gcheckboxgroup(ans16, container = gp16, checked = FALSE, where = "beginning", handler = f16)
 
  #------------- Question 17 -----------#
  gp17 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp17.1 <- ggroup(container = gp17, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("17) ", container = gp17.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("All but which of the following are continuous distributions?", container = gp17.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
    ans17 <- c("(a)  t",
             "(b)  F",
             "(c)  exponential",
             "(d)  geometric",
             "(e)  gamma",
             "(f)  beta"
  )
    
    f17 <- function(h,...){
      if(tail(svalue(r17),1) == ans17[1]){
        gmessage(msg="Incorrect",  icon = "error")
      }
      if(tail(svalue(r17),1)== ans17[2]){
        gmessage(msg="Incorrect", icon = "error")
      }
      if(tail(svalue(r17),1)== ans17[3]){
        gmessage(msg="Incorrect", icon = "error")
      }
      if(tail(svalue(r17),1)== ans17[4]){
        gmessage(msg="Correct")
      }
      if(tail(svalue(r17),1)== ans17[5]){
        gmessage(msg="Incorrect", icon = "error")
      }
      if(tail(svalue(r17),1)== ans17[6]){
        gmessage(msg="Incorrect", icon = "error")
      }
      svalue(r17) <- character(0)
    } 
 
  r17 <- gcheckboxgroup(ans17, container = gp17, checked = FALSE, where = "beginning", handler = f17)
  
  
  #------------- Question 18 -----------#
  gp18 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp18.1 <- ggroup(container = gp18, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("18) ", container = gp18.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("All but which of the following are discrete distributions?", container = gp18.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans18 <- c("(a)  negative binomial",
             "(b)  Bernoulli",
             "(c)  hypergeometric",
             "(d)  Poisson",
             "(e)  chi-squared",
             "(f)  binomial"
  )
  
  
  f18 <- function(h,...){
    if(tail(svalue(r18),1) == ans18[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r18),1)== ans18[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r18),1)== ans18[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r18),1)== ans18[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r18),1)== ans18[5]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r18),1)== ans18[6]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r18) <- character(0)
  }
  
  r18 <- gcheckboxgroup(ans18, container = gp18, checked = FALSE, where = "beginning", handler = f18)
  
  
}