selftest.se.tck1 <- function (){ 
  options(guiToolkit="tcltk")
  w <- gwindow(title = "Experimental and Sampling design")
  size(w) <- c(700, 950)
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
  
  
  #------------- Question 1 -----------#
  gp1 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp1.1 <- ggroup(container = gp1, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("1) ", container = gp1.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("Random assignment of experimental units to treatments will help provide...", container = gp1.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans1 <- c("(a)     absolute proof regarding the effect of the treatment.",
            "(b)     causal evidence regarding the effect of the treatment.",
            "(c)     inference to the sampled population.",
            "(d)     inference to the sample.")
  
  
  
  f1 <- function(h,....){
    if(tail(svalue(r1),1) == ans1[1]){
      gmessage(msg="Incorrect. Absolute proof of causality is not possible with empirical data.", icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[2]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r1),1)== ans1[3]){
      gmessage(msg="Incorrect. The method of sampling (not the method of treatment assignment) will determine inference to the population.", icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[4]){
      gmessage(msg="Incorrect. The method of sampling (not the method of treatment assignment) will determine inference to the population.", icon = "error")
    }
    svalue(r1) <- character(0)
  }
  
  r1 <- gcheckboxgroup(ans1, container = gp1, checked = FALSE, where = "beginning", handler = f1)
  
  
  
  #------------- Question 2 -----------#
  gp2 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp2.1 <- ggroup(container = gp2, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("2) ", container = gp2.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("Random sampling from the population will help provide...", container = gp2.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  

    ans2 <- c("(a)     absolute proof regarding the effect of the treatment.",
            "(b)     causal evidence regarding the effect of the treatment.",
            "(c)     inference to the sampled population.",
            "(d)     inference to the sample.")
  

  f2 <- function(h,....){
    if(tail(svalue(r2),1) == ans2[1]){
      gmessage(msg="Incorrect. Absolute proof of causality is not possible with empirical data.", icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[2]){
      gmessage(msg="Incorrect. The experimental design (not the method of sampling) will determine causal inference.", icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[3]){
      gmessage(msg="Correct")
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
  qq <- glabel("A lurking variable...", container = gp3.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans3 <- c("(a)     is an unmeasured explanatory variable that may be important in explaining the response variable(s).",
            "(b)     will often result in false claims about the causality of X on Y.",
            "(c)     is generally not an explanatory variable central to a research hypothesis.",
            "(d)     All of the above.")
  

  f3 <- function(h,....){
    if(tail(svalue(r3),1) == ans3[1]){
      gmessage(msg="Partially correct", icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[2]){
      gmessage(msg="Partially correct", icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[3]){
      gmessage(msg="Partially correct", icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[4]){
      gmessage(msg="Correct")
    }
    svalue(r3) <- character(0)
  }
  
  r3 <- gcheckboxgroup(ans3, container = gp3, checked = FALSE, where = "beginning", handler = f3)
  
  
  
  #------------- Question 4 -----------#
  gp4 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp4.1 <- ggroup(container = gp4, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("4) ", container = gp4.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("Confounded variables...", container = gp4.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans4 <- c("(a)     are explanatory variables that are indistinguishable with respect to their effect on Y.",
            "(b)     obscure straightforward interpretations about the effect of X on Y.",
            "(c)     will result in multicollinearity problems in linear models.",
            "(d)     All of the above.")
  
  
  
  f4 <- function(h,....){
    if(tail(svalue(r4),1) == ans4[1]){
      gmessage(msg="Partially correct", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[2]){
      gmessage(msg="Partially correct", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[3]){
      gmessage(msg="Partially correct", icon = "error")
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
  qq <- glabel("In a multivariate analysis we have...", container = gp5.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans5 <- c("(a)     multiple response variables and one or more explanatory variables.",
            "(b)     a single response variable and more than one explanatory variable.",
            "(c)     multiple observations from both Y and X variables.",
            "(d)     None of the above.")
  

  f5 <- function(h,....){
    if(tail(svalue(r5),1) == ans5[1]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r5),1)== ans5[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r5) <- character(0)
  }
  
  r5 <- gcheckboxgroup(ans5, container = gp5, checked = FALSE, where = "beginning", handler = f5)
  
  
  
  #------------- Question 6 -----------#
  gp6 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp6.1 <- ggroup(container = gp6, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("6) ", container = gp6.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("If a population size is definitively finite, then the conventional formula for the standard error of the \nmean will be...", 
         container = gp6.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans6 <- c("(a)     unbiased.",
            "(b)     biased high.",
            "(c)     biased low.",
            "(d)     biased high or low, depending on N.")
  
 f6 <- function(h,....){
    if(tail(svalue(r6),1) == ans6[1]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[2]){
      gmessage(msg="Correct")
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
  qq <- glabel("If a population size is definitively finite, with size N, then the conventional formula for the sample \nstandard error of the mean should be multiplied by the square root of...", 
               container = gp7.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans7 <- c("(a)     1-(n/N).",
            "(b)     n/(N-1).",
            "(c)     n/N.",
            "(d)     1-(N/n).")
  
  f7 <- function(h,....){
    if(tail(svalue(r7),1) == ans7[1]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r7),1)== ans7[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[4]){
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
  qq <- glabel("Pseudoreplication...", container = gp8.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans8 <- c("(a)     indicates a lack of replication in sample entities assumed to be samples.",
            "(b)     can result in a situation in which treatments are not replicated (although samples may be).",
            "(c)     results in testing for treatment effects with an error term inappropriate for the hypothesis \n         being considered.",
            "(d)     All of the above.")

  f8 <- function(h,....){
    if(tail(svalue(r8),1) == ans8[1]){
      gmessage(msg="Partially correct", icon = "error")
    }
    if(tail(svalue(r8),1)== ans8[2]){
      gmessage(msg="Partially correct",, icon = "error")
    }
    if(tail(svalue(r8),1)== ans8[3]){
      gmessage(msg="Partially correct", icon = "error")
    }
    if(tail(svalue(r8),1)== ans8[4]){
      gmessage(msg="Correct")
    }
    svalue(r8) <- character(0)
  }
  
  
  r8 <- gcheckboxgroup(ans8, container = gp8, checked = FALSE, where = "beginning", handler = f8)
  
  
  
  
  #------------- Question 9 -----------#
  gp9 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp9.1 <- ggroup(container = gp9, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("9) ", container = gp9.1, horizontal = TRUE, anchor = c(1,1))
  font(q) <- list(weight = "bold")
  qq <- glabel("In an experiment to consider the effect of nutrient additions to plant growth we have two groups and \n40 plants. In group A we randomly assign 20 plants to a supplemental nutrient treatment.  Group B \nplants receive no additional nutrients, but are otherwise handled in exactly the same way as group A.  \nGroup B can be called...", 
               container = gp9.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  ans9 <- c("(a)     a pseudocontrol.",
            "(b)     a non-control.",
            "(c)     a negative control.",
            "(d)     a positive control.")
  
  f9 <- function(h,....){
    if(tail(svalue(r9),1) == ans9[1]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r9),1)== ans9[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r9),1)== ans9[3]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r9),1)== ans9[4]){
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
  qq <- glabel("Controls are used to...", container = gp10.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans10 <- c("(a)     quantify the effect of a treatment by accounting for background conditions.",
             "(b)     control for lurking variables.",
             "(c)     strengthen causal evidence.",
             "(d)     all of the above.")
  
  f10 <- function(h,....){
    if(tail(svalue(r10),1) == ans10[1]){
      gmessage(msg="Partially correct", icon = "error")
    }
    if(tail(svalue(r10),1)== ans10[2]){
      gmessage(msg="Partially correct", icon = "error")
    }
    if(tail(svalue(r10),1)== ans10[3]){
      gmessage(msg="Partially correct", icon = "error")
    }
    if(tail(svalue(r10),1)== ans10[4]){
      gmessage(msg="Correct")
    }
    svalue(r10) <- character(0)
  }
  
  r10 <- gcheckboxgroup(ans10, container = gp10, checked = FALSE, where = "beginning", handler = f10)
  
  
  #------------- Question 11 -----------#
  gp11 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp11.1 <- ggroup(container = gp11, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("11) ", container = gp11.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("An analytical approach appropriate when X and Y variables are both quantitative is...", container = gp11.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans11 <- c("(a)     Conventional regression.",
             "(b)     ANOVA-type analysis.",
             "(c)     a GLM regression approach.",
             "(d)     tabular analysis.",
             "(e)     ANCOVA-type analysis.")
  
  f11 <- function(h,....){
    if(tail(svalue(r11),1) == ans11[1]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r11),1)== ans11[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r11),1)== ans11[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r11),1)== ans11[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r11),1)== ans11[5]){
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
  qq <- glabel("An analytical approach appropriate when X and Y variables are both categorical is...", container = gp12.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans12 <- c("(a)     Conventional regression.",
             "(b)     ANOVA-type analysis.",
             "(c)     a GLM regression approach.",
             "(d)     tabular analysis.",
             "(e)     ANCOVA-type analysis.")
  
  f12 <- function(h,....){
    if(tail(svalue(r12),1) == ans12[1]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r12),1)== ans12[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r12),1)== ans12[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r12),1)== ans12[4]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r12),1)== ans12[5]){
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
  qq <- glabel("An analytical approach appropriate when the X variable(s) is (are) categorical and the Y variable \nis quantitative is...", 
               container = gp13.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans13 <- c("(a)     Conventional regression.",
             "(b)     ANOVA-type analysis.",
             "(c)     a GLM regression approach.",
             "(d)     tabular analysis.",
             "(e)     ANCOVA-type analysis.")
  
    f13 <- function(h,....){
    if(tail(svalue(r13),1) == ans13[1]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r13),1)== ans13[2]){
      gmessage(msg="Correct")
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
    svalue(r13) <- character(0)
    }
    
    r13 <- gcheckboxgroup(ans13, container = gp13, checked = FALSE, where = "beginning", handler = f13)
    
  
  #------------- Question 14 -----------#
  gp14 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp14.1 <- ggroup(container = gp14, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("14) ", container = gp14.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("An analytical approach appropriate when the X variable(s) is (are) quantitative and the Y variable \nis categorical is...", 
               container = gp14.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans14 <- c("(a)     Conventional regression.",
             "(b)     ANOVA-type analysis.",
             "(c)     a GLM regression approach.",
             "(d)     tabular analysis.",
             "(e)     ANCOVA-type analysis.")
  
  f14 <- function(h,....){
    if(tail(svalue(r14),1) == ans14[1]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r14),1)== ans14[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r14),1)== ans14[3]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r14),1)== ans14[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r14),1)== ans14[5]){
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
  qq <- glabel("An analytical approach appropriate when one X variable is quantitative, one X variable is \ncategorical, and the Y variable is quantitative is...", 
               container = gp15.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans15 <- c("(a)     Conventional regression.",
             "(b)     ANOVA-type analysis.",
             "(c)     a GLM regression approach.",
             "(d)     tabular analysis.",
             "(e)     ANCOVA-type analysis.")

  f15 <- function(h,....){
    if(tail(svalue(r15),1) == ans15[1]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r15),1)== ans15[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r15),1)== ans15[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r15),1)== ans15[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r15),1)== ans15[5]){
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
  qq <- glabel("In ANOVA, a factor is...", container = gp16.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans16 <- c("(a)     a categorical explanatory variable.",
             "(b)     a category from a categorical explanatory variable.",
             "(c)     a response variable.",
             "(d)     a tabular analysis.")
  
  f16 <- function(h,....){
    if(tail(svalue(r16),1) == ans16[1]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r16),1)== ans16[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r16),1)== ans16[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r16),1)== ans16[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r16) <- character(0)
  }
  
  r16 <- gcheckboxgroup(ans16, container = gp16, checked = FALSE, where = "beginning", handler = f16)
  
  #------------- Question 17 -----------#
  gp17 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp17.1 <- ggroup(container = gp17, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("17) ", container = gp17.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("In ANOVA, fixed factor levels are...", container = gp17.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans17 <- c("(a)     a subset from a population of potential factor levels.",
             "(b)     are not informative.",
             "(c)     not an obvious subset from a population of potential factor levels.",
             "(d)     are informative.",
             "(e)     (a) and (b)",
             "(f)     (c) and (d)")
  
  f17 <- function(h,....){
    if(tail(svalue(r17),1) == ans17[1]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r17),1)== ans17[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r17),1)== ans17[3]){
      gmessage(msg="Partially correct", icon = "error")
    }
    if(tail(svalue(r17),1)== ans17[4]){
      gmessage(msg="Partially correct", icon = "error")
    }
    if(tail(svalue(r17),1)== ans17[5]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r17),1)== ans17[6]){
      gmessage(msg="Correct")
    }
    svalue(r17) <- character(0)
  }
  
  r17 <- gcheckboxgroup(ans17, container = gp17, checked = FALSE, where = "beginning", handler = f17)
  
  
  #------------- Question 18 -----------#
  gp18 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp18.1 <- ggroup(container = gp18, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("18) ", container = gp18.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("In ANOVA, random factor levels are...", container = gp18.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans18 <- c("(a)     a subset from a population of potential factor levels.",
             "(b)     are not informative.",
             "(c)     not an obvious subset from a population of potential factor levels.",
             "(d)     are informative.",
             "(e)     (a) and (b)",
             "(f)     (c) and (d)")
  
  f18 <- function(h,....){
    if(tail(svalue(r18),1) == ans18[1]){
      gmessage(msg="Partially correct", icon = "error")
    }
    if(tail(svalue(r18),1)== ans18[2]){
      gmessage(msg="Partially correct", icon = "error")
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
