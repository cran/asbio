selftest.ANVOVA_design.tck <-function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "ANOVA experimental designs")
  size(w) <- c(700, 670)
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
  q1 <- gexpandgroup("Question 1", container=g, anchor=c(-1,1))
  q2 <- gexpandgroup("Question 2", container=g, anchor=c(-1,1))
  q3 <- gexpandgroup("Question 3", container=g, anchor=c(-1,1))
  q4 <- gexpandgroup("Question 4", container=g, anchor=c(-1,1))
  q5 <- gexpandgroup("Question 5", container=g, anchor=c(-1,1))
  # q6 <- gexpandgroup("Question 6", container=g, anchor=c(-1,1))
  # q7 <- gexpandgroup("Question 7", container=g, anchor=c(-1,1))
  # q8 <- gexpandgroup("Question 8", container=g, anchor=c(-1,1))
  # q9 <- gexpandgroup("Question 9", container=g, anchor=c(-1,1))
  # q10 <- gexpandgroup("Question 10", container=g, anchor=c(-1,1))
  # q11 <- gexpandgroup("Question 11", container=g, anchor=c(-1,1))
  # 
  
  
  
  
  #------------- Question 1 -----------#
  
  gp1 <- ggroup(container = q1, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("In the design below we have six experimental units (EUs) randomly assigned to two treatments (A\u2081 and A\u2082).  \nWhat is the experimental design?", container = gp1, anchor = c(-1,1))
  addSpace(gp1, .1, horizontal=FALSE)
  gp1.1 <- getToolkitWidget(gp1)
  img <- tkrplot(gp1.1, function(){ 
    par(bg = "white", mar = c(1,1,1,1))
    ExpDesign("CRD",n = 6, cex.text = .85,titles = FALSE)
  }
  )
  add(gp1, img, horizontal=TRUE)
  addSpace(gp1, .1, horizontal=FALSE)
  ans1 <- c("(a) randomized complete block design (RCBD).",
            "(b) completely randomized design (CRD).",
            "(c) split-plot design.",
            "(d) 2 x 2 factorial.",
            "(e) nested design.",
            "(f) matched pairs design (repeated measures)."
  )
  
  
  r1 <- gcheckboxgroup(ans1, container = gp1, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r1, handler = function(h,....){
    if(tail(svalue(r1),1) == ans1[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[2]){
      gmessage(message="Correct.  The CRD is the simplest experimental design.  \nNote that no blocking, splitting or nesting occurs.")
    }
    if(tail(svalue(r1),1)== ans1[3]){
      gmessage(message="Incorrect", icon = "error")
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
  glabel("In the design below we have two factors A and B, each with two factor levels, randomly assigned within \nfour blocks. What is the experimental design?", container = gp2, anchor = c(-1,1))
  addSpace(gp2, .1, horizontal=FALSE)
  gp2.1 <- getToolkitWidget(gp2)
  img <- tkrplot(gp2.1, function(){ 
    par(bg = "white", mar = c(1,1,1,1))
    ExpDesign("SPRB",cex.text = .85,titles = FALSE)
  }
  )
  add(gp2, img, horizontal=TRUE)
  addSpace(gp2, .1, horizontal=FALSE)
  ans2 <- c("(a) randomized complete block design (RCBD).",
            "(b) completely randomized design (CRD).",
            "(c) split-plot design.",
            "(d) 2 x 2 factorial.",
            "(e) nested design.",
            "(f) matched pairs design (repeated measures)."
  )
  
  
  r2 <- gcheckboxgroup(ans2, container = gp2, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r2, handler = function(h,....){
    if(tail(svalue(r2),1) == ans2[1]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[2]){
      gmessage(message="Incorrect",,  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[3]){
      gmessage(message="Correct.  Specifically, this is a split-plot design in randomized blocks (RBSP). Note that the blocks comprise a replicate for the whole plot (factor A) factor levels. The RBSP design is the most common split plot design.")
    }
    if(tail(svalue(r2),1)== ans2[4]){
      gmessage(message="Incorrect", icon = "error")
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
  glabel("In the design below we have two factors A and B, each with two factor levels, randomly assigned to four \nexperimental units. What is the experimental design?", container = gp3, anchor = c(-1,1))
  addSpace(gp3, .1, horizontal=FALSE)
  gp3.1 <- getToolkitWidget(gp3)
  img <- tkrplot(gp3.1, function(){ 
    par(bg = "white", mar = c(1,1,1,1))
    ExpDesign("factorial2by2",cex.text = .95,titles = FALSE)
  }
  )
  add(gp3, img, horizontal=TRUE)
  addSpace(gp3, .1, horizontal=FALSE)
  ans3 <- c("(a) randomized complete block design (RCBD).",
            "(b) completely randomized design (CRD).",
            "(c) split-plot design.",
            "(d) 2 x 2 factorial.",
            "(e) nested design.",
            "(f) matched pairs design (repeated measures)."
  )
  
  
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
      gmessage(message="Correct.  Note that the design here is balanced but unreplicated (each of the four factor level combinations has only one replicate).  ")
    }
    if(tail(svalue(r3),1)== ans3[5]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[6]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r3) <- character(0)
  })  
  
  #------------- Question 4 -----------#
  
  gp4 <- ggroup(container = q4, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("In the design below we have two treatments (A\u2081 and A\u2082), randomly assigned within two blocks. \nWhat is the experimental design?", container = gp4, anchor = c(-1,1))
  addSpace(gp4, .1, horizontal=FALSE)
  gp4.1 <- getToolkitWidget(gp4)
  img <- tkrplot(gp4.1, function(){ 
    par(bg = "white", mar = c(1,1,1,1))
    ExpDesign("RCBD",cex.text = .85,titles = FALSE)
  }
  )
  add(gp4, img, horizontal=TRUE)
  addSpace(gp4, .1, horizontal=FALSE)
  ans4 <- c("(a) randomized complete block design (RCBD).",
            "(b) completely randomized design (CRD).",
            "(c) split-plot design.",
            "(d) 2 x 2 factorial.",
            "(e) nested design.",
            "(f) matched pairs design (repeated measures)."
  )
  
  
  r4 <- gcheckboxgroup(ans4, container = gp4, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r4, handler = function(h,....){
    if(tail(svalue(r4),1) == ans4[1]){
      gmessage(message="Correct.  Note that treatments are assigned exactly once within each block.")
    }
    if(tail(svalue(r4),1)== ans4[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[3]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[4]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[5]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[6]){
      gmessage(message="Incorrect", icon = "error")
    }
    svalue(r4) <- character(0)
  })
  
  
  #------------- Question 5 -----------#
  
  gp5 <- ggroup(container = q5, spacing = 2, pos = 0, horizontal = FALSE)
  glabel("In the design below we have three experimental units randomly assigned to each of two treatments (A\u2081 and A\u2082). \nWhat is the experimental design?", container = gp5, anchor = c(-1,1))
  addSpace(gp5, .1, horizontal=FALSE)
  gp5.1 <- getToolkitWidget(gp5)
  img <- tkrplot(gp5.1, function(){ 
    par(bg = "white", mar = c(1,1,1,1))
    ExpDesign("pairs",cex.text = .95,titles = FALSE)
  }
  )
  add(gp5, img, horizontal=TRUE)
  addSpace(gp5, .1, horizontal=FALSE)
  ans5 <- c("(a) randomized complete block design (RCBD).",
            "(b) completely randomized design (CRD).",
            "(c) split-plot design.",
            "(d) 2 x 2 factorial.",
            "(e) nested design.",
            "(f) matched pairs design (repeated measures)."
  )
  
  
  r5 <- gcheckboxgroup(ans5, container = gp5, checked = FALSE, where = "beginning")
  
  addhandlerclicked(r5, handler = function(h,....){
    if(tail(svalue(r5),1) == ans5[1]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[2]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[3]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[4]){
      gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[5]){
      gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[6]){
      gmessage(message="Correct.  Note that each EU receives both treatments, but that the order in which the EUs receive treatments is randomized.")
    }
    svalue(r5) <- character(0)
  })
  
  
}



















