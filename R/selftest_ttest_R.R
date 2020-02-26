selftest.codettest.tck <-function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "coding t-tests in R")
  size(w) <- c(700, 400)
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
  q1 <- gexpandgroup("Question 1", container=g, anchor=c(-1,1))
  q2 <- gexpandgroup("Question 2", container=g, anchor=c(-1,1))
  q3 <- gexpandgroup("Question 3", container=g, anchor=c(-1,1))
  q4 <- gexpandgroup("Question 4", container=g, anchor=c(-1,1))
  q5 <- gexpandgroup("Question 5", container=g, anchor=c(-1,1))
  
  
  #------------- Question 1 -----------#
  
  gp1 <- ggroup(container = q1, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("Assume that you have conducted an experiment that measured bacterial cell colony-forming units (CFUs) in \npetri dishes after exposure to ZnO nanoparticles, and CFUs in control (no nanoparticles) petri dishes.  \nAssume further that the data are contained in an R dataframe called \u0022microbes\u0022 with two columns named \n\u0022ZnO\u0022 and \u0022control\u0022 which contain CFU counts for ZnO and control replicates, respectively.  You want to test the \nhypothesis that the ZnO group has lower mean CFU counts than the control group using a Welch t-test.  \nYou would use the following R code:", container = gp1, anchor = c(-1,1))
  addSpace(gp1, .5, horizontal=FALSE)
  
  ans1 <- c("(a) with(microbes, t.test(control, ZnO, alternative = \u0022less\u0022)).",
            "(b) with(microbes, t.test(ZnO, control, alternative = \u0022less\u0022)).",
            "(c) with(microbes, t.test(control, ZnO, alternative = \u0022less\u0022, var.equal = TRUE)).",
            "(d) with(microbes, t.test(ZnO, control, alternative = \u0022less\u0022, var.equal = TRUE)).",
            "(e) with(microbes, t.test(control, ZnO, alternative = \u0022less\u0022, paired = TRUE)).",
            "(f) with(microbes, t.test(ZnO, control, alternative = \u0022less\u0022, paired = TRUE)).")
  
  r1 <- gcheckboxgroup(ans1, container = gp1, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r1, handler = function(h,....){
    if(tail(svalue(r1),1) == ans1[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[2]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r1),1)== ans1[3]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[5]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[6]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r1) <- character(0)
  })
  
  
  #------------- Question 2 -----------#
  
  gp2 <- ggroup(container = q2, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("Using the framework for Question 1, assume that you want to use a pooled variance t-test.  \nYou would use the following R code:", container = gp2, anchor = c(-1,1))
  addSpace(gp2, .5, horizontal=FALSE)
  
  ans2 <- c("(a) with(microbes, t.test(control, ZnO, alternative = \u0022less\u0022)).",
            "(b) with(microbes, t.test(ZnO, control, alternative = \u0022less\u0022)).",
            "(c) with(microbes, t.test(control, ZnO, alternative = \u0022less\u0022, var.equal = TRUE)).",
            "(d) with(microbes, t.test(ZnO, control, alternative = \u0022less\u0022, var.equal = TRUE)).",
            "(e) with(microbes, t.test(control, ZnO, alternative = \u0022less\u0022, paired = TRUE)).",
            "(f) with(microbes, t.test(ZnO, control, alternative = \u0022less\u0022, paired = TRUE)).")
  
  r2 <- gcheckboxgroup(ans2, container = gp2, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r2, handler = function(h,....){
    if(tail(svalue(r2),1) == ans2[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[3]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[4]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r2),1)== ans2[5]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[6]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r2) <- character(0)
  })
  
  
  #------------- Question 3 -----------#
  
  gp3 <- ggroup(container = q3, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("Using the framework for Question 1, assume that the rows in the dataframe \u0022microbes\u0022 constitute blocks that \nyou want to incorporate in a matched pairs design.  You would use the following R code:", container = gp3, anchor = c(-1,1))
  addSpace(gp3, .5, horizontal=FALSE)
  
  ans3 <- c("(a) with(microbes, t.test(control, ZnO, alternative = \u0022less\u0022)).",
            "(b) with(microbes, t.test(ZnO, control, alternative = \u0022less\u0022)).",
            "(c) with(microbes, t.test(control, ZnO, alternative = \u0022less\u0022, var.equal = TRUE)).",
            "(d) with(microbes, t.test(ZnO, control, alternative = \u0022less\u0022, var.equal = TRUE)).",
            "(e) with(microbes, t.test(control, ZnO, alternative = \u0022less\u0022, paired = TRUE)).",
            "(f) with(microbes, t.test(ZnO, control, alternative = \u0022less\u0022, paired = TRUE)).")
  
  r3 <- gcheckboxgroup(ans3, container = gp3, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r3, handler = function(h,....){
    if(tail(svalue(r3),1) == ans3[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[3]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[4]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[5]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[6]){
      gmessage(message="Correct")
    }
    svalue(r3) <- character(0)
  })
  
  #------------- Question 4 -----------#
  
  gp4 <- ggroup(container = q4, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("Using the framework for Question 1, which of the following is equivalent to the code: \n\nwith(microbes, t.test(ZnO, control, alternative = \u0022less\u0022)).", container = gp4, anchor = c(-1,1))
  addSpace(gp4, .5, horizontal=FALSE)
  
  ans4 <- c("(a) with(microbes, t.test(ZnO, control, alternative = \u0022greater\u0022, var.equal = FALSE)).",
            "(b) with(microbes, t.test(control, ZnO, alternative = \u0022less\u0022, var.equal = TRUE)).",
            "(c) with(microbes, t.test(control, ZnO, alternative = \u0022greater\u0022, var.equal = FALSE)).",
            "(d) with(microbes, t.test(ZnO, control, alternative = \u0022less\u0022, paired = TRUE)."
  )
  
  r4 <- gcheckboxgroup(ans4, container = gp4, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r4, handler = function(h,....){
    if(tail(svalue(r4),1) == ans4[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[3]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[4]){
      gmessage(message="Correct")
    }
    
    svalue(r4) <- character(0)
  })
  
  #------------- Question 5 -----------#
  
  gp5 <- ggroup(container = q5, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("Using the framework for Question 1, assume that the dataset \u0022microbes\u0022 has two columns, and that those \ncolumns have the names \u0022CFUs\u0022 and \u0022treatment\u0022.  The \u0022CFUs\u0022 column contains CFU counts for individual \nperti dishes and \u0022treatment\u0022 contains the categorical designations (\u0022ZnO\u0022 and \u0022control\u0022) for the petri dishes.   \nYou would use the following code:", container = gp5, anchor = c(-1,1))
  addSpace(gp5, .5, horizontal=FALSE)
  
  ans5 <- c("(a) with(microbes, t.test(CFUs, treatment, alternative = \u0022greater\u0022)).",
            "(b) with(microbes, t.test(CFUs ~ treatment, alternative = \u0022greater\u0022)).",
            "(c) with(microbes, t.test(CFUs, treatment, alternative = \u0022less\u0022)).",
            "(d) with(microbes, t.test(CFUs ~ treatment, alternative = \u0022less\u0022)).")
  
  r5 <- gcheckboxgroup(ans5, container = gp5, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r5, handler = function(h,....){
    if(tail(svalue(r5),1) == ans5[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[2]){
      gmessage(message="Correct")
    }
    if(tail(svalue(r5),1)== ans5[3]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[4]){
      gmessage(message="Incorrect",  icon = "error")
    }
    
    svalue(r5) <- character(0)
  })
}







