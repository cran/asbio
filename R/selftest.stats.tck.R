selftest.stats.tck <- function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "Parameters and Statistics")
  size(w) <- c(700, 900)
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
 
  #------------- Question 1 -----------#
  gp1 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp1.1 <- ggroup(container = gp1, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("1) ", container = gp1.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("Which describes the expected value of a discrete random variable X?", container = gp1.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans1 <- c("(a)     E(X) = \u2211\u2093 xf(x).",
            "(b)     The arithmetic mean given all possible outcomes from X.",
            "(c)     E(X) = \u2211\u2093 f(x).",
            "(d)     (a) and (b) only.",
            "(e)     (b) and (c) only.")
  
  f1 <- function(h,....){
    if(tail(svalue(r1),1) == ans1[1]){
      gmessage(msg="Partially correct", icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[2]){
      gmessage(msg="Partially correct", icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[4]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r1),1)== ans1[5]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r1) <- character(0)
  }
  
  r1 <- gcheckboxgroup(ans1, container = gp1, checked = FALSE, where = "beginning", handler = f1)
  

  
  #------------- Question 2 -----------#  

  gp2 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp2.1 <- ggroup(container = gp2, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("2) ", container = gp2.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("The variance of a random variable X is computed as:", container = gp2.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans2 <- c("(a) Var(X) =  E(X\u00B2) - E(X)\u00B2.",
            "(b) Var(X) =  E(X)\u00B2 - E(X\u00B2).",
            "(c) Var(X) =  E(X\u00B2) + E(X)\u00B2.",
            "(d) Var(X) =  E(X)\u00B2 + E(X\u00B2).")
  
  f2 <- function(h,....){
    if(tail(svalue(r2),1) == ans2[1]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r2),1)== ans2[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[3]){
      gmessage(msg="Incorrect", icon = "error")
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
  qq <- glabel("For a random variable X, assume that f(x) = 0.5(x/4) for x = 1, 3, and 4, and that f(x) = 0 for all \n other x outcomes. What is E(X)?",
         container = gp3.1, anchor = c(-1,1))  
  font(qq) <- list(family = "cambria", size = 11)
  
  
  ans3 <- c("(a)  1",
            "(b)  3.25",
            "(c)  2.5",
            "(d)  0")
  
  f3 <- function(h,....){
    if(tail(svalue(r3),1) == ans3[1]){
      gmessage(msg="Incorrect.  Make a table of probabilities for x outcomes and try again.",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[2]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r3),1)== ans3[3]){
      gmessage(msg="Incorrect.  Make a table of probabilities for x outcomes and try again.",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[4]){
      gmessage(msg="Incorrect.  Make a table of probabilities for x outcomes and try again.",  icon = "error")
    }
    svalue(r3) <- character(0)
  }
  
  r3 <- gcheckboxgroup(ans3, container = gp3, checked = FALSE, where = "beginning", handler = f3)
  

  
  #------------- Question 4 -----------#
  
  gp4 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp4.1 <- ggroup(container = gp4, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("4) ", container = gp4.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("For the pdf in question 3, what is E(X\u00B2)?",
         container = gp4.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans4 <- c("(a)  1",
            "(b)  3.25",
            "(c)  11.5",
            "(d)  42.25")
  
  f4 <- function(h,....){
    if(tail(svalue(r4),1) == ans4[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[2]){
      gmessage(msg="Incorrect.  This is E(X)", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[3]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r4),1)== ans4[4]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    svalue(r4) <- character(0)
  }
  
  r4 <- gcheckboxgroup(ans4, container = gp4, checked = FALSE, where = "beginning", handler = f4)

  
  #------------- Question 5 -----------#
  
  gp5 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp5.1 <- ggroup(container = gp5, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("5) ", container = gp5.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("For the pdf in question 3, what is Var(X)?",
         container = gp5.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  
  ans5 <- c("(a)  0.9375",
            "(b)  1",
            "(c)  20.75",
            "(d)  \u221E")
  
  f5 <- function(h,....){
    if(tail(svalue(r5),1) == ans5[1]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r5),1)== ans5[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[3]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[4]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    svalue(r5) <- character(0)
  }
  
  r5 <- gcheckboxgroup(ans5, container = gp5, checked = FALSE, where = "beginning", handler = f5)
  
  
  #------------- Question 6 -----------#
  
  gp6 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp6.1 <- ggroup(container = gp6, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("6) ", container = gp6.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("The efficacy of a statistical estimator can be quantified using its...", container = gp6.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans6 <- c("(a)  stress.",
            "(b)  bias.",
            "(c)  consistency.",
            "(d)  efficiency.",
            "(e)  all but (a) are correct")
  
  f6 <- function(h,....){
    if(tail(svalue(r6),1) == ans6[1]){
      gmessage(msg="Incorrect",icon="error")
    }
    if(tail(svalue(r6),1)== ans6[2]){
      gmessage(msg="Partially correct.  Bias is an important characteristic to consider in estimators.",icon="error")
    }
    if(tail(svalue(r6),1)== ans6[3]){
      gmessage(msg="Partially correct.  Consistency is an important characteristic to consider in estimators.",icon="error")
    }
    if(tail(svalue(r6),1)== ans6[4]){
      gmessage(msg="Partially correct.  Efficiency is an important characteristic to consider in estimators.", icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[5]){
      gmessage(msg="Correct")
    }
    svalue(r6) <- character(0)
  }
  
  r6 <- gcheckboxgroup(ans6, container = gp6, checked = FALSE, where = "beginning", handler = f6)

  
  #------------- Question 7 -----------#
  
  gp7 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp7.1 <- ggroup(container = gp7, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("7) ", container = gp7.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("From a random variable Y we observe the outcomes: y\u2081, y\u2082,...,y\u2099. Then, \u0233 =  7 is a(n)", container = gp7.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans7 <- c("(a)  parameter.",
            "(b)  statistic.",
            "(c)  estimator.",
            "(d)  estimate.",
            "(e)  (b) and (d) above.",
            "(f)  (b) and (c) above.")
  
  f7 <- function(h,....){
    if(tail(svalue(r7),1) == ans7[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[2]){
      gmessage(msg="Partially correct", icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[4]){
      gmessage(msg="Partially correct", icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[5]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r7),1)== ans7[6]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r7) <- character(0)
  }
  
  r7 <- gcheckboxgroup(ans7, container = gp7, checked = FALSE, where = "beginning", handler = f7)
  

  #------------- Question 8 -----------#
  
  gp8 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp8.1 <- ggroup(container = gp8, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("8) ", container = gp8.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <-glabel("\u0232 represents a(n)", container = gp8.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)

    ans8 <- c("(a)  parameter.",
            "(b)  statistic.",
            "(c)  estimator.",
            "(d)  estimate.",
            "(e)  (b) and (d) above.",
            "(f)  (b) and (c) above.")
  
  f8 <- function(h,....){
    if(tail(svalue(r8),1) == ans8[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r8),1)== ans8[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r8),1)== ans8[3]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r8),1)== ans8[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r8),1)== ans8[5]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r8),1)== ans8[6]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r8) <- character(0)
  }
  
  r8 <- gcheckboxgroup(ans8, container = gp8, checked = FALSE, where = "beginning", handler = f8)
  
  #------------- Question 9 -----------#
  
  gp9 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp9.1 <- ggroup(container = gp9, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("9) ", container = gp9.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("Var(Y) represents a(n)", container = gp9.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans9 <- c("(a)  parameter.",
            "(b)  statistic.",
            "(c)  estimator.",
            "(d)  estimate.",
            "(e)  (b) and (d) above.",
            "(f)  (b) and (c) above.")
  
  f9 <- function(h,....){
    if(tail(svalue(r9),1) == ans9[1]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r9),1)== ans9[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r9),1)== ans9[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r9),1)== ans9[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r9),1)== ans9[5]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r9),1)== ans9[6]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r9) <- character(0)
  }
  
  r9 <- gcheckboxgroup(ans9, container = gp9, checked = FALSE, where = "beginning", handler = f9)
  

  #------------- Question 10 -----------#
  
  gp10 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp10.1 <- ggroup(container = gp10, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("10) ", container = gp10.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("I want to find the mean growth rates given a series of rates. I would use the:", container = gp10.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans10 <- c("(a) arithmetic mean.",
             "(b) geometric mean",
             "(c) harmonic mean",
             "(d) sample median")
  
  f10 <- function(h,....){
    if(tail(svalue(r10),1) == ans10[1]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r10),1)== ans10[2]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r10),1)== ans10[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r10),1)== ans10[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r10) <- character(0)
  }
  
  r10 <- gcheckboxgroup(ans10, container = gp10, checked = FALSE, where = "beginning", handler = f10)
  

  #------------- Question 11 -----------#
  
  gp11 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp11.1 <- ggroup(container = gp11, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("11) ", container = gp11.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  
  qq <- glabel("I want a location estimator that is robust to outliers. A widely used option is the:", container = gp11.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans11 <- c("(a) arithmetic mean.",
             "(b) geometric mean",
             "(c) harmonic mean",
             "(d) sample median")
  
  f11 <- function(h,....){
    if(tail(svalue(r11),1) == ans11[1]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r11),1)== ans11[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r11),1)== ans11[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r11),1)== ans11[4]){
      gmessage(msg="Correct")
    }
    svalue(r11) <- character(0)
  }
  
    r11 <- gcheckboxgroup(ans11, container = gp11, checked = FALSE, where = "beginning", handler = f11)

  
  #------------- Question 12 -----------#
  
  gp12 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp12.1 <- ggroup(container = gp12, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("12) ", container = gp12.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("I obtain a random sample of four male ISU students and measure their height.  \nThe measures (in meters) are: 2, 1.85, 1.85, and 1.7. \nWhat is arithmetic mean of these data?", container = gp12.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans12 <- c("1.5m",
             "1.75m",
             "1.85m",
             "1.95m")
  
  f12 <- function(h,....){
    if(tail(svalue(r12),1) == ans12[1]){
      gmessage(msg="Incorrect", icon = "error")
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
  qq <- glabel("What is the sample median of the data in Question 12?", container = gp13.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans13 <- c("1.5m",
             "1.75m",
             "1.85m",
             "1.95m") 
  
  f13 <- function(h,....){
    if(tail(svalue(r13),1) == ans13[1]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r13),1)== ans13[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r13),1)== ans13[3]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r13),1)== ans13[4]){
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
  qq <- glabel("What is the sample variance of the data in Question 12?", container = gp14.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans14 <- c("0.015m",
             "0.015m\u00B2",
             "1.22m",
             "1.22m\u00B2") 
  
  
  f14 <- function(h,....){
    if(tail(svalue(r14),1) == ans14[1]){
      gmessage(msg="Incorrect.  The units are wrong.", icon = "error")
    }
    if(tail(svalue(r14),1)== ans14[2]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r14),1)== ans14[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r14),1)== ans14[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r14) <- character(0)
  }
  
  r14 <- gcheckboxgroup(ans14, container = gp14, checked = FALSE, where = "beginning", handler = f14)
  

  
  #------------- Question 15 -----------# 
  gp15 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp15.1 <- ggroup(container = gp15, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("15) ", container = gp15.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("What is the sample standard deviation of the data in Question 12?", container = gp15.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans15 <- c("0.015m",
             "0.015m\u00B2",
             "1.22m",
             "1.22m\u00B2") 
  
  f15 <- function(h,....){
    if(tail(svalue(r15),1) == ans15[1]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r15),1)== ans15[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r15),1)== ans15[3]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r15),1)== ans15[4]){
      gmessage(msg="Incorrect.  The units are wrong.", icon = "error")
    }
    svalue(r15) <- character(0)
  }
  
  r15 <- gcheckboxgroup(ans15, container = gp15, checked = FALSE, where = "beginning", handler = f15)
  

  
  #------------- Question 16 -----------# 
  gp16 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp16.1 <- ggroup(container = gp16, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("16) ", container = gp16.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("(T or F) If a sample includes the entire population, \nthen statistics serve a descriptive instead of an inferential purpose. ", container = gp16.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans16 <- c("True",
             "False")
  
  f16 <- function(h,....){
    if(tail(svalue(r16),1) == ans16[1]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r16),1)== ans16[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r16) <- character(0)
  }
  
  r16 <- gcheckboxgroup(ans16, container = gp16, checked = FALSE, where = "beginning", handler = f16)
  
  

}      


#############################################################################
#############################################################################

selftest.stats.tck1 <- function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "Transformations of random variables")
  size(w) <- c(700, 600)
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
 
  
  #------------- Question 1 -----------# 
  gp1 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp1.1 <- ggroup(container = gp1, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("1) ", container = gp1.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("Assume that a random variable X has the expected value, E(X) = 2.  \nTo X, I add 3, then multiply by 2.  The new expected value is...", 
         container = gp1.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans1 <- c("(a)  7",
            "(b)  12",
            "(c)  10",
            "(d)  8") 
  
  f1 <- function(h,....){
    if(tail(svalue(r1),1) == ans1[1]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[3]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r1),1)== ans1[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r1) <- character(0)
  }
  
  r1 <- gcheckboxgroup(ans1, container = gp1, checked = FALSE, where = "beginning", handler = f1)
  

  
  #------------- Question 2 -----------# 
  gp2 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp2.1 <- ggroup(container = gp2, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("2) ", container = gp2.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("Assume that a random variable X has the variance, Var(X) = 2.  \nTo X, I add 3, then multiply by 2.  The new population variance is...", 
         container = gp2.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans2 <- c("(a)  7",
            "(b)  12",
            "(c)  10",
            "(d)  8") 
  
  f2 <- function(h,....){
    if(tail(svalue(r2),1) == ans2[1]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[4]){
      gmessage(msg="Correct")
    }
    svalue(r2) <- character(0)
  }
  
  r2 <- gcheckboxgroup(ans2, container = gp2, checked = FALSE, where = "beginning", handler = f2)

  
  
  #------------- Question 3 -----------# 
  gp3 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp3.1 <- ggroup(container = gp3, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("3) ", container = gp3.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("(T or F) The sum of two normal random variables is an exponential distribution.", container = gp3.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans3 <- c("True",
            "False") 
  
  
  f3 <- function(h,....){
    if(tail(svalue(r3),1) == ans3[1]){
      gmessage(msg="Incorrect.  The sum of two normal random variables will also be normal.", icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[2]){
      gmessage(msg="Correct.  The sum of two normal random variables will also be normal.")
    }
    svalue(r3) <- character(0)
  }
  
  r3 <- gcheckboxgroup(ans3, container = gp3, checked = FALSE, where = "beginning", handler = f3)
  

  #------------- Question 4 -----------# 
  gp4 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp4.1 <- ggroup(container = gp4, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("4) ", container = gp4.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("Assume that X ~ N(0, 2), Y ~ N(2, 4), and Z = X - Y.  What is E(Z)?", 
         container = gp4.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans4 <- c("(a)  -2",
            "(b)  0",
            "(c)  2",
            "(d)  6") 
 
  f4 <- function(h,....){
    if(tail(svalue(r4),1) == ans4[1]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r4),1)== ans4[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r4) <- character(0)
  }
  
  r4 <- gcheckboxgroup(ans4, container = gp4, checked = FALSE, where = "beginning", handler = f4)
  

  
  #------------- Question 5 -----------# 
  gp5 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp5.1 <- ggroup(container = gp5, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("5) ", container = gp5.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("Assume that X ~ N(0, 2), Y ~ N(2, 4), and Z = X - Y.  What is Var(Z)?  \nAssume that X and Y are independent", 
         container = gp5.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans5 <- c("(a)  -2",
            "(b)  0",
            "(c)  2",
            "(d)  6") 
  
  f5 <- function(h,....){
    if(tail(svalue(r5),1) == ans5[1]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[3]){
      gmessage(msg="Incorrect", icon = "error")
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
  qq <- glabel("Let X ~ N(0, 2), Y ~ N(2, 4), Z = X - Y, and assume X and Y are independent.  Then,", 
         container = gp6.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans6 <- c("(a)  Cov(X,Y) = 0",
            "(b)  Cov(X,Y) < 0",
            "(c)  Cov(X,Y) > 0",
            "(d)  Cov(X,Y) is undefined") 
  
  f6 <- function(h,....){
    if(tail(svalue(r6),1) == ans6[1]){
      gmessage(msg="Correct.  If X and Y are independent, their covariance will equal 0.")
    }
    if(tail(svalue(r6),1)== ans6[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r6) <- character(0)
  }
  
  r6 <- gcheckboxgroup(ans6, container = gp6, checked = FALSE, where = "beginning", handler = f6)
  

  #------------- Question 7 -----------# 
  gp7 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp7.1 <- ggroup(container = gp7, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("7) ", container = gp7.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("Let X ~ N(0, 2), Y ~ N(2, 4), Z = X - Y, and assume Cov(X,Y) = 1. What is Var(Z)?", 
         container = gp7.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans7 <- c("(a)  -2",
            "(b)  0",
            "(c)  4",
            "(d)  6") 
  
  f7 <- function(h,....){
    if(tail(svalue(r7),1) == ans7[1]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[3]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r7),1)== ans7[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r7) <- character(0)
  }
  
  r7 <- gcheckboxgroup(ans7, container = gp7, checked = FALSE, where = "beginning", handler = f7)
  

}