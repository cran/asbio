selftest.H0.tck <- function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "Null hypotheses")
  size(w) <- c(700, 1000)
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
  # q1 <- gexpandgroup("Question 1", container=g)
  # q2 <- gexpandgroup("Question 2", container=g, anchor=c(-1,1))
  # q3 <- gexpandgroup("Question 3", container=g, anchor=c(-1,1))
  # q4 <- gexpandgroup("Question 4", container=g, anchor=c(-1,1))
  # q5 <- gexpandgroup("Question 5", container=g, anchor=c(-1,1))
  # q6 <- gexpandgroup("Question 6", container=g, anchor=c(-1,1))

  # visible(q1) <- FALSE
  # visible(q2) <- FALSE
  # visible(q3) <- FALSE
  # visible(q4) <- FALSE
  # visible(q5) <- FALSE
  # visible(q6) <- FALSE
  # 
  #------------- Question 1 -----------#
  gp1 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp1.1 <- ggroup(container = gp1, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("1) ", container = gp1.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("I reject H\u2080 but H\u2080 is true.  This is a...", container = gp1.1, horizontal = TRUE)
  font(qq) <- list(family = "cambria", size = 11)
#  addSpace(gp1, .5)
  ans1 <- c("(a)  Type I error.",
            "(b)  Type II error.",
            "(c)  Type III error.",
            "(d)  None of the above.")

  f1 = function(h,....){
    if(svalue(r1) == ans1[1]){
      gmessage(msg="Correct")
    }
    if(svalue(r1) == ans1[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(svalue(r1) == ans1[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(svalue(r1) == ans1[4]){
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
  qq <- glabel("We suspect that a soil N treatment will increase mean plant biomass compared to a control.  \nWhat would our alternative hypothesis be?", container = gp2.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
   # addSpace(gp2, .5, horizontal=FALSE)
  ans2 <- c("(a) \u03BCN < \u03BCControl.",
            "(b) \u03BCN > \u03BCControl.",
            "(c) \u03BCN = \u03BCControl.",
            "(d) \u03BCN \u2260 \u03BCControl.")
  
  
  f2 <- function(h,....){
    if(svalue(r2) == ans2[1]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(svalue(r2) == ans2[2]){
      gmessage(msg="Correct")
    }
    if(svalue(r2)== ans2[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(svalue(r2)== ans2[4]){
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
  qq <- glabel("Statistical power is...",
         container = gp3.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
 # addSpace(gp3, .5, horizontal=FALSE)
  ans3 <- c("(a)  1 - the probability of type I error",
            "(b)  1 - \u03B1\u00B2",
            "(c)  1 - the probability of type II error",
            "(d)  1/\u03B1")
  
  
  
  f3 <- function(h,....){
    if(svalue(r3) == ans3[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(svalue(r3) == ans3[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(svalue(r3) == ans3[3]){
      gmessage(msg="Correct")
    }
    if(svalue(r3) == ans3[4]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    svalue(r3) <- character(0)
  }
  
  r3 <- gcheckboxgroup(ans3, container = gp3, checked = FALSE, where = "beginning", handler = f3)
  
  
  #------------- Question 4 -----------#
  
  gp4 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp4.1 <- ggroup(container = gp4, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("4) ", container = gp4.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("(T or F) A P-value requires a null hypothesis.",
         container = gp4.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
#  addSpace(gp4, .5, horizontal=FALSE)
  ans4 <- c("T",
            "F")
  
  
  
  f4 <- function(h,....){
    if(svalue(r4) == ans4[1]){
      gmessage(msg="Correct")
    }
    if(svalue(r4) == ans4[2]){
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
  qq <- glabel("A P-value is...",
         container = gp5.1, anchor = c(-1,1))
  
  font(qq) <- list(family = "cambria", size = 11)
  
#  addSpace(gp5, .5, horizontal=FALSE)
  ans5 <- c("(a)  The probability that the null hypothesis is true.",
            "(b)  The probability that the null hypothesis is false.",
            "(c)  The probability that the alternative hypothesis is false.",
            "(d)  P(data|H\u2080)")
  

  f5 <- function(h,....){
    if(svalue(r5) == ans5[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(svalue(r5) == ans5[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(svalue(r5) == ans5[3]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(svalue(r5) == ans5[4]){
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
  qq <- glabel("Which of the following constitute a criticism of H\u2080 hypothesis testing?",
         container = gp6.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
#  addSpace(gp6, .5, horizontal=FALSE)
  ans6 <- c("(a)  The sample space for the H\u2080 distribution may exceed what can be sampled.",
            "(b)  P-values represent P(data|H\u2080) not P(H\u2080|data).",
            "(c)  Evidence against H\u2080 may not imply evidence for the alternative.",
            "(d)  Significance levels (in significance testing) are arbitrary",
            "(e)  P-values are partially a function of sample size.",
            "(f)  All of the above.")

  f6 <- function(h,....){
    if(svalue(r6) == ans6[1]){
      gmessage(msg="Partially correct",  icon = "error")
    }
    if(svalue(r6) == ans6[2]){
      gmessage(msg="Partially correct",  icon = "error")
    }
    if(svalue(r6) == ans6[3]){
      gmessage(msg="Partially correct",  icon = "error")
    }
    if(svalue(r6) == ans6[4]){
      gmessage(msg="Partially correct",  icon = "error")
    }
    if(svalue(r6) == ans6[5]){
      gmessage(msg="Partially correct",  icon = "error")
    }
    if(svalue(r6) == ans6[6]){
      gmessage(msg="Correct")
    }
    svalue(r6) <- character(0)
  }            
  
  r6 <- gcheckboxgroup(ans6, container = gp6, checked = FALSE, where = "beginning", handler = f6)

}