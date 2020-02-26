selftest.bayes5.tck <- function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "Bayesian applications in Ch 5")
  size(w) <- c(700, 260)
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
  q1 <- gexpandgroup("Question 1", container=g, anchor=c(-1,1))
  q2 <- gexpandgroup("Question 2", container=g, anchor=c(-1,1))
  q3 <- gexpandgroup("Question 3", container=g, anchor=c(-1,1))
  # q4 <- gexpandgroup("Question 4", container=g, anchor=c(-1,1))
  
  
  visible(q2) <- FALSE
  
  #------------- Question 1 -----------#
  
  gp1 <- ggroup(container = q1, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("A credible interval is...", container = gp1, anchor = c(-1,1))
  addSpace(gp1, .5, horizontal=FALSE)
  
  ans1 <- c("(a)  with a large number of repeated samples, 95% of such calculated intervals would include the \n true value of the parameter.",
            "(b)  the sampling distribution of an estimator.",
            "(c)  an interval in the domain of a posterior probability distribution.",
            "(d)  All of the above.")
  
  r1 <- gcheckboxgroup(ans1, container = gp1, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r1, handler = function(h,....){
    if(tail(svalue(r1),1) == ans1[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[3]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r1),1)== ans1[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r1) <- character(0)
  })
  
  
  #------------- Question 2 -----------#
  gp2 <- ggroup(container = q2, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("We use Markov chains in Bayesian statistics...", container = gp2, anchor = c(-1,1))
  addSpace(gp2, .5, horizontal=FALSE)
  
  
  ans2 <- c("(a)  to create likelihood functions when priors are unknown.",
            "(b)  to sample from the likelihood dependent on data subsets.",
            "(c)  to describe the posterior distribution in cases when it is indescribable otherwise.",
            "(d)  All of the above.")
  
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
      gmessage(message="Incorrect",  icon = "error")
    }
    svalue(r2) <- character(0)
  })
  
  
  #------------- Question 3 -----------#
  gp3 <- ggroup(container = q3, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("In a Markov chain...", container = gp3, anchor = c(-1,1))
  addSpace(gp3, .5, horizontal=FALSE)
  
  
  ans3 <- c("(a)  an outcome at step t +1 is only dependent on the outcome at step t.",
            "(b)  an outcome at step t +1 is only dependent on the outcome at step t - 1.",
            "(c)  an outcome at step t - 1 is dependent on the outcomes at the previous t - 2 steps.",
            "(d)  an outcome at step t is dependent on the outcomes at the previous t - 1 steps.")
  
  r3 <- gcheckboxgroup(ans3, container = gp3, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r3, handler = function(h,....){
    if(tail(svalue(r3),1) == ans3[1]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r3),1)== ans3[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[3]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[4]){
      gmessage(message="Incorrect",  icon = "error")
    }
    svalue(r3) <- character(0)
  })
} 