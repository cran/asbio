selftest.jack.tck <- function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "Jackknifing and Bootstrapping")
  size(w) <- c(700, 400)
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
  q1 <- gexpandgroup("Question 1", container=g, anchor=c(-1,1))
  q2 <- gexpandgroup("Question 2", container=g, anchor=c(-1,1))
  q3 <- gexpandgroup("Question 3", container=g, anchor=c(-1,1))
  q4 <- gexpandgroup("Question 4", container=g, anchor=c(-1,1))
  
  
  visible(q2) <- FALSE
  
  #------------- Question 1 -----------#
  
  gp1 <- ggroup(container = q1, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("We often use jackknifing and bootstrapping in cases when...", container = gp1, anchor = c(-1,1))
  addSpace(gp1, .5, horizontal=FALSE)
  
  ans1 <- c("(a)  the sample dataset is small.",
            "(b)  the sampling distribution of an estimator is unknown.",
            "(c)  the sample data contain errors.",
            "(d)  the sample dataset is extremely large.")
  
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
      gmessage(message="Incorrec", icon = "error")
    }
    svalue(r1) <- character(0)
  })
  
  
  #------------- Question 2 -----------#
  gp2 <- ggroup(container = q2, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("With bootstrapping...", container = gp2, anchor = c(-1,1))
  addSpace(gp2, .5, horizontal=FALSE)
  
  
  ans2 <- c("(a)  we sample with replacement from an existing dataset.",
            "(b)  we sample without replacement from an existing dataset.",
            "(c)  we create pseudovalues based on data subsets, i.e., the dataset with the 1st \nobservation removed, the dataset with the 2nd observation removed etc.",
            "(d)  we create pseudovalues based on data subsets, i.e., the 1st \nobservation, the 2nd observation,  etc.",
            "(e)  we create a Bayesian posterior distribution.")
  
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
    if(tail(svalue(r2),1)== ans2[5]){
      gmessage(message="Incorrect.  Bootstrapping is not an explicitly Bayesian method.",  icon = "error")
    }
      svalue(r2) <- character(0)
  })
  
  
  #------------- Question 3 -----------#
  gp3 <- ggroup(container = q3, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("With jackknifing...", container = gp3, anchor = c(-1,1))
  addSpace(gp3, .5, horizontal=FALSE)
  
  
  ans3 <- c("(a)  we sample with replacement from an existing dataset.",
            "(b)  we sample without replacement from an existing dataset.",
            "(c)  we create pseudovalues based on data subsets, i.e., the dataset with the 1st \nobservation removed, the dataset with the 2nd observation removed etc.",
            "(d)  we create pseudovalues based on data subsets, i.e., the 1st \nobservation, the 2nd observation,  etc.",
            "(e)  we create a Bayesian posterior distribution.")
  
  r3 <- gcheckboxgroup(ans3, container = gp3, checked = FALSE, where = "beginning")
  
  
  addhandlerclicked(r3, handler = function(h,....){
    if(tail(svalue(r3),1) == ans3[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[3]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r3),1)== ans3[4]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[5]){
      gmessage(message="Incorrect.  Jackknifing is not an explicitly Bayesian method.",  icon = "error")
    }
    svalue(r3) <- character(0)
  })
  
  
  #------------- Question 4 -----------#
  
  gp4 <- ggroup(container = q4, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("Biologists often use jackknifing to...", container = gp4, anchor = c(-1,1))
  addSpace(gp4, .5, horizontal=FALSE)
  ans4 <- c("(a) create normal distributions for bacteria.",
            "(b) run bioinformatics sequences.",
            "(c) check the bias of estimators.",
            "(d) generate species area curves.",
            "(e) All of the above.",
            "(f)   (a) and (b) only.",
            "(g)  (c) and (d) only.")
  
  r4 <- gcheckboxgroup(ans4, container = gp4, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r4, handler = function(h,....){
    if(tail(svalue(r4),1) == ans4[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[2]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[3]){
      gmessage(message="Partially correct", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[4]){
      gmessage(message="Partially correct", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[5]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[6]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[7]){
      gmessage(message="Correct")
    }
    svalue(r4) <- character(0)
  })
}

