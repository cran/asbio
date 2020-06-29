selftest.jack.tck <- function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "Jackknifing and Bootstrapping")
  size(w) <- c(700, 400)
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)

  
  #------------- Question 1 -----------#
  
  gp1 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp1.1 <- ggroup(container = gp1, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("1) ", container = gp1.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("We often use jackknifing and bootstrapping in cases when...", container = gp1.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans1 <- c("(a)  the sample dataset is small.",
            "(b)  the sampling distribution of an estimator is unknown.",
            "(c)  the sample data contain errors.",
            "(d)  the sample dataset is extremely large.")
  
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
  
  r1 <- gcheckboxgroup(ans1, container = gp1, checked = FALSE, where = "beginning", handler = f1)
  

  
  
  #------------- Question 2 -----------#
  gp2 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp2.1 <- ggroup(container = gp2, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("2) ", container = gp2.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("With bootstrapping...", container = gp2.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans2 <- c("(a)  we sample with replacement from an existing dataset.",
            "(b)  we sample without replacement from an existing dataset.",
            "(c)  we create pseudovalues based on data subsets, i.e., the dataset with the 1st \nobservation removed, the dataset with the 2nd observation removed etc.",
            "(d)  we create pseudovalues based on data subsets, i.e., the 1st \nobservation, the 2nd observation,  etc.",
            "(e)  we create a Bayesian posterior distribution.")
  
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
    if(tail(svalue(r2),1)== ans2[5]){
      gmessage(msg="Incorrect.  Bootstrapping is not an explicitly Bayesian method.",  icon = "error")
    }
      svalue(r2) <- character(0)
  }
  
  r2 <- gcheckboxgroup(ans2, container = gp2, checked = FALSE, where = "beginning", handler = f2)
  
  
  
  #------------- Question 3 -----------#
  gp3 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp3.1 <- ggroup(container = gp3, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("3) ", container = gp3.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("With jackknifing...", container = gp3.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans3 <- c("(a)  we sample with replacement from an existing dataset.",
            "(b)  we sample without replacement from an existing dataset.",
            "(c)  we create pseudovalues based on data subsets, i.e., the dataset with the 1st \nobservation removed, the dataset with the 2nd observation removed etc.",
            "(d)  we create pseudovalues based on data subsets, i.e., the 1st \nobservation, the 2nd observation,  etc.",
            "(e)  we create a Bayesian posterior distribution.")
  
  
  
 f3 <- function(h,....){
    if(tail(svalue(r3),1) == ans3[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[3]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r3),1)== ans3[4]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[5]){
      gmessage(msg="Incorrect.  Jackknifing is not an explicitly Bayesian method.",  icon = "error")
    }
    svalue(r3) <- character(0)
 }
 
 r3 <- gcheckboxgroup(ans3, container = gp3, checked = FALSE, where = "beginning", handler = f3)
 
  
  
  
  #------------- Question 4 -----------#
  
  gp4 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp4.1 <- ggroup(container = gp4, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("4) ", container = gp4.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("Biologists often use jackknifing to...", container = gp4.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  ans4 <- c("(a) create normal distributions for bacteria.",
            "(b) run bioinformatics sequences.",
            "(c) check the bias of estimators.",
            "(d) generate species area curves.",
            "(e) All of the above.",
            "(f)   (a) and (b) only.",
            "(g)  (c) and (d) only.")
  
  
  f4 <-  function(h,....){
    if(tail(svalue(r4),1) == ans4[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[3]){
      gmessage(msg="Partially correct", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[4]){
      gmessage(msg="Partially correct", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[5]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[6]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[7]){
      gmessage(msg="Correct")
    }
    svalue(r4) <- character(0)
  }
  
  r4 <- gcheckboxgroup(ans4, container = gp4, checked = FALSE, where = "beginning", handler = f4)
  
}

