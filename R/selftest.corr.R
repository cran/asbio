selftest.corr.tck1 <-function(){
    options(guiToolkit="tcltk")
    w <- gwindow(title = "Correlation")
    size(w) <- c(700, 450)
    g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
 
    
    #------------- Question 1 -----------#
    
    gp1 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
    gp1.1 <- ggroup(container = gp1, spacing = 2, pos = 0, horizontal = TRUE)
    q <- glabel("1) ", container = gp1.1, horizontal = TRUE)
    font(q) <- list(weight = "bold")
    qq <- glabel("The value of a correlation coefficient ranges between ...", container = gp1.1, anchor = c(-1,1))
   # addSpace(gp1, 0)
    font(qq) <- list(family = "cambria", size = 11)
    
    
    ans1 <- c("(a)  0 and 1.",
              "(b)  -1 and 1.",
              "(c)  0 and \u221E.",
              "(d)  -\u221E and \u221E.")
    
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
    
    r1 <- gcheckboxgroup(ans1, container = gp1, where = "beginning", handler = f1)
    
   
    
    
    #------------- Question 2 -----------#
    
    gp2 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
    gp2.1 <- ggroup(container = gp2, spacing = 2, pos = 0, horizontal = TRUE)
    q <- glabel("2) ", container = gp2.1, horizontal = TRUE)
    font(q) <- list(weight = "bold")
    qq <- glabel("Anscombe's quartet demonstrates...", container = gp2.1, anchor = c(-1,1))
   # addSpace(gp2, .1)
    font(qq) <- list(family = "cambria", size = 11)
    
    ans2 <- c("(a)  that variances tend to increase with mean values.",
              "(b)  four ways to reject H\u2080 in correlation analysis.",
              "(c)  that dramatically different patterns of correlation can produce the same correlation estimate.",
              "(d)  the beauty of four part musical harmony.")

    f2 = function(h,....){
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
            gmessage(msg="Incorrect.  Although four part harmonies can in fact be beautiful.", icon = "error")
        }
        svalue(r2) <- character(0)
    }
    
    r2 <- gcheckboxgroup(ans2, container = gp2, checked = FALSE, where = "beginning", handler = f2)
    
    
    
    #------------- Question 3 -----------#
    gp3 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
    gp3.1 <- ggroup(container = gp3, spacing = 2, pos = 0, horizontal = TRUE)
    q <- glabel("3) ", container = gp3.1, horizontal = TRUE)
    font(q) <- list(weight = "bold")
    qq <- glabel("If Cor(X,Y) = 0,...", container = gp3.1, anchor = c(-1,1))
  #  addSpace(gp3, .1)
    font(qq) <- list(family = "cambria", size = 11)
    
    
    ans3 <- c("(a)  then X and Y are independent.",
              "(b)  then X are Y dependent.",
              "(c)  then X and Y are independent only if X and Y have a biexponential distribution.",
              "(d)  then X and Y are independent only if X and Y have a bivariate normal distribution.")
    

    f3 = function(h,....){
        if(tail(svalue(r3),1) == ans3[1]){
            gmessage(msg="Incorrect",  icon = "error")
        }
        if(tail(svalue(r3),1)== ans3[2]){
            gmessage(msg="Incorrect",  icon = "error")
        }
        if(tail(svalue(r3),1)== ans3[3]){
            gmessage(msg="Correct",  icon = "error")
        }
        if(tail(svalue(r3),1)== ans3[4]){
            gmessage(msg="Correct")
        }
        svalue(r3) <- character(0)
    }
    
    r3 <- gcheckboxgroup(ans3, container = gp3, where = "beginning", handler = f3)
    
    
    #------------- Question 4 -----------#
    gp4 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
    gp4.1 <- ggroup(container = gp4, spacing = 2, pos = 0, horizontal = TRUE)
    q <- glabel("4) ", container = gp4.1, horizontal = TRUE)
    font(q) <- list(weight = "bold")
    qq <- glabel("If X and Y are independent, then...", container = gp4.1, anchor = c(-1,1))
  #  addSpace(gp4, .5)
    font(qq) <- list(family = "cambria", size = 11)
    
    
    ans4 <- c("(a)  Cor(X,Y) = 0.",
              "(b)  Cov(X,Y) = 0.",
              "(c)  f(x,y) = f(x)f(y).",
              "(d)  All of the above are true.",
              "(e)  It is impossible to determine Cor(X,Y), Cov(X,Y) or f(x)f(y) from the given information.")
    

    f4 = function(h,....){
        if(tail(svalue(r4),1) == ans4[1]){
            gmessage(msg="Partially correct",  icon = "error")
        }
        if(tail(svalue(r4),1)== ans4[2]){
            gmessage(msg="Partially correct",  icon = "error")
        }
        if(tail(svalue(r4),1)== ans4[3]){
            gmessage(msg="Partially correct",  icon = "error")
        }
        if(tail(svalue(r4),1)== ans4[4]){
            gmessage(msg="Correct")
        }
        if(tail(svalue(r4),1)== ans4[5]){
            gmessage(msg="Incorrect",  icon = "error")
        }
        svalue(r4) <- character(0)
    }
    
    r4 <- gcheckboxgroup(ans4, container = gp4, where = "beginning", handler = f4)
    
    
    
    #------------- Question 5 -----------#
    gp5 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
    gp5.1 <- ggroup(container = gp5, spacing = 2, pos = 0, horizontal = TRUE)
    q <- glabel("5) ", container = gp5.1, horizontal = TRUE)
    font(q) <- list(weight = "bold")
    qq <- glabel("Let |r\u2096| be the absolute value of Kendall's tau, and let |r\u209B| be the absolute value of Spearman's \nrank correlation coefficient.  Then, for correlation measures of the same dataset...", container = gp5.1, anchor = c(-1,1))
    #addSpace(gp5, .1)
    font(qq) <- list(family = "cambria", size = 11)
    
    ans5 <- c("(a)  |r\u2096| = |r\u209B|.",
              "(b)  |r\u2096| > |r\u209B|, except in the case of perfect monotonicity.",
              "(c)  |r\u2096| < |r\u209B|, except in the case of perfect monotonicity.",
              "(d)  None of the above.")
    
    
    
   f5 = function(h,....){
        if(tail(svalue(r5),1) == ans5[1]){
            gmessage(msg="Incorrect",  icon = "error")
        }
        if(tail(svalue(r5),1)== ans5[2]){
            gmessage(msg="Incorrect",  icon = "error")
        }
        if(tail(svalue(r5),1)== ans5[3]){
            gmessage(msg="Correct")
        }
        if(tail(svalue(r5),1)== ans5[4]){
            gmessage(msg="Incorrect",  icon = "error")
        }
        svalue(r5) <- character(0)
   }
   
   r5 <- gcheckboxgroup(ans5, container = gp5, where = "beginning", handler = f5)
   
} 


























