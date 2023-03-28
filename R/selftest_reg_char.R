selftest.regchar.tck1 <-function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "Basic regression characteristics")
  size(w) <- c(700, 650)
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)

  #------------- Question 1 -----------#
 
  gp1 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp1.1 <- ggroup(container = gp1, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("1) ", container = gp1.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("Which of the following is a (are) linear model(s)?",
         container = gp1.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  
  ans1 <- c("(a)  Y\u1d62 = \u03b2\u2092 + \u03b2\u2081X\u2081\u1d62 + \u03b2\u2082X\u2082\u1d62 + \u03b5\u1d62 ",
            "(b)  Y\u1d62 = \u03b2\u2092 + \u03b2\u2081X\u2081\u1d62 + \u03b2\u2082X\u00b2\u2081\u1d62 + \u03b5\u1d62 ",
            "(c)  Y\u1d62 = \u03b2\u2092X\u1d62/(\u03b2\u2081 + X\u1d62) + \u03b5\u1d62",
            "(d)  All of the above.",
            "(e)  (a) and (b) above.")

  f1 <- function(h,....){ 
    if(tail(svalue(r1),1) == ans1[1]){
      gmessage(msg="Partially correct",  icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[2]){
      gmessage(msg="Partially correct",  icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[3]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[4]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[5]){
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
  qq <- glabel("In simple linear regression, \u03b2\u2092 represents...",
               container = gp2.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  
  ans2 <- c("(a)  The sample Y-intercept, i.e., the estimated mean value of Y when X = 0.",
            "(b)  The true (population) Y-intercept, i.e., the true mean value of Y when X = 0.",
            "(c)  The sample slope, i.e., the estimated change in Y given a one unit increase in X.",
            "(d)  The true (population) slope, i.e., the true change in Y given a one unit increase in X.")
  
  f2 <- function(h,....){ 
    if(tail(svalue(r2),1) == ans2[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[2]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r2),1)== ans2[3]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[4]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    
    svalue(r2) <- character(0)
  }
  
  
  r2 <- gcheckboxgroup(ans2, container = gp2, checked = FALSE, where = "beginning", handler = f2)
  
  
  #------------- Question 3 -----------#
  
  gp3 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp3.1 <- ggroup(container = gp3, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("3) ", container = gp3.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("In simple linear regression, \u03b2\u2081 represents...",
               container = gp3.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  
  ans3 <- c("(a)  The sample Y-intercept, i.e., the estimated mean value of Y when X = 0.",
            "(b)  The true (population) Y-intercept, i.e., the true mean value of Y when X = 0.",
            "(c)  The sample slope, i.e., the estimated change in Y given a one unit increase in X.",
            "(d)  The true (population) slope, i.e., the true change in Y given a one unit increase in X.")
  
  f3 <- function(h,....){ 
    if(tail(svalue(r3),1) == ans3[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[3]){
      gmessage(msg="Incorrect",  icon = "error")
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
  qq <- glabel("In a multiple regression with two predictors, \u03b2\u2081 represents...",
               container = gp4.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  
  ans4 <- c("(a)  The true change in X\u2081 given a one unit increase in Y.",
            "(b)  The true change in Y, given a one unit increase in X\u2081, holding X\u2082 constant.",
            "(c)  The true change in Y, given a one unit increase in X\u2081.",
            "(d)  The true change in Y, given a one unit increase in X\u2082, holding X\u2081 constant.")
  
  f4 <- function(h,....){ 
    if(tail(svalue(r4),1) == ans4[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[2]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r4),1)== ans4[3]){
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
  qq <- glabel("For a regression model, I calculate a 95% confidence interval for E(Y\u2095).\n Which of the following is a correct interpretation?",
               container = gp5.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  
  ans5 <- c("(a)  There is a probability of 0.95 that the true mean of Y, given the hth value of the predictors, is in the interval.",
            "(b)  I am 95% confident that a future value of Y, given the hth value of the predictors, is in the interval.",
            "(c)  I am 95% confident that the true slope is in the interval.",
            "(d)  I am 95% confident that the true mean value of Y, given the hth value of the predictors, is in the interval.")
  
  f5 <- function(h,....){ 
    if(tail(svalue(r5),1) == ans5[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[3]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[4]){
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
  qq <- glabel("For a regression model, I calculate a 95% prediction interval for Y\u2095.\n Which of the following is a correct interpretation?",
               container = gp6.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  
  ans6 <- c("(a)  There is a probability of 0.95 that the true mean of Y, given the hth value of the predictors, is in the interval.",
            "(b)  I am 95% confident that a future value of Y, given the hth value of the predictors, is in the interval.",
            "(c)  I am 95% confident that the true slope is in the interval.",
            "(d)  I am 95% confident that the true mean value of Y, given the hth value of the predictors, is in the interval.")
  
  f6 <- function(h,....){ 
    if(tail(svalue(r6),1) == ans6[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[2]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r6),1)== ans6[3]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[4]){
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
  qq <- glabel("The sum of squared error (SSE) of a regression model is...",
               container = gp7.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  
  ans7 <- c("(a)  The sum of squared differences of the fitted Y and the mean Y, i.e., \u03A3(\u0176 - \u0232)\u00B2.",
            "(b)  The sum of squared differences of the observed Y and fitted Y, i.e., \u03A3(Y - \u0176)\u00B2.",
            "(c)  The sum of squared differences of the observed Y and the mean Y, i.e., \u03A3(Y - \u0232)\u00B2.",
            "(d)  The sum of squared differences of the mean Y and the observed Y, i.e., \u03A3(\u0232 - Y)\u00B2.")
  
  f7 <- function(h,....){ 
    if(tail(svalue(r7),1) == ans7[1]){
      gmessage(msg="Incorrect,  this is the regression sum of squares, SSR.",  icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[2]){
      gmessage(msg="Correct, this denotes the sum of the squared residuals.")
    }
    if(tail(svalue(r7),1)== ans7[3]){
      gmessage(msg="Incorrect,  this is the total sum of squares, SSTO.",  icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[4]){
      gmessage(msg="Incorrect, this is equilent to answer c, it is the SSTO.",  icon = "error")
    }
    
    svalue(r7) <- character(0)
  }
  
  
  r7 <- gcheckboxgroup(ans7, container = gp7, checked = FALSE, where = "beginning", handler = f7)  
  
  
  
  #------------- Question 8 -----------#
  
  gp8 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp8.1 <- ggroup(container = gp8, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("8) ", container = gp8.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("Let n be the number of observations, and p be the number of estimated parameters in\n a regression model. The equation for MSE is...",
               container = gp8.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  
  ans8 <- c("(a)  SSE/(n - 1).",
            "(b)  SSE/(p - 1).",
            "(c)  SSE/(n - p).",
            "(d)  SSE/(p - n).")
  
  f8 <- function(h,....){ 
    if(tail(svalue(r8),1) == ans8[1]){
      gmessage(msg="Incorrect.",  icon = "error")
    }
    if(tail(svalue(r8),1)== ans8[2]){
      gmessage(msg="Incorrect.",  icon = "error")
    }
    if(tail(svalue(r8),1)== ans8[3]){
      gmessage(msg="Correct,  the degrees of freedom for SSE is n - p.")
    }
    if(tail(svalue(r8),1)== ans8[4]){
      gmessage(msg="Incorrect.",  icon = "error")
    }
    
    svalue(r8) <- character(0)
  }
  
  
  r8 <- gcheckboxgroup(ans8, container = gp8, checked = FALSE, where = "beginning", handler = f8)  
  
  
 
  #------------- Question 9 -----------#
  
  gp9 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp9.1 <- ggroup(container = gp9, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("9) ", container = gp9.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("MSE is an estimator for...",
               container = gp9.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  
  ans9 <- c("(a)  The true mean of X given Y",
            "(b)  E(Y), the true mean of Y given X.",
            "(c)  The true variance of X.",
            "(d)  The true variance of the error term in the model.")
  
  f9 <- function(h,....){ 
    if(tail(svalue(r9),1) == ans9[1]){
      gmessage(msg="Incorrect.",  icon = "error")
    }
    if(tail(svalue(r9),1)== ans9[2]){
      gmessage(msg="Incorrect.",  icon = "error")
    }
    if(tail(svalue(r9),1)== ans9[3]){
      gmessage(msg="Incorrect.",  icon = "error")
    }
    if(tail(svalue(r9),1)== ans9[4]){
      gmessage(msg="Correct.")
    }
    
    svalue(r9) <- character(0)
  }
  
  
  r9 <- gcheckboxgroup(ans9, container = gp9, checked = FALSE, where = "beginning", handler = f9)  


  
  #------------- Question 10 -----------#
  
  gp10 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp10.1 <- ggroup(container = gp10, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("10) ", container = gp10.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("Consider the matrix expression of a general linear model:",
               container = gp10.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  qq1 <- glabel("Y = \u03b2X + \u03b5.",
               container = gp10.1, anchor = c(-1,1))
  font(qq1) <- list(family = "cambria", size = 11, weight = "bold")
  qq2 <- glabel("\u03b2",
                container = gp10.1, anchor = c(-1,1))
  font(qq2) <- list(family = "cambria", size = 11, weight = "bold")
  qq3 <- glabel("has dimension...",
                container = gp10.1, anchor = c(-1,1))
  font(qq3) <- list(family = "cambria", size = 11)
  
  ans10 <- c("(a)  (n x p).",
            "(b)  (n x 1).",
            "(c)  (p x 1).",
            "(d)  (p x n).")
  
  f10 <- function(h,....){ 
    if(tail(svalue(r10),1) == ans10[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r10),1)== ans10[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r10),1)== ans10[3]){
      gmessage(msg="Correct")
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
  qq <- glabel("Consider the matrix expression of a general linear model:",
               container = gp11.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  qq1 <- glabel("Y = \u03b2X + \u03b5.",
                container = gp11.1, anchor = c(-1,1))
  font(qq1) <- list(family = "cambria", size = 11, weight = "bold")
  qq2 <- glabel("X",
                container = gp11.1, anchor = c(-1,1))
  font(qq2) <- list(family = "cambria", size = 11, weight = "bold")
  qq3 <- glabel("has dimension...",
                container = gp11.1, anchor = c(-1,1))
  font(qq3) <- list(family = "cambria", size = 11)
  
  ans11 <- c("(a)  (n x p).",
             "(b)  (n x 1).",
             "(c)  (p x 1).",
             "(d)  (p x n).")
  
  f11 <- function(h,....){ 
    if(tail(svalue(r11),1) == ans11[1]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r11),1)== ans11[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r11),1)== ans11[3]){
      gmessage(msg="Inorrect",  icon = "error")
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
  qq <- glabel("The coefficient of determinination, R\u00B2...",
               container = gp12.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  
  ans12 <- c("(a)  will be in the range [0, 1].",
             "(b)  is calculated as 1 - SSE/SSTO.",
             "(c)  represents the proportion of variability in Y explained by the model.",
             "(d)  is equivalent to r\u00B2 for a simple linear regression model.",
             "(e)  (a) and (c) above.",
             "(f)  All of the above.")
  
  f12 <- function(h,....){ 
    if(tail(svalue(r12),1) == ans12[1]){
      gmessage(msg="Partially correct",  icon = "error")
    }
    if(tail(svalue(r12),1)== ans12[2]){
      gmessage(msg="Partially correct",  icon = "error")
    }
    if(tail(svalue(r12),1)== ans12[3]){
      gmessage(msg="Partially correct",  icon = "error")
    }
    if(tail(svalue(r12),1)== ans12[4]){
      gmessage(msg="Partially correct",  icon = "error")
    }
    if(tail(svalue(r12),1)== ans12[5]){
      gmessage(msg="Partially correct",  icon = "error")
    }
    if(tail(svalue(r12),1)== ans12[6]){
      gmessage(msg="Correct")
    }
    svalue(r12) <- character(0)
  }
  
  
  r12 <- gcheckboxgroup(ans12, container = gp12, checked = FALSE, where = "beginning", handler = f12)  

  
  #------------- Question 13 -----------#
  
  gp13 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp13.1 <- ggroup(container = gp13, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("13) ", container = gp13.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("The adjusted R\u00B2...",
               container = gp13.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  
  ans13 <- c("(a)  will be identical to R\u00B2 in most situations.",
             "(b)  will occasionally be larger than R\u00B2.",
             "(c)  adjusts for the number of parameters in the model.",
             "(d)  is equivalent to r\u00B2 for a simple linear regression model.",
             "(e)  (a) and (c) above.",
             "(f)  All of the above.")
  
  f13 <- function(h,....){ 
    if(tail(svalue(r13),1) == ans13[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r13),1)== ans13[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r13),1)== ans13[3]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r13),1)== ans13[4]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r13),1)== ans13[5]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r13),1)== ans13[6]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    svalue(r13) <- character(0)
  }
  
  
  r13 <- gcheckboxgroup(ans13, container = gp13, checked = FALSE, where = "beginning", handler = f13)  
  

  #------------- Question 14 -----------#
  
  gp14 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp14.1 <- ggroup(container = gp14, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("14) ", container = gp14.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("The partial R\u00B2...",
               container = gp14.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  
  ans14 <- c("(a)  measures the reduction in SSE after a variable of interest is added to model.",
             "(b)  will occasionally be larger than R\u00B2.",
             "(c)  requires the specification of a nested model (that lacks a variable of interest) and a reference (full) model.",
             "(d)  is equivalent to r\u00B2 for a simple linear regression model.",
             "(e)  (a) and (c) above.",
             "(f)  All of the above.")
  
  f14 <- function(h,....){ 
    if(tail(svalue(r14),1) == ans14[1]){
      gmessage(msg="Partially correct",  icon = "error")
    }
    if(tail(svalue(r14),1)== ans14[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r14),1)== ans14[3]){
      gmessage(msg="Partially correct",  icon = "error")
    }
    if(tail(svalue(r14),1)== ans14[4]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r14),1)== ans14[5]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r14),1)== ans14[6]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    svalue(r14) <- character(0)
  }
  
  
  r14 <- gcheckboxgroup(ans14, container = gp14, checked = FALSE, where = "beginning", handler = f14)  
  

  
  
  #------------- Question 15 -----------#
  
  gp15 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp15.1 <- ggroup(container = gp15, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("15) ", container = gp15.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("An ANOVA approach for assessing the affect of individual predictors in multiple regression\n is problematic because...",
               container = gp15.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  
  ans15 <- c("(a)  Sums of squares and p-values will vary depending on the order predictors are specified in the linear model.",
             "(b)  Linear model algorithms typically use type I sums of squares which will be untrustworthy for assessing\n the affect of individual predictors.",
             "(c)  Type II sums of squares, which will provide consistent results, require the specification of a nested model\n (that lacks a variable of interest) and a reference (full) model.",
             "(d)  All of the above.")
  
  f15 <- function(h,....){ 
    if(tail(svalue(r15),1) == ans15[1]){
      gmessage(msg="Partially correct",  icon = "error")
    }
    if(tail(svalue(r15),1)== ans15[2]){
      gmessage(msg="Partially correct",  icon = "error")
    }
    if(tail(svalue(r15),1)== ans15[3]){
      gmessage(msg="Partially correct",  icon = "error")
    }
    if(tail(svalue(r15),1)== ans15[4]){
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
  qq <- glabel("In multiple regression we can assess the null hypothesis: H\u2080: \u03B2\u2081 = \u03B2\u2082 = , ... , = \u03B2\u209A\u02CD\u2081.  \nWhat is the null distribution for this test?",
               container = gp16.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  
  ans16 <- c("(a)  N(0, 1).",
             "(b)  t(n - p).",
             "(c)  t(p - n).",
             "(d)  F(p-1, n-p).",
             "(e)  F(n-p, p-1).")
  
  f16 <- function(h,....){ 
    if(tail(svalue(r16),1) == ans16[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r16),1)== ans16[2]){
      gmessage(msg="Incorrect.  This is the null distribution for considering the effect of individual predictors.",  icon = "error")
    }
    if(tail(svalue(r16),1)== ans16[3]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r16),1)== ans16[4]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r16),1)== ans16[5]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    svalue(r16) <- character(0)
  }
  
  
  r16 <- gcheckboxgroup(ans16, container = gp16, checked = FALSE, where = "beginning", handler = f16)  
  

  
  #------------- Question 17 -----------#
  
  gp17 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp17.1 <- ggroup(container = gp17, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("17) ", container = gp17.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("Why are predicted values a concern in multiple regression?",
               container = gp17.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  
  ans17 <- c("(a)  It is difficult to determine if new X outcomes from multiple predictors constitute extrapolated values.",
             "(b)  It is difficult to predict Y from multiple X variables.",
             "(c)  It is difficult to predict multiple Ys from a single X variable.",
             "(d)  The null distribution will not exist.")
  
  f17 <- function(h,....){ 
    if(tail(svalue(r17),1) == ans17[1]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r17),1)== ans17[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r17),1)== ans17[3]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r17),1)== ans17[4]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    svalue(r17) <- character(0)
  }
  
  
  r17 <- gcheckboxgroup(ans17, container = gp17, checked = FALSE, where = "beginning", handler = f17)  
  
  
  
  
  
  
  
  
  
   
}  
  
  
  
  
  
  
  
   

















