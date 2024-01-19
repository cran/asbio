selftest.science.tck1 <-function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "Scientific foundations")
  size(w) <- c(700, 650)
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
  
  
  #------------- Question 1 -----------#
  
  gp1 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp1.1 <- ggroup(container = gp1, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("1) ", container = gp1.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("A scientist measures seed weights from an experimental plot.  The scale being used can distinguish\n values of 0.0001 and 0.0002 g (probably overkill for seeds). However, she finds that her scale is\n biased (high).  The seed measures are best described as...", container = gp1.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  # addSpace(gp1, .5, horizontal=FALSE)
  
  ans1 <- c("(a) accurate but not precise.",
            "(b) precise but not accurate.",
            "(c) neither accurate nor precise.",
            "(d) both accurate and precise.")
  
  f1 <- function(h,....){
    if(tail(svalue(r1),1) == ans1[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[2]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r1),1)== ans1[3]){
      gmessage(msg="Incorrect", icon = "error")
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
  qq <- glabel("Scientific objectivity...", container = gp2.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  
  ans2 <- c("(a) requires that scientists not give 'free rein' to their imaginations.",
            "(b) means that one should rely strongly on 'personal judgement' to gather and assess data.",
            "(c) means that one should always try to show that one's hypotheses are true.",
            "(d) requires that a reported outcome be reproducible by others."  )
  
  f2 <- function(h,....){
    if(tail(svalue(r2),1) == ans2[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[3]){
      gmessage(msg="Incorrect",  icon = "error")
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
  qq <- glabel("Empirical evidence can be acquired through...", container = gp3.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  
  # addSpace(gp3, .1, horizontal=FALSE)
  ans3 <- c("(a) careful examination of existing papers and data.",
            "(b) experimentation.",
            "(c) systematic observation.",
            "(d) All of the above.")
  
  f3 <- function(h,....){
    if(tail(svalue(r3),1) == ans3[1]){
      gmessage(msg="Partially correct",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[2]){
      gmessage(msg="Partially correct",  icon = "error")
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
  qq <- glabel("All but which of the following are non-empirical sciences?",
               container = gp4.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans4 <- c("(a)  Mathematics.",
            "(b)  Pure logic.",
            "(c)  Biology.")
  
  f4 <- function(h,....){
    if(tail(svalue(r4),1) == ans4[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[3]){
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
  qq <- glabel("In the modern (Renaissance to present; i.e., 14th
century onward) development of the scientific method, all but which of the following have occurred?", container = gp5.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans5 <- c("(a)  Reliance on experimentation has increased.",
            "(b)  A greater emphasis has been placed on a form of logic called deduction.",
            "(c)  Probability has been used increasingly.")
  
  
  f5 <- function(h,....){
    if(tail(svalue(r5),1) == ans5[1]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[2]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r5),1)== ans5[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r5) <- character(0)
  }
  
  r5 <- gcheckboxgroup(ans5, container = gp5, checked = FALSE, where = "beginning", handler = f5)
  
  #------------- Question 6 -----------#
  
  
  gp6 <- ggroup(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp6.1 <- ggroup(container = gp6, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("6) ", container = gp6.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("Galileo initially demonstrated the characteristics of gravity using...", container = gp6.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans6 <- c("(a) controlled experiments.",
            "(b) a thought problem.",
            "(c) careful observational data.",
            "(d) All of the above.")
  
  f6 <- function(h,....){
    if(tail(svalue(r6),1) == ans6[1]){
      gmessage(msg="Incorrect",  icon = "error")
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
  
  gp7 <- ggroup(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp7.1 <- ggroup(container = gp7, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("7) ", container = gp7.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("If all of the premises are true, the conclusion must be true.  This is a characteristic of...", container = gp7.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans7 <- c("(a) Deduction.",
            "(b) Induction",
            "(c) Reduction.",
            "(d) All of the above.")
  
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
  
  
  gp8 <- ggroup(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp8.1 <- ggroup(container = gp8, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("8) ", container = gp8.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("The following is an example of what?\n
If not A then not B  {Premise 1}
not A                          {Premise 2}
not B                          {Conclusion}", container = gp8.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans8 <- c("(a) Reductio ad absurdum",
            "(b) Modus ponens",
            "(c) Modus tollens",
            "(d) Affirming the consequent")
  
  f8 <- function(h,....){
    if(tail(svalue(r8),1) == ans8[1]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r8),1)== ans8[2]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r8),1)== ans8[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r8),1)== ans8[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r8) <- character(0)
  }
  
  r8 <- gcheckboxgroup(ans8, container = gp8, checked = FALSE, where = "beginning", handler = f8)
  
  
  #------------- Question 9 -----------#
  
  
  gp9 <- ggroup(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp9.1 <- ggroup(container = gp9, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("9) ", container = gp9.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("The following is an example of what?\n 
If A then B  {Premise 1}
B                   {Premise 2}
A                   {Conclusion}", container = gp9.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans9 <- c("(a) Reductio ad absurdum",
            "(b) Modus ponens",
            "(c) Modus tollens",
            "(d) Affirming the consequent")
  
  f9 <- function(h,....){
    if(tail(svalue(r9),1) == ans9[1]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r9),1)== ans9[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r9),1)== ans9[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r9),1)== ans9[4]){
      gmessage(msg="Correct")
    }
    svalue(r9) <- character(0)
  }
  
  r9 <- gcheckboxgroup(ans9, container = gp9, checked = FALSE, where = "beginning", handler = f9)
  
  
  #------------- Question 9 -----------#
  
  
  gp10 <- ggroup(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp10.1 <- ggroup(container = gp10, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("10) ", container = gp10.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("The following is an example of what?\n
If A then B      {Premise 1}
not B               {Premise 2}
not A               {Conclusion}", container = gp10.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans10 <- c("(a) Reductio ad absurdum",
             "(b) Modus ponens",
             "(c) Modus tollens",
             "(d) Affirming the consequent")
  
  f10 <- function(h,....){
    if(tail(svalue(r10),1) == ans10[1]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r10),1)== ans10[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r10),1)== ans10[3]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r10),1)== ans10[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r10) <- character(0)
  }
  
  r10 <- gcheckboxgroup(ans10, container = gp10, checked = FALSE, where = "beginning", handler = f10)
  
}
















