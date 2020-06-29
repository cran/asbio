selftest.regapproaches.tck1 <-function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "Regression approaches")
  size(w) <- c(700, 450)
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
 
  
  #------------- Question 1 -----------#
  
  gp1 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp1.1 <- ggroup(container = gp1, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("1) ", container = gp1.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <-glabel("We use model II regression...", container = gp1.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  # addSpace(gp1, .5, horizontal=FALSE)

  ans1 <- c("(a) to address outliers in linear regression.",
            "(b) to address curvilinear associations within the context of a linear model.",
            "(c) to address heteroscedasticity in a general linear model.",
            "(d) to address cases in which levels in X are not fixed, or are measured with error.",
            "(e) to address non-quantitative, discrete, and/or strictly bounded response variables."
            )
  f1 <- function(h,....){
    if(tail(svalue(r1),1) == ans1[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[2]){
      gmessage(msg="Incorrect", icon = "error")
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
  qq <- glabel("We use weighted least squares...", container = gp2.1, anchor = c(-1,1))
  # addSpace(gp2, .5, horizontal=FALSE)
  font(qq) <- list(family = "cambria", size = 11)
  
  
  ans2 <- c("(a) to address outliers in linear regression.",
            "(b) to address curvilinear associations within the context of a linear model.",
            "(c) to address heteroscedasticity in a general linear model.",
            "(d) to address cases in which levels in X are not fixed, or are measured with error.",
            "(e) to address non-quantitative, discrete, and/or strictly bounded response variables."
  )
  
  f2 <- function(h,....){
    if(tail(svalue(r2),1) == ans2[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[3]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r2),1)== ans2[4]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[5]){
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
  qq <- glabel("We use polynomial regression...", container = gp3.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  # addSpace(gp3, .5, horizontal=FALSE)
  ans3 <- c("(a) to address outliers in linear regression.",
            "(b) to address curvilinear associations within the context of a linear model.",
            "(c) to address heteroscedasticity in a general linear model.",
            "(d) to address cases in which levels in X are not fixed, or are measured with error.",
            "(e) to address non-quantitative, discrete, and/or strictly bounded response variables."
  )
 
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
  qq <- glabel("We can use the framework of GLMs...", container = gp4.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  # addSpace(gp4, .5, horizontal=FALSE)
  ans4 <- c("(a) to address outliers in linear regression.",
            "(b) to address curvilinear associations within the context of a linear model.",
            "(c) to address heteroscedasticity in a general linear model.",
            "(d) to address cases in which levels in X are not fixed, or are measured with error.",
            "(e) to address non-quantitative, discrete, and/or strictly bounded response variables."
  )
  
  f4 <- function(h,....){
    if(tail(svalue(r4),1) == ans4[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[3]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[4]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[5]){
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
  qq <- glabel("We use robust regression approaches, i.e., M-estimation, S-estimation, etc.",  
               container = gp5.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  
  # addSpace(gp5, .5, horizontal=FALSE)
  ans5 <- c("(a) to address outliers in linear regression.",
            "(b) to address curvilinear associations within the context of a linear model.",
            "(c) to address heteroscedasticity in a general linear model.",
            "(d) to address cases in which levels in X are not fixed, or are measured with error.",
            "(e) to address non-quantitative, discrete, and/or strictly bounded response variables."
  )
 
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
    if(tail(svalue(r5),1)== ans5[5]){
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
  qq <-glabel("We would use a generalized additive model (GAM)...",
         container = gp6.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  # addSpace(gp6, .5, horizontal=FALSE)
  ans6 <- c("(a)  to fit data based on local, not global, models ",
            "(b)  to fit a model using smoother algorithms without a priori assumptions of model linearity or nonlinearity",
            "(c)  to incorporate appropriate, potentially non-normal, error structures.",
            "(d)  All of the above.",
            "(e)  (a) and (b) above.")
  
  f6 <- function(h,....){
    if(tail(svalue(r6),1) == ans6[1]){
      gmessage(msg="Partially correct",  icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[2]){
      gmessage(msg="Partially correct",  icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[3]){
      gmessage(msg="Partially correct",  icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[4]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r6),1)== ans6[5]){
      gmessage(msg="Partially correct. The answer (c) is also true.",  icon = "error")
    }
    svalue(r6) <- character(0)
  }
  
   r6 <- gcheckboxgroup(ans6, container = gp6, checked = FALSE, where = "beginning", handler = f6)
  
  
   
   #------------- Question 7 -----------#
   
  
  gp7 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp7.1 <- ggroup(container = gp7, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("7) ", container = gp7.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("We of the following is a (are) nonlinear models(s), appropriate for fitting with R function nls?",
         container = gp7.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  # addSpace(gp7, .5, horizontal=FALSE)
  ans7 <- c("(a)  Y\u1d62 = \u03b2\u2092 + \u03b2\u2081X\u2081\u1d62 + \u03b2\u2082X\u2082\u1d62 + \u03b5\u1d62 ",
            "(b)  Y\u1d62 = \u03b2\u2092 + \u03b2\u2081X\u2081\u1d62 + \u03b2\u2082X\u00b2\u2081\u1d62 + \u03b5\u1d62 ",
            "(c)  Y\u1d62 = \u03b2\u2092X\u1d62/(\u03b2\u2081 + X\u1d62) + \u03b5\u1d62",
            "(d)  All of the above.",
            "(e)  (b) and (c) above.")
  
  f7 <- function(h,....){
    if(tail(svalue(r7),1) == ans7[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[3]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r7),1)== ans7[4]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[5]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    svalue(r7) <- character(0)
  }
  
  r7 <- gcheckboxgroup(ans7, container = gp7, checked = FALSE, where = "beginning", handler = f7)
  
  

}
  
  
  
