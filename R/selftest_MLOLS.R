selftest.ML_OLS.tck <- function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "OLS and ML estimation")
  size(w) <- c(700, 400)
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
 
  
  #------------- Question 1 -----------#
  
  gp1 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp1.1 <- ggroup(container = gp1, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("1) ", container = gp1.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("What is the likelihood of a value for a parameter \u03B8, given data?", container = gp1.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans1 <- c("(a)  The absolute value of data densities resulting from a specified value of \u03B8, \nthat parameterizes an assumed probability distribution.",
            "(b)  P(\u03B8|data).",
            "(c)  The sum of probabilities of data resulting from a specified value of \u03B8, \nthat parameterizes an assumed probability distribution.",
            "(d)  The product of data densities resulting from a specified value of \u03B8, \nthat parameterizes an assumed probability distribution.")
  
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
    svalue(r1) <- character(0)
  }
  
  r1 <- gcheckboxgroup(ans1, container = gp1, checked = FALSE, where = "beginning", handler = f1)
  
  
  
  #------------- Question 2 -----------#
  gp2 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp2.1 <- ggroup(container = gp2, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("2) ", container = gp2.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("(T or F) Likelihood can be interpreted as a probability.", container = gp2, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans2 <- c("True",
            "False")
  
  f2 <- function(h,....){
    if(tail(svalue(r2),1) == ans2[1]){
      gmessage(msg="Incorrect.  Densities cannot always be interpreted as probabilities.  For instance, it is possible for a likelihood to be greater than 1.",  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[2]){
      gmessage(msg="Correct.  Densities cannot always be interpreted as probabilities.  For instance, it is possible for a likelihood to be greater than 1.")
    }
    svalue(r2) <- character(0)
  } 
  
  r2 <- gcheckboxgroup(ans2, container = gp2, checked = FALSE, where = "beginning", handler = f2)
  
  
  #------------- Question 3 -----------#
  gp3 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp3.1 <- ggroup(container = gp3, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("3) ", container = gp3.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("(T or F) The arithmetic mean is the OLS estimator for the true mean of any distribution.", container = gp3.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans3 <- c("True",
            "False")
  
  f3 <- function(h,....){
    if(tail(svalue(r3),1) == ans3[1]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r3),1)== ans3[2]){
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
  qq <- glabel("An OLS estimator for \u03B8...", container = gp4.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans4 <- c("minimizes: \u2211\u2093(x\u1D62 - f\u1D62(\u03B8))\u00B2",
            "maximizes: \u2211\u2093(x\u1D62 - f\u1D62(\u03B8))\u00B2",
            "minimizes: \u220F\u2093 f(x\u1D62|\u03B8)",
            "maximizes: \u220F\u2093 f(x\u1D62|\u03B8)"
  )
  
  
  f4 <- function(h,....){
    if(tail(svalue(r4),1) == ans4[1]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r4),1)== ans4[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1) == ans4[3]){
      gmessage(msg="Incorrect",  icon = "error")
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
  qq <- glabel("A ML estimator for \u03B8...", container = gp5.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans5 <- c("minimizes: \u2211\u2093(x\u1D62 - f\u1D62(\u03B8))\u00B2",
            "maximizes: \u2211\u2093(x\u1D62 - f\u1D62(\u03B8))\u00B2",
            "minimizes: \u220F\u2093 f(x\u1D62|\u03B8)",
            "maximizes: \u220F\u2093 f(x\u1D62|\u03B8)")

  f5 <-  function(h,....){
    if(tail(svalue(r5),1) == ans5[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1) == ans5[3]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[4]){
      gmessage(msg="Correct")
    }
    svalue(r5) <- character(0)
  }
  
  r5 <- gcheckboxgroup(ans5, container = gp5, checked = FALSE, where = "beginning", handler = f5)
  
}


