selftest.ttest.tck <- function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "t-tests")
  size(w) <- c(700, 900)
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)

  
  #------------- Question 1 -----------#
  
  gp1 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp1.1 <- ggroup(container = gp1, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("1) ", container = gp1.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("We sample from a normal distribution with unknown mean, \u03bc, and known variance, \u03c3\u00b2.  \nWe want to conduct a null hypothesis test concerning the value of \u03bc.  We would use a...", container = gp1.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans1 <- c("(a)  pooled variance t-test.",
            "(b)  Welch t-test.",
            "(c)  paired t-test.",
            "(d)  one sample z-test.",
            "(e)  one sample t-test."
  )
  
 f1 <- function(h,....){
    if(tail(svalue(r1),1) == ans1[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[2]){
      gmessage(msg="Incorrect",  icon = "error")
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
  qq <- glabel("We sample from a normal distribution with unknown mean, \u03bc, and unknown variance, \u03c3\u00b2.  \nWe want to conduct a null hypothesis test concerning the value of \u03bc.  We would use a...", container = gp2.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans2 <- c("(a)  pooled variance t-test.",
            "(b)  Welch t-test.",
            "(c)  paired t-test.",
            "(d)  one sample z-test.",
            "(e)  one sample t-test."
  )
  
  f2 <- function(h,....){
    if(tail(svalue(r2),1) == ans2[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[5]){
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
  qq <- glabel("We sample from two normal distributions with unknown means, \u03bc\u2081, \u03bc\u2082, and common variance, \u03c3\u00b2 \n(i.e., we assume \u03c3\u00b2\u2081 = \u03c3\u00b2\u2082 = \u03c3\u00b2). We want to conduct a null hypothesis test concerning \nthe value of \u03bc\u2081 - \u03bc\u2082.  We would use a...", container = gp3.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans3 <- c("(a)  pooled variance t-test.",
            "(b)  Welch t-test.",
            "(c)  paired t-test.",
            "(d)  one sample z-test.",
            "(e)  one sample t-test."
  )
  
  f3 <- function(h,....){
    if(tail(svalue(r3),1) == ans3[1]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r3),1)== ans3[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[5]){
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
  qq <- glabel("We have a blocked experimental design and in each block we have two treatments.  \nWe measure the differences of treatments in blocks and assume that these differences come from \na normal distribution with an unknown mean and an unknown variance.  We want to conduct a null \nhypothesis test concerning the value of the unknown true mean of differences.  We would use a...", container = gp4.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
    ans4 <- c("(a)  pooled variance t-test.",
            "(b)  Welch t-test.",
            "(c)  paired t-test.",
            "(d)  one sample z-test.",
            "(e)  one sample t-test."
  )
  

  f4 <- function(h,....){
    if(tail(svalue(r4),1) == ans4[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1) == ans4[3]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r4),1)== ans4[4]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[5]){
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
  qq <- glabel("We sample from two normal distributions with unknown means, \u03bc\u2081, \u03bc\u2082, and unknown variances, \u03c3\u00b2\u2081 \nand \u03c3\u00b2\u2082. We want to conduct a null hypothesis test concerning the value of \u03bc\u2081 - \u03bc\u2082.  We would use a...", container = gp5.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
    ans5 <- c("(a)  pooled variance t-test.",
            "(b)  Welch t-test.",
            "(c)  paired t-test.",
            "(d)  one sample z-test.",
            "(e)  one sample t-test."
  )
  
  f5 <- function(h,....){
    if(tail(svalue(r5),1) == ans5[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[2]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r5),1) == ans5[3]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[4]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[5]){
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
  qq <- glabel("To calculate the pooled variance t-test test statistic we must calculate...", container = gp6.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans6 <- c("(a)  MSE.",
            "(b)  the Satterthwaite degrees of freedom.",
            "(c)  the standard deviation of differences within blocks.",
            "(d)  the mean of differences within blocks.",
            "(e)  (c) and (d)."
  )
  
  
  f6 <- function(h,....){
    if(tail(svalue(r6),1)== ans6[1]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r6),1)== ans6[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r6),1) == ans6[3]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[4]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[5]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    svalue(r6) <- character(0)
  }
  
  r6 <- gcheckboxgroup(ans6, container = gp6, checked = FALSE, where = "beginning", handler = f6)
  
  
  #------------- Question 7 -----------#
  
  gp7 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp7.1 <- ggroup(container = gp7, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("7) ", container = gp7.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("To calculate the paired t-test test statistic we must calculate...", container = gp7.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
    ans7 <- c("(a)  MSE.",
            "(b)  the Satterthwaite degrees of freedom.",
            "(c)  the standard deviation of differences within blocks.",
            "(d)  the mean of differences within blocks.",
            "(e)  (c) and (d)."
  )
  
  
  f7 <- function(h,....){
    if(tail(svalue(r7),1) == ans7[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r7),1) == ans7[3]){
      gmessage(msg="Partially correct",  icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[4]){
      gmessage(msg="Partially correct",  icon = "error")
    }
    if(tail(svalue(r7),1) == ans7[5]){
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
  qq <- glabel("To calculate the Welch t-test p-value we must calculate...", container = gp8.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
    ans8 <- c("(a)  MSE.",
            "(b)  the Satterthwaite degrees of freedom.",
            "(c)  the standard deviation of differences within blocks.",
            "(d)  the mean of differences within blocks.",
            "(e)  (c) and (d)."
  )
  
  

  f8 <- function(h,....){
    if(tail(svalue(r8),1) == ans8[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r8),1)== ans8[2]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r8),1) == ans8[3]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r8),1)== ans8[4]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r8),1) == ans8[5]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    svalue(r8) <- character(0)
  }
  
  r8 <- gcheckboxgroup(ans8, container = gp8, checked = FALSE, where = "beginning", handler = f8)
  
  
  #------------- Question 9 -----------#
  
  gp9 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp9.1 <- ggroup(container = gp9, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("9) ", container = gp9.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("The null distribution for a one sample z-test is...", container = gp9.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans9 <- c("(a)  t(n-1).",
            "(b)  t(n\u2081 + n\u2082 - 2).",
            "(c)  t(\u03bd), where \u03bd = the Satterthwaite degrees of freedom.",
            "(d)  N(0,1).")
  

  f9 <- function(h,....){
    if(tail(svalue(r9),1) == ans9[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r9),1)== ans9[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r9),1) == ans9[3]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r9),1)== ans9[4]){
      gmessage(msg="Correct")
    }
    svalue(r9) <- character(0)
  }
  
  r9 <- gcheckboxgroup(ans9, container = gp9, checked = FALSE, where = "beginning", handler = f9)
  
  
  
  #------------- Question 10 -----------#
  
  gp10 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp10.1 <- ggroup(container = gp10, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("10) ", container = gp10.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("The null distribution for a pooled variance t-test is...", container = gp10.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
    ans10 <- c("(a)  t(n-1).",
             "(b)  t(n\u2081 + n\u2082 - 2).",
             "(c)  t(\u03bd), where \u03bd = the Satterthwaite degrees of freedom.",
             "(d)  N(0,1).")
  
  f10 <- function(h,....){
    if(tail(svalue(r10),1) == ans10[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r10),1)== ans10[2]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r10),1) == ans10[3]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r10),1)== ans10[4]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    svalue(r10) <- character(0)
  }
  
  r10 <- gcheckboxgroup(ans10, container = gp10, checked = FALSE, where = "beginning", handler = f10)
  
  
  
  #------------- Question 11 -----------#
  
  gp11 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp11.1 <- ggroup(container = gp11, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("11) ", container = gp11.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("The null distribution for a paired t-test is...", container = gp11.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans11 <- c("(a)  t(n-1).",
             "(b)  t(n\u2081 + n\u2082 - 2).",
             "(c)  t(\u03bd), where \u03bd = the Satterthwaite degrees of freedom.",
             "(d)  N(0,1).")
  
  f11 <- function(h,....){
    if(tail(svalue(r11),1) == ans11[1]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r11),1)== ans11[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r11),1) == ans11[3]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r11),1)== ans11[4]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    svalue(r11) <- character(0)
  }
  
  r11 <- gcheckboxgroup(ans11, container = gp11, checked = FALSE, where = "beginning", handler = f11)
  
  
  
  #------------- Question 12 -----------#
  
  gp12 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp12.1 <- ggroup(container = gp12, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("12) ", container = gp12.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("The null distribution for a Welch t-test is...", container = gp12.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans12 <- c("(a)  t(n-1).",
             "(b)  t(n\u2081 + n\u2082 - 2)",
             "(c)  t(\u03bd), where \u03bd = the Satterthwaite degrees of freedom",
             "(d)  N(0,1).")
  

  f12 <- function(h,....){
    if(tail(svalue(r12),1) == ans12[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r12),1)== ans12[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r12),1) == ans12[3]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r12),1)== ans12[4]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    svalue(r12) <- character(0)
  }
  
  r12 <- gcheckboxgroup(ans12, container = gp12, checked = FALSE, where = "beginning", handler = f12)
  
  
  #------------- Question 13 -----------#
  
  gp13 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp13.1 <- ggroup(container = gp13, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("13) ", container = gp13.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("The null hypothesis for the Fligner-Killeen test is...", container = gp13.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
    ans13 <- c("(a)  H\u2080: \u03bc = \u03bc\u2080.",
             "(b)  H\u2080: \u03bc\u2081 = \u03bc\u2082.",
             "(c)  H\u2080: The underlying population is normal.",
             "(d)  H\u2080: \u03c3\u00b2\u2081 = \u03c3\u00b2\u2082.")
  

  f13 <- function(h,....){
    if(tail(svalue(r13),1) == ans13[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r13),1)== ans13[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r13),1) == ans13[3]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r13),1)== ans13[4]){
      gmessage(msg="Correct")
    }
    svalue(r13) <- character(0)
  }
  
  r13 <- gcheckboxgroup(ans13, container = gp13, checked = FALSE, where = "beginning", handler = f13)

  
  #------------- Question 14 -----------#
  
  gp14 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp14.1 <- ggroup(container = gp14, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("14) ", container = gp14.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("The null hypothesis for the Shapiro-Wilk test is...", container = gp14.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans14 <- c("(a)  H\u2080: \u03bc = \u03bc\u2080.",
             "(b)  H\u2080: \u03bc\u2081 = \u03bc\u2082.",
             "(c)  H\u2080: The underlying population is normal.",
             "(d)  H\u2080: \u03c3\u00b2\u2081 = \u03c3\u00b2\u2082.")
  
  f14 <- function(h,....){
    if(tail(svalue(r14),1) == ans14[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r14),1)== ans14[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r14),1) == ans14[3]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r14),1)== ans14[4]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    svalue(r14) <- character(0)
  }
  
  r14 <- gcheckboxgroup(ans14, container = gp14, checked = FALSE, where = "beginning")
  
  #------------- Question 15 -----------#
  
  gp15 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp15.1 <- ggroup(container = gp15, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("15) ", container = gp15.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("The plot below is a...", container = gp15.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  x <- rnorm(20)
  gp15.1a <- getWidget(gp15)
  img <- tkrplot(gp15.1a, function(){ 
    par(bg = "white", mar = c(4.5,4.1,1,1))
    qqnorm(x, cex.lab =.9, main = "")
    qqline(x, col = 2, lty = 2)
  }
  )
  add(gp15, img)
  ans15 <- c("(a) regression plot.",
             "(b) heteroscedasticy plot.",
             "(c) normal probability plot.",
             "(d) homoscedasticity plot.")

  f15 <- function(h,....){
    if(tail(svalue(r15),1) == ans15[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r15),1)== ans15[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r15),1)== ans15[3]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r15),1)== ans15[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r15) <- character(0)
  }
  
  r15 <- gcheckboxgroup(ans15, container = gp15, checked = FALSE, where = "beginning", handler = f15)
  
  
  #------------- Question 16 -----------#
  
  gp16 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp16.1 <- ggroup(container = gp16, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("16) ", container = gp16.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("The plot from the previous question is generally used to...", container = gp16.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans16 <- c("(a)  Check for the validity of the equal variances assumption.",
             "(b)  Check for the validity of the assumption of normality.",
             "(c)  Check for the validity of the assumption of independence.",
             "(d)  Check for outliers.")
  
  
   f16 <- function(h,....){
    if(tail(svalue(r16),1) == ans16[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r16),1)== ans16[2]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r16),1) == ans16[3]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r16),1)== ans16[4]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    svalue(r16) <- character(0)
   }
   
   r16 <- gcheckboxgroup(ans16, container = gp16, checked = FALSE, where = "beginning", handler = f16)
   
  
}


