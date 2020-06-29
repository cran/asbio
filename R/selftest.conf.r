selftest.conf.tck1 <- function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "Confidence intervals")
  size(w) <- c(700, 400)
  
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
  # q1 <- gexpandgroup("Question 1", container=g, anchor=c(-1,1))
  # q2 <- gexpandgroup("Question 2", container=g, anchor=c(-1,1))
  # q3 <- gexpandgroup("Question 3", container=g, anchor=c(-1,1))
  # q4 <- gexpandgroup("Question 4", container=g, anchor=c(-1,1))
  # 
  # # visible(q1) <- TRUE
  # visible(q2) <- FALSE
  # visible(q3) <- FALSE
  # visible(q4) <- FALSE
 
  
  #------------- Question 1 -----------#
  
  f1 <- function(h,....){
    if(svalue(r1) == ans1[1]){
      gmessage(msg="Incorrect. The interval has been calculated.  The interval will either contain mu, or it will not, i.e. the probability that the interval contains mu is either 0 or 1.",  icon = "error", parent = gp1)
    }
    if(svalue(r1)== ans1[2]){
      gmessage(msg="Correct", parent = gp1)
    }
    if(svalue(r1)== ans1[3]){
      gmessage(msg="Incorrect. The confidence interval for mu is calculated using the sample mean, and as a result the sample mean will always be in the confidence interval interval for mu", icon = "error", parent = gp1)
    }
    if(svalue(r1)== ans1[4]){
      gmessage(msg="Incorrect. This answer is incorrect for several reasons.  For one thing the confidence interval for mu is calculated using the sample mean, and as a result the sample mean will always be in the confidence interval interval for mu", icon = "error", parent = gp1)
    }
    svalue(r1) <- character(0)
  }
  
  
  gp1 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp1.1 <- ggroup(container = gp1, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("1) ", container = gp1.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("A 95% confidence interval for \u03bc is calculated with the confidence limits (24, 28).  \nWhat is the correct interpretation of this result?", container = gp1.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  #addSpace(gp1, .5)
  
  ans1 <- c("(a)  There is a probability of 0.95 that \u03bc will be between 24 and 28.",
            "(b)  We have 95% confidence that \u03bc will be between 24 and 28.",
            "(c)  We have 95% confidence that the sample mean will be between 24 and 28.",
            "(d)  There is a probability of 0.95 that the sample mean will be between 24 and 28.")
  
  r1 <- gcheckboxgroup(ans1, container = gp1, where = "beginning", handler = f1)


  

  
  #------------- Question 2 -----------#
  gp2 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp2.1 <- ggroup(container = gp2, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("2) ", container = gp2.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("(T or F) If one hundred confidence intervals for \u03bc are calculated then, \non average, a proportion of 1 - \u03b1 of these will contain \u03bc.", container = gp2.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  #addSpace(gp2, .5)
  
  f2 <- function(h,....){
    if(tail(svalue(r2),1) == ans2[1]){
      gmessage(msg="Correct.  The definition given is correct, and is often used to help conceptualize confidence intervals.")
    }
    if(tail(svalue(r2),1)== ans2[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    
    svalue(r2) <- character(0)
  }
  
  ans2 <- c("True",
            "False")
  
  r2 <- gcheckboxgroup(ans2, container = gp2, checked = FALSE, where = "beginning", handler = f2)
  
  
  
  
  
  #------------- Question 3 -----------#
  gp3 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp3.1 <- ggroup(container = gp3, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("3) ", container = gp3.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  
  qq <- glabel("The standard error of the mean statistic is calculated using...", container = gp3.1, anchor = c(-1,1))
  #addSpace(gp3, .5)
  font(qq) <- list(family = "cambria", size = 11)
   ans3 <- c("(a)  S/\u221an",
            "(b)  S/n",
            "(c)  S\u00b2/n",
            "(d)  S\u00b2/\u221an")
  
 
  f3 <- function(h,....){
    if(tail(svalue(r3),1) == ans3[1]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r3),1)== ans3[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[3]){
      gmessage(msg="Incorrect.  This is an estimator for the sampling distribution variance", icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r3) <- character(0)
  }
  
  
   r3 <- gcheckboxgroup(ans3, container = gp3, where = "beginning", handler = f3)
  
  

  #------------- Question 4 -----------#
  
  gp4 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp4.1 <- ggroup(container = gp4, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("4) ", container = gp4.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("In general, a standard error is...", container = gp4.1, anchor = c(-1,1))
  #addSpace(gp4, .5)
  font(qq) <- list(family = "cambria", size = 11)
  
  ans4 <- c("(a) The variance of a sampling distribution.",
            "(b) The median of a sampling distribution.",
            "(c) The standard deviation of a sampling distribution.",
            "(d) The mean of a sampling distribution.")
  
  f4 <- function(h,....){
    if(tail(svalue(r4),1) == ans4[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[3]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r4),1)== ans4[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r4) <- character(0)
  }
  
    r4 <- gcheckboxgroup(ans4, container = gp4, checked = FALSE, where = "beginning", handler = f4)
  
}