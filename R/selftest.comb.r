selftest.comb.tck <- function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "Combinatorics")
  size(w) <- c(700, 600)
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)



  #------------- Question 1 -----------#

  gp1 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp1.1 <- ggroup(container = gp1, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("1) ", container = gp1.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("The binomial coefficeint, i.e., n choose r, is equivelent to:", container = gp1.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)

  ans1 <- c("(a)     n!/(n-r)!",
            "(b)     r!/[n!(n-r)]!",
            "(c)     n!/[r!(n-r)]!",
            "(d)     n!/r!")


  f1 <- function(h,....){
    if(tail(svalue(r1),1) == ans1[1]){
      gmessage(msg="Incorrect.  This describes Boole's inequality.", icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r1),1)== ans1[3]){
      gmessage(msg="Correct")
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
  qq <- glabel("How many ''permutations'' are possible for five distinguishible objects?", container = gp2.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)

  ans2 <- c("(a)     120",
            "(b)     150",
            "(c)     10",
            "(d)     5")


  f2 <- function(h,....){
    if(tail(svalue(r2),1) == ans2[1]){
      gmessage(msg="Correct.  This is is equivelent to 5!.")
    }
    if(tail(svalue(r2),1)== ans2[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r2) <- character(0)
  }

  r2 <- gcheckboxgroup(ans2, container = gp2, checked = FALSE, where = "beginning", handler = f2)


  #------------- Question 3 -----------#

  gp3 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp3.1 <- ggroup(container = gp3, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("3) ", container = gp3.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("In a plant growth experiment, I have three watering treatments and two nutrient treatments.\nHow many total treatment combinations do I have?", container = gp3.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)

  ans3 <- c("(a)     5",
            "(b)     2",
            "(c)     6",
            "(d)     Impossible to say.")


  f3 <- function(h,....){
    if(tail(svalue(r3),1) == ans3[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[3]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r3),1)== ans3[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r3) <- character(0)
  }

  r3 <- gcheckboxgroup(ans3, container = gp3, checked = FALSE, where = "beginning", handler = f3)

  #------------- Question 4 -----------#

  gp4 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp4.1 <- ggroup(container = gp4, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("4) ", container = gp4.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("5 choose 3 = ", container = gp4.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)

  ans4 <- c("(a)     10",
             "(b)     5",
             "(c)     3",
             "(d)     1")


  f4 <- function(h,....){
    if(tail(svalue(r4),1) == ans4[1]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r4),1)== ans4[2]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r4) <- character(0)
  }

  r4 <- gcheckboxgroup(ans4, container = gp4, checked = FALSE, where = "beginning", handler = f4)




  #------------- Question 5 -----------#

  gp5 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp5.1 <- ggroup(container = gp5, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("5) ", container = gp5.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("0! = ", container = gp5.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)

  ans5 <- c("(a)     0",
             "(b)     1",
             "(c)     2",
             "(d)     3")


  f5 <- function(h,....){
    if(tail(svalue(r5),1) == ans5[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[2]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r5),1)== ans5[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r5) <- character(0)
  }

  r5 <- gcheckboxgroup(ans5, container = gp5, checked = FALSE, where = "beginning", handler = f5)

}
