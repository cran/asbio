selftest.ANVOVA_design_review.tck <-function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "ANOVA review")
  size(w) <- c(700, 670)
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
  
  
  #------------- Question 1 -----------#
  gp16_1 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp16.1_1 <- ggroup(container = gp16_1, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("1) ", container = gp16.1_1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("In ANOVA, a factor is...", container = gp16.1_1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans16_1 <- c("(a)     a categorical explanatory variable.",
             "(b)     a category from a categorical explanatory variable.",
             "(c)     a response variable.",
             "(d)     a tabular analysis.")
  
  f16_1 <- function(h,....){
    if(tail(svalue(r16_1),1) == ans16_1[1]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r16_1),1)== ans16_1[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r16_1),1)== ans16_1[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r16_1),1)== ans16_1[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r16_1) <- character(0)
  }
  
  r16_1 <- gcheckboxgroup(ans16_1, container = gp16_1, checked = FALSE, where = "beginning", handler = f16_1)
  
  #------------- Question 2 -----------#
  gp17_1 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp17.1_1 <- ggroup(container = gp17_1, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("2) ", container = gp17.1_1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("In ANOVA, fixed factor levels are...", container = gp17.1_1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans17_1 <- c("(a)     a subset from a population of potential factor levels.",
             "(b)     are not informative.",
             "(c)     not an obvious subset from a population of potential factor levels.",
             "(d)     are informative.",
             "(e)     (a) and (b)",
             "(f)     (c) and (d)")
  
  f17_1 <- function(h,....){
    if(tail(svalue(r17_1),1) == ans17_1[1]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r17_1),1)== ans17_1[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r17_1),1)== ans17_1[3]){
      gmessage(msg="Partially correct", icon = "error")
    }
    if(tail(svalue(r17_1),1)== ans17_1[4]){
      gmessage(msg="Partially correct", icon = "error")
    }
    if(tail(svalue(r17_1),1)== ans17_1[5]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r17_1),1)== ans17_1[6]){
      gmessage(msg="Correct")
    }
    svalue(r17_1) <- character(0)
  }
  
  r17_1 <- gcheckboxgroup(ans17_1, container = gp17_1, checked = FALSE, where = "beginning", handler = f17_1)
  
  
  #------------- Question 3 -----------#
  gp18_1 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp18.1_1 <- ggroup(container = gp18_1, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("3) ", container = gp18.1_1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("In ANOVA, random factor levels are...", container = gp18.1_1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans18_1 <- c("(a)     a subset from a population of potential factor levels.",
             "(b)     are not informative.",
             "(c)     not an obvious subset from a population of potential factor levels.",
             "(d)     are informative.",
             "(e)     (a) and (b)",
             "(f)     (c) and (d)")
  
  f18_1 <- function(h,....){
    if(tail(svalue(r18_1),1) == ans18_1[1]){
      gmessage(msg="Partially correct", icon = "error")
    }
    if(tail(svalue(r18_1),1)== ans18_1[2]){
      gmessage(msg="Partially correct", icon = "error")
    }
    if(tail(svalue(r18_1),1)== ans18_1[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r18_1),1)== ans18_1[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r18_1),1)== ans18_1[5]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r18_1),1)== ans18_1[6]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r18_1) <- character(0)
  }
  
  r18_1 <- gcheckboxgroup(ans18_1, container = gp18_1, checked = FALSE, where = "beginning", handler = f18_1)
  

  #------------- Question 4 -----------# 
  
  
  gp1_1 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp1.1_1 <- ggroup(container = gp1_1, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("4) ", container = gp1.1_1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("(T or F) ANOVA is a type of generalized linear model, and thus a type of general linear model.", container = gp1.1_1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans1_1 <- c("(a)     TRUE.",
               "(b)     FALSE."
           )
  
  f1_1 <- function(h,....){
    if(tail(svalue(r1_1),1) == ans1_1[1]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r1_1),1)== ans1_1[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
      svalue(r1_1) <- character(0)
  }
  
  r1_1 <- gcheckboxgroup(ans1_1, container = gp1_1, checked = FALSE, where = "beginning", handler = f1_1)
  
  
  
  #------------- Question 5 -----------#
  
  gp1 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp1.1 <- ggroup(container = gp1, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("5) ", container = gp1.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("In the design below we have six experimental units (EUs) randomly assigned to two treatments \n(A\u2081 and A\u2082).  What is the experimental design?", container = gp1.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  
  gp1.1a <- getWidget(gp1)
  img <- tkrplot::tkrplot(gp1.1a, function(){ 
    par(bg = "white", mar = c(1,1,1,1))
    ExpDesign("CRD",n = 6, cex.text = .85,titles = FALSE)
  }
  )
  add(gp1, img, horizontal=TRUE)

  ans1 <- c("(a) randomized complete block design (RCBD).",
            "(b) completely randomized design (CRD).",
            "(c) split-plot design.",
            "(d) 2 x 2 factorial.",
            "(e) nested design.",
            "(f) matched pairs design (repeated measures)."
  )
  
  
  
  f1 <- function(h,....){
    if(tail(svalue(r1),1) == ans1[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[2]){
      gmessage(msg="Correct.  The CRD is the simplest experimental design.  \nNote that no blocking, splitting or nesting occurs.")
    }
    if(tail(svalue(r1),1)== ans1[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[5]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[6]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r1) <- character(0)
  }
  
  r1 <- gcheckboxgroup(ans1, container = gp1, checked = FALSE, where = "beginning", handler = f1)
  
  
  
  
  #------------- Question 6 -----------#
  
  gp2 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp2.1 <- ggroup(container = gp2, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("6) ", container = gp2.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("In the design below we have two factors A and B, each with two factor levels, randomly assigned \nwithin four blocks. What is the experimental design?", container = gp2.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  
  gp2.1a <- getToolkitWidget(gp2)
  img <- tkrplot::tkrplot(gp2.1a, function(){ 
    par(bg = "white", mar = c(1,1,1,1))
    ExpDesign("SPRB",cex.text = .85,titles = FALSE)
  }
  )
  add(gp2, img, horizontal=TRUE)
  ans2 <- c("(a) randomized complete block design (RCBD).",
            "(b) completely randomized design (CRD).",
            "(c) split-plot design.",
            "(d) 2 x 2 factorial.",
            "(e) nested design.",
            "(f) matched pairs design (repeated measures)."
  )
  
  f2 <- function(h,....){
    if(tail(svalue(r2),1) == ans2[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[2]){
      gmessage(msg="Incorrect",,  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[3]){
      gmessage(msg="Correct.  Specifically, this is a split-plot design in randomized blocks (RBSP). Note that the blocks comprise a replicate for the whole plot (factor A) factor levels. The RBSP design is the most common split plot design.")
    }
    if(tail(svalue(r2),1)== ans2[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[5]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[6]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r2) <- character(0)
  }
  
  r2 <- gcheckboxgroup(ans2, container = gp2, checked = FALSE, where = "beginning", handler = f2)
  
  
  
  #------------- Question 7 -----------#
  
  gp3 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp3.1 <- ggroup(container = gp3, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("7) ", container = gp3.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("In the design below we have two factors A and B, each with two factor levels, randomly assigned to \nfour experimental units. What is the experimental design?", container = gp3.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  gp3.1a <- getToolkitWidget(gp3)
  img <- tkrplot::tkrplot(gp3.1a, function(){ 
    par(bg = "white", mar = c(1,1,1,1))
    ExpDesign("factorial2by2",cex.text = .95,titles = FALSE)
  }
  )
  add(gp3, img, horizontal=TRUE)
  ans3 <- c("(a) randomized complete block design (RCBD).",
            "(b) completely randomized design (CRD).",
            "(c) split-plot design.",
            "(d) 2 x 2 factorial.",
            "(e) nested design.",
            "(f) matched pairs design (repeated measures)."
  )
  

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
      gmessage(msg="Correct.  Note that the design here is balanced but unreplicated (each of the four factor level combinations has only one replicate).  ")
    }
    if(tail(svalue(r3),1)== ans3[5]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[6]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r3) <- character(0)
  }
  
  r3 <- gcheckboxgroup(ans3, container = gp3, checked = FALSE, where = "beginning", handler = f3)
  
  
  #------------- Question 8 -----------#
  
  gp4 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp4.1 <- ggroup(container = gp4, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("8) ", container = gp4.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("In the design below we have two treatments (A\u2081 and A\u2082), randomly assigned within two blocks. \nWhat is the experimental design?", container = gp4.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  gp4.1a <- getToolkitWidget(gp4)
  img <- tkrplot::tkrplot(gp4.1a, function(){ 
    par(bg = "white", mar = c(1,1,1,1))
    ExpDesign("RCBD",cex.text = .85,titles = FALSE)
  }
  )
  add(gp4, img, horizontal=TRUE)

    ans4 <- c("(a) randomized complete block design (RCBD).",
            "(b) completely randomized design (CRD).",
            "(c) split-plot design.",
            "(d) 2 x 2 factorial.",
            "(e) nested design.",
            "(f) matched pairs design (repeated measures)."
  )
  
  
 f4 <- function(h,....){
    if(tail(svalue(r4),1) == ans4[1]){
      gmessage(msg="Correct.  Note that treatments are assigned exactly once within each block.")
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
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[6]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r4) <- character(0)
 }
 
 r4 <- gcheckboxgroup(ans4, container = gp4, checked = FALSE, where = "beginning", handler = f4)
 
  
  
  #------------- Question 9 -----------#
  
  gp5 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp5.1 <- ggroup(container = gp5, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("9) ", container = gp5.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("In the design below we have three experimental units randomly assigned to each of two treatments \n(A\u2081 and A\u2082). What is the experimental design?", container = gp5.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  gp5.1a <- getToolkitWidget(gp5)
  img <- tkrplot::tkrplot(gp5.1a, function(){ 
    par(bg = "white", mar = c(1,1,1,1))
    ExpDesign("pairs",cex.text = .95,titles = FALSE)
  }
  )
  add(gp5, img, horizontal=TRUE)

    ans5 <- c("(a) randomized complete block design (RCBD).",
            "(b) completely randomized design (CRD).",
            "(c) split-plot design.",
            "(d) 2 x 2 factorial.",
            "(e) nested design.",
            "(f) matched pairs design (repeated measures)."
  )
  
  f5 <- function(h,....){
    if(tail(svalue(r5),1) == ans5[1]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[3]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[4]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[5]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[6]){
      gmessage(msg="Correct.  Note that each EU receives both treatments, but that the order in which the EUs receive treatments is randomized.")
    }
    svalue(r5) <- character(0)
  }
  
  r5 <- gcheckboxgroup(ans5, container = gp5, checked = FALSE, where = "beginning", handler = f5)
  
  
  
}



















