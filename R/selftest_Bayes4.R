selftest.bayes4.tck <- function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "Bayesian applications in Ch 4")
  size(w) <- c(700, 600)
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
  

  #------------- Question 1 -----------#
  
  gp1 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp1.1 <- ggroup(container = gp1, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("1) ", container = gp1.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("The unnormalized posterior distribution is expressed as...", container = gp1.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans1 <- c("(a)  P(\u03B8|data) = P(data|\u03B8)P(\u03B8)/P(data).",
            "(b)  P(\u03B8|data) \u221D P(\u03B8|data)P(\u03B8)/P(data).",
            "(c)  f(\u03B8|data) =  f(data|\u03B8)f(\u03B8).",
            "(d)  f(\u03B8|data) \u221D f(data|\u03B8)f(\u03B8).")
  
  f1 <- function(h,....){
    if(tail(svalue(r1),1) == ans1[1]){
      gmessage(msg="Incorrect.  This is the normalized posterior for discrete or categorical outcomes.",  icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[3]){
      gmessage(msg="Incorrect",  icon = "error")
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
  qq <- glabel("Under conjugacy ...", container = gp2.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans2 <- c("(a)  the posterior and prior distributions will belong to the same distributional family, 
            e.g., normal, beta, etc.",
            "(b)  the posterior and likelihood distributions will belong to the same distributional family, 
            e.g., normal, beta, etc.",
            "(c)  the posterior, likelihood and prior distributions will all belong to the same distributional family, 
            e.g., normal, beta, etc.",
            "(d)  the likelihood and prior distributions will belong to the same distributional family,
            e.g., normal, beta, etc..")

  f2 <- function(h,....){
    if(tail(svalue(r2),1) == ans2[1]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r2),1)== ans2[2]){
      gmessage(msg="Incorrect",  icon = "error")
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
  qq <- glabel("A beta prior and binomial likelihood will produce a ...", container = gp3.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans3 <- c("(a)  normal posterior.",
            "(b)  beta posterior.",
            "(c)  binomial posterior.",
            "(d)  negative binomial posterior.")

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
qq <- glabel("The posterior distribution will be ________ affected by the priors as n increases.",  container = gp4.1, anchor = c(-1,1))
font(qq) <- list(family = "cambria", size = 11)

ans4 <- c("(a)  more",
          "(b)  less",
          "(c)  variably",
          "(d)  None of the above.  The posterior will be unchanged as sample size increases.")

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
qq <- glabel("A gamma prior and Poisson likelihood will produce a ...", container = gp5.1, anchor = c(-1,1))
font(qq) <- list(family = "cambria", size = 11)

ans5 <- c("(a)  normal posterior.",
          "(b)  Poisson posterior.",
          "(c)  gamma posterior.",
          "(d)  negative binomial posterior.")

f5 <- function(h,....){
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

r5 <- gcheckboxgroup(ans5, container = gp5, checked = FALSE, where = "beginning", handler = f5)

} 


