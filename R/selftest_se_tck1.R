selftest.se.tck1 <- function (){ 
  options(guiToolkit="tcltk")
  w <- gwindow(title = "Experimental and Sampling design")
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
  
  #------------- Question 1 -----------#
  gp1 <- ggroup(container = q1, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("Random assignment of experimental units to treatments will help provide...", container = gp1, anchor = c(-1,1))
  addSpace(gp1, .5, horizontal=FALSE)
  
  ans1 <- c("(a)     absolute proof regarding the effect of the treatment.",
            "(b)     causal evidence regarding the effect of the treatment.",
            "(c)     inference to the sampled population.",
            "(d)     inference to the sample.")
  
  r1 <- gcheckboxgroup(ans1, container = gp1, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r1, handler = function(h,....){
    if(tail(svalue(r1),1) == ans1[1]){
      gmessage(message="Incorrect. Absolute proof of causality is not possible with empirical data.", icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[2]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r1),1)== ans1[3]){
      gmessage(message="Incorrect. The method of sampling (not the method of treatment assignment) will determine inference to the population.", icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[4]){
      gmessage(message="Incorrect. The method of sampling (not the method of treatment assignment) will determine inference to the population.", icon = "error")
    }
    svalue(r1) <- character(0)
  })
  
  
  #------------- Question 2 -----------#
  gp2 <- ggroup(container = q2, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("Random sampling from the population will help provide...", container = gp2, anchor = c(-1,1))
  addSpace(gp2, .5, horizontal=FALSE)
  ans2 <- c("(a)     absolute proof regarding the effect of the treatment.",
            "(b)     causal evidence regarding the effect of the treatment.",
            "(c)     inference to the sampled population.",
            "(d)     inference to the sample.")
  
  r2 <- gcheckboxgroup(ans2, container = gp2, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r2, handler = function(h,....){
    if(tail(svalue(r2),1) == ans2[1]){
      gmessage(message="Incorrect. Absolute proof of causality is not possible with empirical data.", icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[2]){
      gmessage(message="Incorrect. The experimental design (not the method of sampling) will determine causal inference.", icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[3]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r2),1)== ans2[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r2) <- character(0)
  })
  
  
  #------------- Question 3 -----------#
  gp3 <- ggroup(container = q3, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("A lurking variable...", container = gp3, anchor = c(-1,1))
  addSpace(gp3, .5, horizontal=FALSE)
  ans3 <- c("(a)     is an unmeasured explanatory variable that may be important in explaining the response variable(s).",
            "(b)     will often result in false claims about the causality of X on Y.",
            "(c)     is generally not an explanatory variable central to a research hypothesis.",
            "(d)     All of the above.")
  
  r3 <- gcheckboxgroup(ans3, container = gp3, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r3, handler = function(h,....){
    if(tail(svalue(r3),1) == ans3[1]){
      gmessage(message="Partially correct", icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[2]){
      gmessage(message="Partially correct", icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[3]){
      gmessage(message="Partially correct", icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[4]){
      gmessage(message="Correct")
    }
    svalue(r3) <- character(0)
  })
  
  
  #------------- Question 4 -----------#
  gp4 <- ggroup(container = q4, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("Confounded variables...", container = gp4, anchor = c(-1,1))
  addSpace(gp4, .5, horizontal=FALSE)
  ans4 <- c("(a)     are explanatory variables that are indistinguishable with respect to their effect on Y.",
            "(b)     obscure straightforward interpretations about the effect of X on Y.",
            "(c)     will result in multicollinearity problems in linear models.",
            "(d)     All of the above.")
  
  r4 <- gcheckboxgroup(ans4, container = gp4, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r4, handler = function(h,....){
    if(tail(svalue(r4),1) == ans4[1]){
      gmessage(message="Partially correct", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[2]){
      gmessage(message="Partially correct", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[3]){
      gmessage(message="Partially correct", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[4]){
      gmessage(message="Correct")
    }
    svalue(r4) <- character(0)
  })
  
  
  #------------- Question 5 -----------#
  gp5 <- ggroup(container = q5, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("In a multivariate analysis we have...", container = gp5, anchor = c(-1,1))
  addSpace(gp5, .5, horizontal=FALSE)
  ans5 <- c("(a)     multiple response variables and one or more explanatory variables.",
            "(b)     a single response variable and more than one explanatory variable.",
            "(c)     multiple observations from both Y and X variables.",
            "(d)     None of the above.")
  
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
    svalue(r5) <- character(0)
  })
  
  
  #------------- Question 6 -----------#
  gp6 <- ggroup(container = q6, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("If a population size is definitively finite, then the conventional formula for the \nstandard error of the mean will be...", container = gp6, anchor = c(-1,1))
  addSpace(gp6, .5, horizontal=FALSE)
  ans6 <- c("(a)     unbiased.",
            "(b)     biased high.",
            "(c)     biased low.",
            "(d)     biased high or low, depending on N.")
  
  r6 <- gcheckboxgroup(ans6, container = gp6, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r6, handler = function(h,....){
    if(tail(svalue(r6),1) == ans6[1]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[2]){
      gmessage(message="Correct")
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
  glabel("If a population size is definitively finite, with size N, then the conventional formula for the sample \nstandard error of the mean should be multiplied by the square root of...", container = gp7, anchor = c(-1,1))
  addSpace(gp7, .5, horizontal=FALSE)
  ans7 <- c("(a)     (1-n/N).",
            "(b)     (n/N-1).",
            "(c)     (n/N).",
            "(d)     (1-N/n).")
  
  r7 <- gcheckboxgroup(ans7, container = gp7, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r7, handler = function(h,....){
    if(tail(svalue(r7),1) == ans7[1]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r7),1)== ans7[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[3]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r7) <- character(0)
  })
  
  
  #------------- Question 8 -----------#
  gp8 <- ggroup(container = q8, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("Pseudoreplication...", container = gp8, anchor = c(-1,1))
  addSpace(gp8, .5, horizontal=FALSE)
  ans8 <- c("(a)     indicates a lack of replication in sample entities assumed to be samples.",
            "(b)     can result in a situation in which treatments are not replicated (although samples may be).",
            "(c)     results in testing for treatment effects with an error term inappropriate for the hypothesis \nbeing considered.",
            "(d)     All of the above.")
  
  r8 <- gcheckboxgroup(ans8, container = gp8, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r8, handler = function(h,....){
    if(tail(svalue(r8),1) == ans8[1]){
      gmessage(message="Partially correct", icon = "error")
    }
    if(tail(svalue(r8),1)== ans8[2]){
      gmessage(message="Partially correct",, icon = "error")
    }
    if(tail(svalue(r8),1)== ans8[3]){
      gmessage(message="Partially correct", icon = "error")
    }
    if(tail(svalue(r8),1)== ans8[4]){
      gmessage(message="Correct")
    }
    svalue(r8) <- character(0)
  })
  
  
  
  
  
  #------------- Question 9 -----------#
  gp9 <- ggroup(container = q9, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("In an experiment to consider the effect of nutrient additions to plant growth we have two groups and 40 plants. \nIn group A we randomly assign 20 plants to a supplemental nutrient treatment.  Group B plants receive no \nadditional nutrients, but are otherwise handled in exactly in the same way as group A.  Group B can be called...", container = gp9, anchor = c(-1,1))
  addSpace(gp9, .5, horizontal=FALSE)
  ans9 <- c("(a)     a pseudocontrol.",
            "(b)     a non-control.",
            "(c)     a negative control.",
            "(d)     a positive control.")
  
  r9 <- gcheckboxgroup(ans9, container = gp9, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r9, handler = function(h,....){
    if(tail(svalue(r9),1) == ans9[1]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r9),1)== ans9[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r9),1)== ans9[3]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r9),1)== ans9[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r9) <- character(0)
  })
  
  
  #------------- Question 10 -----------#
  gp10 <- ggroup(container = q10, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("Controls are used to...", container = gp10, anchor = c(-1,1))
  addSpace(gp10, .5, horizontal=FALSE)
  ans10 <- c("(a)     quantify the effect of a treatment by accounting for background conditions.",
             "(b)     control for lurking variables.",
             "(c)     strengthen causal evidence.",
             "(d)     all of the above.")
  
  r10 <- gcheckboxgroup(ans10, container = gp10, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r10, handler = function(h,....){
    if(tail(svalue(r10),1) == ans10[1]){
      gmessage(message="Partially correct", icon = "error")
    }
    if(tail(svalue(r10),1)== ans10[2]){
      gmessage(message="Partially correct", icon = "error")
    }
    if(tail(svalue(r10),1)== ans10[3]){
      gmessage(message="Partially correct", icon = "error")
    }
    if(tail(svalue(r10),1)== ans10[4]){
      gmessage(message="Correct")
    }
    svalue(r10) <- character(0)
  })  
  
  #------------- Question 11 -----------#
  gp11 <- ggroup(container = q11, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("An analytical approach appropriate when X and Y variables are both quantitative is...", container = gp11, anchor = c(-1,1))
  addSpace(gp11, .5, horizontal=FALSE)
  ans11 <- c("(a)     Conventional regression.",
             "(b)     ANOVA-type analysis.",
             "(c)     a GLM regression approach.",
             "(d)     tabular analysis.",
             "(e)     ANCOVA-type analysis.")
  
  r11 <- gcheckboxgroup(ans11, container = gp11, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r11, handler = function(h,....){
    if(tail(svalue(r11),1) == ans11[1]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r11),1)== ans11[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r11),1)== ans11[3]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r11),1)== ans11[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r11),1)== ans11[5]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r11) <- character(0)
  }) 
  
  #------------- Question 12 -----------#
  gp12 <- ggroup(container = q12, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("An analytical approach appropriate when X and Y variables are both categorical is...", container = gp12, anchor = c(-1,1))
  addSpace(gp12, .5, horizontal=FALSE)
  ans12 <- c("(a)     Conventional regression.",
             "(b)     ANOVA-type analysis.",
             "(c)     a GLM regression approach.",
             "(d)     tabular analysis.",
             "(e)     ANCOVA-type analysis.")
  
  r12 <- gcheckboxgroup(ans12, container = gp12, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r12, handler = function(h,....){
    if(tail(svalue(r12),1) == ans12[1]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r12),1)== ans12[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r12),1)== ans12[3]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r12),1)== ans12[4]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r12),1)== ans12[5]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r12) <- character(0)
  }) 
  
  #------------- Question 13 -----------#
  gp13 <- ggroup(container = q13, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("An analytical approach appropriate when the X variable(s) is (are) categorical and the Y variable is \nquantitative is...", container = gp13, anchor = c(-1,1))
  addSpace(gp13, .5, horizontal=FALSE)
  ans13 <- c("(a)     Conventional regression.",
             "(b)     ANOVA-type analysis.",
             "(c)     a GLM regression approach.",
             "(d)     tabular analysis.",
             "(e)     ANCOVA-type analysis.")
  
  r13 <- gcheckboxgroup(ans13, container = gp13, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r13, handler = function(h,....){
    if(tail(svalue(r13),1) == ans13[1]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r13),1)== ans13[2]){
      gmessage(message="Correct")
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
    svalue(r13) <- character(0)
  })   
  
  #------------- Question 14 -----------#
  gp14 <- ggroup(container = q14, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("An analytical approach appropriate when the X variable(s) is (are) quantitative and the Y variable is \ncategorical is...", container = gp14, anchor = c(-1,1))
  addSpace(gp14, .5, horizontal=FALSE)
  ans14 <- c("(a)     Conventional regression.",
             "(b)     ANOVA-type analysis.",
             "(c)     a GLM regression approach.",
             "(d)     tabular analysis.",
             "(e)     ANCOVA-type analysis.")
  
  r14 <- gcheckboxgroup(ans14, container = gp14, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r14, handler = function(h,....){
    if(tail(svalue(r14),1) == ans14[1]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r14),1)== ans14[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r14),1)== ans14[3]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r14),1)== ans14[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r14),1)== ans14[5]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r14) <- character(0)
  })  
  
  #------------- Question 15 -----------#
  gp15 <- ggroup(container = q15, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("An analytical approach appropriate when one X variable is quantitative, one X variable is categorical, \nand the Y variable is quantitative is...", container = gp15, anchor = c(-1,1))
  addSpace(gp15, .5, horizontal=FALSE)
  ans15 <- c("(a)     Conventional regression.",
             "(b)     ANOVA-type analysis.",
             "(c)     a GLM regression approach.",
             "(d)     tabular analysis.",
             "(e)     ANCOVA-type analysis.")
  
  r15 <- gcheckboxgroup(ans15, container = gp15, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r15, handler = function(h,....){
    if(tail(svalue(r15),1) == ans15[1]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r15),1)== ans15[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r15),1)== ans15[3]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r15),1)== ans15[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r15),1)== ans15[5]){
      gmessage(message="Correct")
    }
    svalue(r15) <- character(0)
  }) 
  
  #------------- Question 16 -----------#
  gp16 <- ggroup(container = q16, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("In ANOVA, a factor is...", container = gp16, anchor = c(-1,1))
  addSpace(gp16, .5, horizontal=FALSE)
  ans16 <- c("(a)     a categorical explanatory variable.",
             "(b)     a category from a categorical explanatory variable.",
             "(c)     a response variable.",
             "(d)     a tabular analysis.")
  
  r16 <- gcheckboxgroup(ans16, container = gp16, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r16, handler = function(h,....){
    if(tail(svalue(r16),1) == ans16[1]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r16),1)== ans16[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r16),1)== ans16[3]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r16),1)== ans16[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r16) <- character(0)
  }) 
  
  #------------- Question 17 -----------#
  gp17 <- ggroup(container = q17, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("In ANOVA, fixed factor levels are...", container = gp17, anchor = c(-1,1))
  addSpace(gp17, .5, horizontal=FALSE)
  ans17 <- c("(a)     a subset from a population of potential factor levels.",
             "(b)     are not informative.",
             "(c)     not an obvious subset from a population of potential factor levels.",
             "(d)     are informative.",
             "(e)     (a) and (b)",
             "(f)     (c) and (d)")
  
  r17 <- gcheckboxgroup(ans17, container = gp17, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r17, handler = function(h,....){
    if(tail(svalue(r17),1) == ans17[1]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r17),1)== ans17[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r17),1)== ans17[3]){
      gmessage(message="Partially correct", icon = "error")
    }
    if(tail(svalue(r17),1)== ans17[4]){
      gmessage(message="Partially correct", icon = "error")
    }
    if(tail(svalue(r17),1)== ans17[5]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r17),1)== ans17[6]){
      gmessage(message="Correct")
    }
    svalue(r17) <- character(0)
  })  
  
  #------------- Question 18 -----------#
  gp18 <- ggroup(container = q18, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("In ANOVA, random factor levels are...", container = gp18, anchor = c(-1,1))
  addSpace(gp18, .5, horizontal=FALSE)
  ans18 <- c("(a)     a subset from a population of potential factor levels.",
             "(b)     are not informative.",
             "(c)     not an obvious subset from a population of potential factor levels.",
             "(d)     are informative.",
             "(e)     (a) and (b)",
             "(f)     (c) and (d)")
  
  r18 <- gcheckboxgroup(ans18, container = gp18, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r18, handler = function(h,....){
    if(tail(svalue(r18),1) == ans18[1]){
      gmessage(message="Partially correct", icon = "error")
    }
    if(tail(svalue(r18),1)== ans18[2]){
      gmessage(message="Partially correct", icon = "error")
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
