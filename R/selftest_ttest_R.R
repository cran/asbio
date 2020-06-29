selftest.codettest.tck <-function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "coding t-tests in R")
  size(w) <- c(700, 400)
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)

  #------------- Question 1 -----------#
  
  gp1 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp1.1 <- ggroup(container = gp1, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("1) ", container = gp1.1, horizontal = TRUE, anchor = c(1,1))
  font(q) <- list(weight = "bold")
  qq <- glabel("Assume that you have conducted an experiment that measured bacterial cell colony-forming units \n(CFUs) in petri dishes after exposure to ZnO nanoparticles, and CFUs in control (no nanoparticles) \npetri dishes.  \n\nAssume further that the data are contained in an R dataframe called \u0022microbes\u0022 with two columns \nnamed \u0022ZnO\u0022 and \u0022control\u0022 which contain CFU counts for ZnO and control replicates, respectively.  \nYou want to test the hypothesis that the ZnO group has lower mean CFU counts than the control \ngroup using a Welch t-test.  You would use the following R code:", container = gp1.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans1 <- c("(a) with(microbes, t.test(control, ZnO, alternative = \u0022less\u0022)).",
            "(b) with(microbes, t.test(ZnO, control, alternative = \u0022less\u0022)).",
            "(c) with(microbes, t.test(control, ZnO, alternative = \u0022less\u0022, var.equal = TRUE)).",
            "(d) with(microbes, t.test(ZnO, control, alternative = \u0022less\u0022, var.equal = TRUE)).",
            "(e) with(microbes, t.test(control, ZnO, alternative = \u0022less\u0022, paired = TRUE)).",
            "(f) with(microbes, t.test(ZnO, control, alternative = \u0022less\u0022, paired = TRUE)).")
  
  
  f1 <- function(h,....){
    if(tail(svalue(r1),1) == ans1[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[2]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r1),1)== ans1[3]){
      gmessage(msg="Incorrect",  icon = "error")
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
  
  
  
  #------------- Question 2 -----------#
  
  gp2 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp2.1 <- ggroup(container = gp2, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("2) ", container = gp2.1, horizontal = TRUE, anchor = c(1,1))
  font(q) <- list(weight = "bold")
  qq <- glabel("Using the framework for Question 1, assume that you want to use a pooled variance t-test.  \nYou would use the following R code:", container = gp2.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans2 <- c("(a) with(microbes, t.test(control, ZnO, alternative = \u0022less\u0022)).",
            "(b) with(microbes, t.test(ZnO, control, alternative = \u0022less\u0022)).",
            "(c) with(microbes, t.test(control, ZnO, alternative = \u0022less\u0022, var.equal = TRUE)).",
            "(d) with(microbes, t.test(ZnO, control, alternative = \u0022less\u0022, var.equal = TRUE)).",
            "(e) with(microbes, t.test(control, ZnO, alternative = \u0022less\u0022, paired = TRUE)).",
            "(f) with(microbes, t.test(ZnO, control, alternative = \u0022less\u0022, paired = TRUE)).")
  
  
  f2 <- function(h,....){
    if(tail(svalue(r2),1) == ans2[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[3]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[4]){
      gmessage(msg="Correct")
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
  
  
  
  #------------- Question 3 -----------#
  
  gp3 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp3.1 <- ggroup(container = gp3, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("3) ", container = gp3.1, horizontal = TRUE, anchor = c(1,1))
  font(q) <- list(weight = "bold")
  qq <- glabel("Using the framework for Question 1, assume that the rows in the dataframe \u0022microbes\u0022 constitute \nblocks that you want to incorporate in a matched pairs design.  You would use the following R code:", container = gp3.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans3 <- c("(a) with(microbes, t.test(control, ZnO, alternative = \u0022less\u0022)).",
            "(b) with(microbes, t.test(ZnO, control, alternative = \u0022less\u0022)).",
            "(c) with(microbes, t.test(control, ZnO, alternative = \u0022less\u0022, var.equal = TRUE)).",
            "(d) with(microbes, t.test(ZnO, control, alternative = \u0022less\u0022, var.equal = TRUE)).",
            "(e) with(microbes, t.test(control, ZnO, alternative = \u0022less\u0022, paired = TRUE)).",
            "(f) with(microbes, t.test(ZnO, control, alternative = \u0022less\u0022, paired = TRUE)).")
  
  
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
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[5]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[6]){
      gmessage(msg="Correct")
    }
    svalue(r3) <- character(0)
  }
  
  r3 <- gcheckboxgroup(ans3, container = gp3, checked = FALSE, where = "beginning", handler = f3)
  
  
  #------------- Question 4 -----------#
  
  gp4 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp4.1 <- ggroup(container = gp4, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("4) ", container = gp4.1, horizontal = TRUE, anchor = c(1,1))
  font(q) <- list(weight = "bold")
  qq <- glabel("Using the framework for Question 1, which of the following is equivalent to the code: \nwith(microbes, t.test(ZnO, control, alternative = \u0022less\u0022)).", container = gp4.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans4 <- c("(a) with(microbes, t.test(ZnO, control, alternative = \u0022greater\u0022, var.equal = FALSE)).",
            "(b) with(microbes, t.test(control, ZnO, alternative = \u0022less\u0022, var.equal = TRUE)).",
            "(c) with(microbes, t.test(control, ZnO, alternative = \u0022greater\u0022, var.equal = FALSE)).",
            "(d) with(microbes, t.test(ZnO, control, alternative = \u0022less\u0022, paired = TRUE)."
  )
  
  
  f4 <- function(h,....){
    if(tail(svalue(r4),1) == ans4[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[3]){
      gmessage(msg="Correct")
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
  q <- glabel("5) ", container = gp5.1, horizontal = TRUE, anchor = c(1,1))
  font(q) <- list(weight = "bold")
  qq <- glabel("Using the framework for Question 1, assume that the dataset \u0022microbes\u0022 has two columns, and that \nthose columns have the names \u0022CFUs\u0022 and \u0022treatment\u0022.  The \u0022CFUs\u0022 column contains CFU counts \nfor individual perti dishes and \u0022treatment\u0022 contains the categorical designations \n(\u0022ZnO\u0022 and \u0022control\u0022) for the petri dishes.   You would use the following code:", container = gp5.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans5 <- c("(a) with(microbes, t.test(CFUs, treatment, alternative = \u0022greater\u0022)).",
            "(b) with(microbes, t.test(CFUs ~ treatment, alternative = \u0022greater\u0022)).",
            "(c) with(microbes, t.test(CFUs, treatment, alternative = \u0022less\u0022)).",
            "(d) with(microbes, t.test(CFUs ~ treatment, alternative = \u0022less\u0022)).")
  
  f5 <- function(h,....){
    if(tail(svalue(r5),1) == ans5[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[2]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r5),1)== ans5[3]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[4]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    
    svalue(r5) <- character(0)
  }
  
  r5 <- gcheckboxgroup(ans5, container = gp5, checked = FALSE, where = "beginning", handler = f5)
  
}







