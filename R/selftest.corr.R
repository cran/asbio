selftest.corr.tck1 <-function(){
    options(guiToolkit="tcltk")
    w <- gwindow(title = "Correlation")
    size(w) <- c(700, 450)
    g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
    q1 <- gexpandgroup("Question 1", container=g, anchor=c(-1,1))
    q2 <- gexpandgroup("Question 2", container=g, anchor=c(-1,1))
    q3 <- gexpandgroup("Question 3", container=g, anchor=c(-1,1))
    q4 <- gexpandgroup("Question 4", container=g, anchor=c(-1,1))
    q5 <- gexpandgroup("Question 5", container=g, anchor=c(-1,1))
    
    #------------- Question 1 -----------#
    
    gp1 <- ggroup(container = q1, spacing = 2, pos = 0, horizontal = FALSE)
    glabel("The value of a correlation coefficient ranges between ...", container = gp1, anchor = c(-1,1))
    addSpace(gp1, .5, horizontal=FALSE)
    
    ans1 <- c("(a)  0 and 1.",
              "(b)  -1 and 1.",
              "(c)  0 and \u221E.",
              "(d)  -\u221E and \u221E.")
    
    r1 <- gcheckboxgroup(ans1, container = gp1, checked = FALSE, where = "beginning")
    
    addhandlerclicked(r1, handler = function(h,....){
        if(tail(svalue(r1),1) == ans1[1]){
            gmessage(message="Incorrect",  icon = "error")
        }
        if(tail(svalue(r1),1)== ans1[2]){
            gmessage(message="Correct")
        }
        if(tail(svalue(r1),1)== ans1[3]){
            gmessage(message="Incorrect", icon = "error")
        }
        if(tail(svalue(r1),1)== ans1[4]){
            gmessage(message="Incorrect", icon = "error")
        }
        svalue(r1) <- character(0)
    })
    
    
    #------------- Question 2 -----------#
    
    gp2 <- ggroup(container = q2, spacing = 2, pos = 0, horizontal = FALSE)
    glabel("Anscombe's quartet demonstrates...", container = gp2, anchor = c(-1,1))
    addSpace(gp2, .5, horizontal=FALSE)
    
    ans2 <- c("(a)  that variances tend to increase with mean values.",
              "(b)  four ways to reject H\u2080 in correlation analysis.",
              "(c)  that dramatically different patterns of correlation can produce the same correlation estimate.",
              "(d)  the beauty of four part musical harmony.")
    
    r2 <- gcheckboxgroup(ans2, container = gp2, checked = FALSE, where = "beginning")
    
    addhandlerclicked(r2, handler = function(h,....){
        if(tail(svalue(r2),1) == ans2[1]){
            gmessage(message="Incorrect",  icon = "error")
        }
        if(tail(svalue(r2),1)== ans2[2]){
            gmessage(message="Incorrect",  icon = "error")
        }
        if(tail(svalue(r2),1)== ans2[3]){
            gmessage(message="Correct")
        }
        if(tail(svalue(r2),1)== ans2[4]){
            gmessage(message="Incorrect.  Although four part harmonies can in fact be beautiful.", icon = "error")
        }
        svalue(r2) <- character(0)
    })
    
    
    #------------- Question 3 -----------#
    gp3 <- ggroup(container = q3, spacing = 2, pos = 0, horizontal = FALSE)
    glabel("If Cor(X,Y) = 0,...", container = gp3, anchor = c(-1,1))
    addSpace(gp3, .5, horizontal=FALSE)
    
    
    ans3 <- c("(a)  then X and Y are independent.",
              "(b)  then X are Y dependent.",
              "(c)  then X and Y are independent only if X and Y have a biexponential distribution.",
              "(d)  then X and Y are independent only if X and Y have a bivariate normal distribution.")
    
    r3 <- gcheckboxgroup(ans3, container = gp3, checked = FALSE, where = "beginning")
    
    
    addhandlerclicked(r3, handler = function(h,....){
        if(tail(svalue(r3),1) == ans3[1]){
            gmessage(message="Incorrect",  icon = "error")
        }
        if(tail(svalue(r3),1)== ans3[2]){
            gmessage(message="Incorrect",  icon = "error")
        }
        if(tail(svalue(r3),1)== ans3[3]){
            gmessage(message="Correct",  icon = "error")
        }
        if(tail(svalue(r3),1)== ans3[4]){
            gmessage(message="Correct")
        }
        svalue(r3) <- character(0)
    })
    
    
    #------------- Question 4 -----------#
    gp4 <- ggroup(container = q4, spacing = 2, pos = 0, horizontal = FALSE)
    glabel("If X and Y are independent, then...", container = gp4, anchor = c(-1,1))
    addSpace(gp4, .5, horizontal=FALSE)
    
    
    ans4 <- c("(a)  Cor(X,Y) = 0.",
              "(b)  Cov(X,Y) = 0.",
              "(c)  f(x,y) = f(x)f(y).",
              "(d)  All of the above are true.",
              "(e)  It is impossible to determine Cor(X,Y), Cov(X,Y) or f(x)f(y) from the given information.")
    
    r4 <- gcheckboxgroup(ans4, container = gp4, checked = FALSE, where = "beginning")
    
    
    addhandlerclicked(r4, handler = function(h,....){
        if(tail(svalue(r4),1) == ans4[1]){
            gmessage(message="Partially correct",  icon = "error")
        }
        if(tail(svalue(r4),1)== ans4[2]){
            gmessage(message="Partially correct",  icon = "error")
        }
        if(tail(svalue(r4),1)== ans4[3]){
            gmessage(message="Partially correct",  icon = "error")
        }
        if(tail(svalue(r4),1)== ans4[4]){
            gmessage(message="Correct")
        }
        if(tail(svalue(r4),1)== ans4[5]){
            gmessage(message="Incorrect",  icon = "error")
        }
        svalue(r4) <- character(0)
    })
    
    
    #------------- Question 5 -----------#
    gp5 <- ggroup(container = q5, spacing = 2, pos = 0, horizontal = FALSE)
    glabel("Let |r\u2096| be the absolute value of Kendall's tau, \nand let |r\u209B| be the absolute value of Spearman's rank correlation coefficient.  \nThen, for correlation measures of the same dataset...", container = gp5, anchor = c(-1,1))
    addSpace(gp5, .5, horizontal=FALSE)
    
    
    ans5 <- c("(a)  |r\u2096| = |r\u209B|.",
              "(b)  |r\u2096| > |r\u209B|, except in the case of perfect monotonicity.",
              "(c)  |r\u2096| < |r\u209B|, except in the case of perfect monotonicity.",
              "(d)  None of the above.")
    
    r5 <- gcheckboxgroup(ans5, container = gp5, checked = FALSE, where = "beginning")
    
    
    addhandlerclicked(r5, handler = function(h,....){
        if(tail(svalue(r5),1) == ans5[1]){
            gmessage(message="Incorrect",  icon = "error")
        }
        if(tail(svalue(r5),1)== ans5[2]){
            gmessage(message="Incorrect",  icon = "error")
        }
        if(tail(svalue(r5),1)== ans5[3]){
            gmessage(message="Correct")
        }
        if(tail(svalue(r5),1)== ans5[4]){
            gmessage(message="Incorrect",  icon = "error")
        }
        svalue(r5) <- character(0)
    })
} 


























