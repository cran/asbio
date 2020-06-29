selftest.nonparametric6.tck <- function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "Nonparametric alternatives to t-tests")
  size(w) <- c(700, 500)
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)

  
  #------------- Question 1 -----------#
  gp1 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp1.1 <- ggroup(container = gp1, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("1) ", container = gp1.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("The Wilcoxon rank sum test is a nonparametric analogue of the...", container = gp1.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  
    ans1 <- c("(a)     paired t-test.",
            "(b)     Welch's t-test.",
            "(c)     Pooled variance t-test.",
            "(d)     One sample t-test.")
  
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
  qq <- glabel("The Wilcoxon sign rank test is a nonparamteric analogue of the...", container = gp2.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
    ans2 <- c("(a)     paired t-test.",
            "(b)     Welch's t-test.",
            "(c)     Pooled variance t-test.",
            "(d)     One sample t-test.")
  
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
  qq <- glabel("Nonparametric tests tend to...",
         container = gp3.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
    ans3 <- c("(a)  have more power than their parametric analogues.",
            "(b)  have less power than their parametric analogues.",
            "(c)  have the same power as their parametric analogues.",
            "(d)  relative power of parametric and nonparametric tests cannot be determined")
  

  f3 <- function(h,....){
    if(tail(svalue(r3),1) == ans3[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[2]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r3),1)== ans3[3]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[4]){
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
  qq <- glabel("Rank-based permutation tests tend not to be...",
         container = gp4.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
    ans4 <- c("(a)  robust to outliers.",
            "(b)  robust to non-normality.",
            "(c)  robust to heteroscedasticity.",
            "(d)  robust to outliers and non-normality.")
  
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
  qq <- glabel("(T or F) Ties in data simplify the implementation of rank-based permutation tests.",
         container = gp5.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans5 <- c("T",
            "F")
  
  
  f5 <-  function(h,....){
    if(tail(svalue(r5),1) == ans5[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[2]){
      gmessage(msg="Correct")
    }
    svalue(r5) <- character(0)
  }
  
  r5 <- gcheckboxgroup(ans5, container = gp5, checked = FALSE, where = "beginning", handler = f5)
  
  
  
}