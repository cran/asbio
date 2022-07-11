selftest.ANOVAsiminf.tck1 <-function(){

  options(guiToolkit="tcltk")
  w <- gwindow(title = "Simultaneous inference")
  size(w) <- c(700, 400)
  
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
  
  
  #------------- Question 1 -----------#
  
  f1 <- function(h,....){
    if(svalue(r1) == ans1[1]){
      gmessage(msg="Correct")
    }
    if(svalue(r1)== ans1[2]){
      gmessage(msg="Inorrect", icon = "error")
    }
    if(svalue(r1)== ans1[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(svalue(r1)== ans1[4]){
      gmessage(msg="Inorrect", icon = "error")
    }
    svalue(r1) <- character(0)
  }
  
  
  gp1 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp1.1 <- ggroup(container = gp1, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("1) ", container = gp1.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("What is the family of tests for which Scheff\u00E9's procedure will control family-wise type I error?", container = gp1.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  #addSpace(gp1, .5)
  
  ans1 <- c("(a)  All possible comparisons.",
            "(b)  All possible pairwise comparisons.",
            "(c)  All possible comparisons to a control.",
            "(d)  None of the above.")
  
  r1 <- gcheckboxgroup(ans1, container = gp1, where = "beginning", handler = f1)
  

  
  #------------- Question 2 -----------#
  
 
  
  gp2 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp2.1 <- ggroup(container = gp2, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("2) ", container = gp2.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("What is the family of tests for which Tukey's procedure will control family-wise type I error?", container = gp2.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  #addSpace(gp2, .5)
 
  
  ans2 <- c("(a)  All possible comparisons.",
            "(b)  All possible pairwise comparisons.",
            "(c)  All possible comparisons to a control.",
            "(d)  None of the above.")
  
  f2 <- function(h,....){
    if(svalue(r2) == ans2[1]){
      gmessage(msg="Inorrect", icon = "error")
    }
    if(svalue(r2)== ans2[2]){
      gmessage(msg="Correct")
    }
    if(svalue(r2)== ans2[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(svalue(r2)== ans2[4]){
      gmessage(msg="Inorrect", icon = "error")
    }
    svalue(r2) <- character(0)
  }
  
  r2 <- gcheckboxgroup(ans2, container = gp2, where = "beginning", handler = f2)
  

  
  #------------- Question 3 -----------#
  
  
  
  gp3 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp3.1 <- ggroup(container = gp3, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("3) ", container = gp3.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("What is the family of tests for which Dunnett's procedure will control family-wise type I error?", container = gp3.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  #addSpace(gp3, .5)
  
  
  ans3 <- c("(a)  All possible comparisons.",
            "(b)  All possible pairwise comparisons.",
            "(c)  All possible comparisons to a control.",
            "(d)  None of the above.")
  
  f3 <- function(h,....){
    if(svalue(r3) == ans3[1]){
      gmessage(msg="Inorrect", icon = "error")
    }
    if(svalue(r3)== ans3[2]){
      gmessage(msg="Inorrect", icon = "error")
    }
    if(svalue(r3)== ans3[3]){
      gmessage(msg="Correct")
    }
    if(svalue(r3)== ans3[4]){
      gmessage(msg="Inorrect", icon = "error")
    }
    svalue(r3) <- character(0)
  }
  
  r3 <- gcheckboxgroup(ans3, container = gp3, where = "beginning", handler = f3)
  

  
  #------------- Question 4 -----------#
  
  
  
  gp4 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp4.1 <- ggroup(container = gp4, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("4) ", container = gp4.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("Family-wise type I error rate (FWER) is...", container = gp4.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  #addSpace(gp4, .5)
  
  
  ans4 <- c("(a)  the probability that any one test in a family of tests rejects H\u2080.",
            "(b)  the probability that any one test in a family of tests incorrectly rejects H\u2080.",
            "(c)  the probability that all tests in a family of tests incorrectly rejects H\u2080.",
            "(d)  the probability that no test in a family of tests correctly rejects H\u2080.",
            "(e)  the number of true H\u2080 rejections
divided by the total number of H\u2080 rejections.")
  
  f4 <- function(h,....){
    if(svalue(r4) == ans4[1]){
      gmessage(msg="Inorrect", icon = "error")
    }
    if(svalue(r4)== ans4[2]){
      gmessage(msg="Correct")
    }
    if(svalue(r4)== ans4[3]){
      gmessage(msg="Inorrect", icon = "error")
    }
    if(svalue(r4)== ans4[4]){
      gmessage(msg="Inorrect", icon = "error")
    }  
    if(svalue(r4)== ans4[5]){
      gmessage(msg="Inorrect", icon = "error")  
    }
  
      svalue(r4) <- character(0)
    }
    
    r4 <- gcheckboxgroup(ans4, container = gp4, where = "beginning", handler = f4)
    
    
  #------------- Question 5 -----------#
  
  
  
  gp5 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp5.1 <- ggroup(container = gp5, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("5) ", container = gp5.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("False discovery rate (FDR) is...", container = gp5.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  #addSpace(gp5, .5)
  
  
  ans5 <- c("(a)  the probability that any one test in a family of tests rejects H\u2080.",
            "(b)  the probability that any one test in a family of tests incorrectly rejects H\u2080.",
            "(c)  the probability that all tests in a family of tests incorrectly rejects H\u2080.",
            "(d)  the probability that no test in a family of tests correctly rejects H\u2080.",
            "(e)  the number of true H\u2080 rejections
divided by the total number of H\u2080 rejections.")
  
  f5 <- function(h,....){
    if(svalue(r5) == ans5[1]){
      gmessage(msg="Inorrect", icon = "error")
    }
    if(svalue(r5)== ans5[2]){
      gmessage(msg="Inorrect", icon = "error")
    }
    if(svalue(r5)== ans5[3]){
      gmessage(msg="Inorrect", icon = "error")
    }
    if(svalue(r5)== ans5[4]){
      gmessage(msg="Inorrect", icon = "error")
    }
    if(svalue(r5)== ans5[5]){
      gmessage(msg="Correct")  
    }
    svalue(r5) <- character(0)
  }
  
  r5 <- gcheckboxgroup(ans5, container = gp5, where = "beginning", handler = f5)
  

  
  #------------- Question 5 -----------#
  
  
  
  gp6 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp6.1 <- ggroup(container = gp6, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("6) ", container = gp6.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("(T or F) FDR tends to me more conservative than FWER with respect to false null rejections.", container = gp6.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  #addSpace(gp6, .5)
  
  
  ans6 <- c("(a)  TRUE",
            "(b)  FALSE"
)
  
  f6 <- function(h,....){
    if(svalue(r6) == ans6[1]){
      gmessage(msg="Inorrect", icon = "error")
    }
    if(svalue(r6)== ans6[2]){
      gmessage(msg="Correct", icon = "error")
    }
    svalue(r6) <- character(0)
    }
    
    r6 <- gcheckboxgroup(ans6, container = gp6, where = "beginning", handler = f6)
    
    
      
}