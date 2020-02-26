selftest.bayes4.tck <- function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "Bayesian applications in Ch 4")
  size(w) <- c(700, 600)
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
  q1 <- gexpandgroup("Question 1", container=g, anchor=c(-1,1))
  q2 <- gexpandgroup("Question 2", container=g, anchor=c(-1,1))
  q3 <- gexpandgroup("Question 3", container=g, anchor=c(-1,1))
  q4 <- gexpandgroup("Question 4", container=g, anchor=c(-1,1))
  q5 <- gexpandgroup("Question 5", container=g, anchor=c(-1,1))
  
  visible(q2) <- FALSE
  
  #------------- Question 1 -----------#
  
  gp1 <- ggroup(container = q1, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("The unnormalized posterior distribution is expressed as...", container = gp1, anchor = c(-1,1))
  addSpace(gp1, .5, horizontal=FALSE)
  
  ans1 <- c("(a)  P(\u03B8|data) = P(data|\u03B8)P(\u03B8)/P(data).",
            "(b)  P(\u03B8|data) \u221D P(\u03B8|data)P(\u03B8)/P(data).",
            "(c)  f(\u03B8|data) =  f(data|\u03B8)f(\u03B8).",
            "(d)  f(\u03B8|data) \u221D f(data|\u03B8)f(\u03B8).")
  
  r1 <- gcheckboxgroup(ans1, container = gp1, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r1, handler = function(h,....){
    if(tail(svalue(r1),1) == ans1[1]){
      gmessage(message="Incorrect.  This is the normalized posterior for discrete or categorical outcomes.",  icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[3]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[4]){
      gmessage(message="Correct")
    }
    svalue(r1) <- character(0)
  })
  
  
  #------------- Question 2 -----------#
  gp2 <- ggroup(container = q2, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("Under conjugacy ...", container = gp2, anchor = c(-1,1))
  addSpace(gp2, .5, horizontal=FALSE)
  
  
  ans2 <- c("(a)  the posterior and prior distributions will belong to the same distributional family, 
            e.g., normal, beta, etc.",
            "(b)  the posterior and likelihood distributions will belong to the same distributional family, 
            e.g., normal, beta, etc.",
            "(c)  the posterior, likelihood and prior distributions will all belong to the same distributional family, 
            e.g., naormal, beta, etc.",
            "(d)  the likelihood and prior distributions will belong to the same distributional family,
            e.g., normal, beta, etc..")

  r2 <- gcheckboxgroup(ans2, container = gp2, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r2, handler = function(h,....){
    if(tail(svalue(r2),1) == ans2[1]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r2),1)== ans2[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[3]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[4]){
      gmessage(message="Incorrect",  icon = "error")
    }
      svalue(r2) <- character(0)
  })
  
  
  #------------- Question 3 -----------#
  gp3 <- ggroup(container = q3, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("A beta prior and binomial likelihood will produce a ...", container = gp3, anchor = c(-1,1))
  addSpace(gp3, .5, horizontal=FALSE)
  
  
  ans3 <- c("(a)  normal posterior.",
            "(b)  beta posterior.",
            "(c)  binomial posterior.",
            "(d)  negative binomial posterior.")

  r3 <- gcheckboxgroup(ans3, container = gp3, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r3, handler = function(h,....){
    if(tail(svalue(r3),1) == ans3[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[2]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r3),1)== ans3[3]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[4]){
      gmessage(message="Incorrect",  icon = "error")
    }
    svalue(r3) <- character(0)
  })
 
  

#------------- Question 4 -----------#
gp4 <- ggroup(container = q4, spacing = 2, pos = 0, horizontal = FALSE)
glabel("The posterior distribution will be ________ affected by the priors as n increases.",  container = gp4, anchor = c(-1,1))
addSpace(gp4, .5, horizontal=FALSE)


ans4 <- c("(a)  more",
          "(b)  less",
          "(c)  variably",
          "(d)  None of the above.  The posterior will be unchanged as sample size increases.")

r4 <- gcheckboxgroup(ans4, container = gp4, checked = FALSE, where = "beginning")


addhandlerclicked(r4, handler = function(h,....){
  if(tail(svalue(r4),1) == ans4[1]){
    gmessage(message="Incorrect",  icon = "error")
  }
  if(tail(svalue(r4),1)== ans4[2]){
    gmessage(message="Correct")
  }
  if(tail(svalue(r4),1)== ans4[3]){
    gmessage(message="Incorrect",  icon = "error")
  }
  if(tail(svalue(r4),1)== ans4[4]){
    gmessage(message="Incorrect",  icon = "error")
  }
  svalue(r4) <- character(0)
})


#------------- Question 5 -----------#
gp5 <- ggroup(container = q5, spacing = 2, pos = 0, horizontal = FALSE)
glabel("A gamma prior and Poisson likelihood will produce a ...", container = gp5, anchor = c(-1,1))
addSpace(gp5, .5, horizontal=FALSE)


ans5 <- c("(a)  normal posterior.",
          "(b)  Poisson posterior.",
          "(c)  gamma posterior.",
          "(d)  negative binomial posterior.")

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


