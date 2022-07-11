selftest.prob.tck <- function(){
options(guiToolkit="tcltk")
w <- gwindow(title = "Probability")
size(w) <- c(700, 600)
g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)



#------------- Question 1 -----------#

gp1 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
gp1.1 <- ggroup(container = gp1, spacing = 2, pos = 0, horizontal = TRUE)
q <- glabel("1) ", container = gp1.1, horizontal = TRUE)
font(q) <- list(weight = "bold")
qq <- glabel("If P(A) = 0.2, P(B) = 0.4, P(A\u2229B) = 0.08, then A and B are disjoint.", container = gp1.1, anchor=c(-1,1))
font(qq) <- list(family = "cambria", size = 11)

ans1 <- c("True", 
          "False")


f1 <- function(h,....){
  if(tail(svalue(r1),1) == ans1[1]){
    gmessage(msg = "Incorrect. The probability of the intersection of A and B does not = 0.", icon = "error")
  }
  if(tail(svalue(r1),1)== ans1[2]){gmessage(msg="Correct")
  }
  svalue(r1) <- character(0)  
}

r1 <- gcheckboxgroup(ans1, container = gp1, checked = FALSE, where = "beginning", handler = f1)

#------------- Question 2 -----------#


gp2 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
gp2.1 <- ggroup(container = gp2, spacing = 2, pos = 0, horizontal = TRUE)
q <- glabel("2) ", container = gp2.1, horizontal = TRUE)
font(q) <- list(weight = "bold")
qq <- glabel("If P(A) = 0.2, P(B) = 0.4, P(A\u2229B) = 0.08, then A and B are independent.", container = gp2.1, anchor=c(-1,1))
font(qq) <- list(family = "cambria", size = 11)

ans2 <- c("True", 
          "False")


f2 <- function(h,....){
  if(tail(svalue(r2),1) == ans2[1]){
    gmessage(msg="Correct. The probability of the intersection of A and B = P(A)P(B).")
  }
  if(tail(svalue(r2),1)== ans2[2]){ gmessage(msg="Incorrect.  A and B are independent because the probability of the union of A and B  = P(A)P(B).", icon = "error")
  }
  svalue(r2) <- character(0)  
}

r2 <- gcheckboxgroup(ans2, container = gp2, checked = FALSE, where = "beginning", handler = f2)

#------------- Question 3 -----------#

gp3 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
gp3.1 <- ggroup(container = gp3, spacing = 2, pos = 0, horizontal = TRUE)
q <- glabel("3) ", container = gp3.1, horizontal = TRUE)
font(q) <- list(weight = "bold")
qq <- glabel("If P(A) = 0.2, P(B) = 0.4, P(A|B) = 0.2, then A and B are independent.", container = gp3.1, anchor=c(-1,1))
font(qq) <- list(family = "cambria", size = 11)

ans3 <- c("True", 
          "False")

f3 <- function(h,....){
  if(tail(svalue(r3),1) == ans3[1]){
    gmessage(msg="Correct. P(A|B) = P(A).")
  }
  if(tail(svalue(r3),1)== ans3[2]){
    gmessage(msg="Incorrect.  A and B are independent because P(A|B) = P(A)", icon = "error")
  }
  svalue(r3) <- character(0)  
}

r3 <- gcheckboxgroup(ans3, container = gp3, checked = FALSE, where = "beginning", handler = f3)


#------------- Question 4 -----------#

gp4 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
gp4.1 <- ggroup(container = gp4, spacing = 2, pos = 0, horizontal = TRUE)
q <- glabel("4) ", container = gp4.1, horizontal = TRUE)
font(q) <- list(weight = "bold")
qq <- glabel("You would use the Bonferroni inequality to:", container = gp4.1, anchor = c(-1,1))
font(qq) <- list(family = "cambria", size = 11)

ans4 <- c("(a)  Establish the upper bound to the probability of a union of events.", 
          "(b)  Establish the lower bound to the probability of a union of events.",
          "(c)  Establish the lower bound to the probability of an intersection of events.",
          "(d)  Establish the average probability of events.")


f4 <- function(h,....){
  if(tail(svalue(r4),1) == ans4[1]){
    gmessage(msg="Incorrect.  This describes Boole's inequality.", icon = "error")
  }
  if(tail(svalue(r4),1)== ans4[2]){
    gmessage(msg="Incorrect", icon = "error")
  }
  if(tail(svalue(r4),1)== ans4[3]){
    gmessage(msg="Correct")
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
qq <- glabel("If P(A) > 0.5, then", container = gp5.1, anchor = c(-1,1))
font(qq) <- list(family = "cambria", size = 11)

ans5 <- c("(a)    -1 \u2264 \u2126(A) < 0", 
          "(b)    1 < \u2126(A) < \u221E",
          "(c)    0 > \u2126(A) > 1",
          "(d)    0 \u2264 \u2126(A) < \u221E")


f5 <- function(h,....){
  if(tail(svalue(r5),1) == ans5[1]){
    gmessage(msg="Incorrect.  Odds must be greater than 0.", icon = "error")
  }
  if(tail(svalue(r5),1)== ans5[2]){
    gmessage(msg="Correct")
  }
  if(tail(svalue(r5),1)== ans5[3]){
    gmessage(msg="Incorrect.  These are discontinuous intervals.", icon = "error")
  }
  if(tail(svalue(r5),1)== ans5[4]){
    gmessage(msg="Incorrect.  This encompasses all possible outcomes for the odds of A, not P(A) > 0.5.", icon = "error")
  }
  svalue(r5) <- character(0)  
}

r5 <- gcheckboxgroup(ans5, container = gp5, checked = FALSE, where = "beginning", handler = f5)



#------------- Question 6 -----------#

gp6 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
gp6.1 <- ggroup(container = gp6, spacing = 2, pos = 0, horizontal = TRUE)
q <- glabel("6) ", container = gp6.1, horizontal = TRUE)
font(q) <- list(weight = "bold")
qq <- glabel("The binomial coefficeint, i.e., n choose r, is equivelent to:", container = gp6.1, anchor = c(-1,1))
font(qq) <- list(family = "cambria", size = 11)

ans6 <- c("(a)     n!/(n-r)!", 
          "(b)     r!/n!(n-r)!",
          "(c)     n!/r!(n-r)!",
          "(d)     n!/r!")


f6 <- function(h,....){
  if(tail(svalue(r6),1) == ans6[1]){
    gmessage(msg="Incorrect.  This describes Boole's inequality.", icon = "error")
  }
  if(tail(svalue(r6),1)== ans6[2]){
    gmessage(msg="Incorrect", icon = "error")
  }
  if(tail(svalue(r6),1)== ans6[3]){
    gmessage(msg="Correct")
  }
  if(tail(svalue(r6),1)== ans6[4]){
    gmessage(msg="Incorrect", icon = "error")
  }
  svalue(r6) <- character(0)  
}

r6 <- gcheckboxgroup(ans6, container = gp6, checked = FALSE, where = "beginning", handler = f6)


#------------- Question 7 -----------#

gp7 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
gp7.1 <- ggroup(container = gp7, spacing = 2, pos = 0, horizontal = TRUE)
q <- glabel("7) ", container = gp7.1, horizontal = TRUE)
font(q) <- list(weight = "bold")
qq <- glabel("How many ''permutations'' are possible for five distinguishible objects?", container = gp7.1, anchor = c(-1,1))
font(qq) <- list(family = "cambria", size = 11)

ans7 <- c("(a)     120", 
          "(b)     150",
          "(c)     10",
          "(d)     5")


f7 <- function(h,....){
  if(tail(svalue(r7),1) == ans7[1]){
    gmessage(msg="Correct.  This is is equivelmnt to 5!.")
  }
  if(tail(svalue(r7),1)== ans7[2]){
    gmessage(msg="Incorrect", icon = "error")
  }
  if(tail(svalue(r7),1)== ans7[3]){
    gmessage(msg="Incorrect", icon = "error")
  }
  if(tail(svalue(r7),1)== ans7[4]){
    gmessage(msg="Incorrect", icon = "error")
  }
  svalue(r7) <- character(0)  
}

r7 <- gcheckboxgroup(ans7, container = gp7, checked = FALSE, where = "beginning", handler = f7)


#------------- Question 8 -----------#

gp8 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
gp8.1 <- ggroup(container = gp8, spacing = 2, pos = 0, horizontal = TRUE)
q <- glabel("8) ", container = gp8.1, horizontal = TRUE)
font(q) <- list(weight = "bold")
qq <- glabel("In a plant growth experiment, I have three watering treatments and two nutrient treatments.\nHow many total treatment combinations do I have?", container = gp8.1, anchor = c(-1,1))
font(qq) <- list(family = "cambria", size = 11)

ans8 <- c("(a)     5", 
          "(b)     2",
          "(c)     6",
          "(d)     Impossible to say.")


f8 <- function(h,....){
  if(tail(svalue(r8),1) == ans8[1]){
    gmessage(msg="Incorrect",  icon = "error")
  }
  if(tail(svalue(r8),1)== ans8[2]){
    gmessage(msg="Incorrect", icon = "error")
  }
  if(tail(svalue(r8),1)== ans8[3]){
    gmessage(msg="Correct")
  }
  if(tail(svalue(r8),1)== ans8[4]){
    gmessage(msg="Incorrect", icon = "error")
  }
  svalue(r8) <- character(0)  
}

r8 <- gcheckboxgroup(ans8, container = gp8, checked = FALSE, where = "beginning", handler = f8)

#------------- Question 9 -----------#

gp9 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
gp9.1 <- ggroup(container = gp9, spacing = 2, pos = 0, horizontal = TRUE)
q <- glabel("9) ", container = gp9.1, horizontal = TRUE)
font(q) <- list(weight = "bold")
qq <- glabel("5 choose 3 = ", container = gp9.1, anchor = c(-1,1))
font(qq) <- list(family = "cambria", size = 11)

ans9 <- c("(a)     10", 
          "(b)     5",
          "(c)     3",
          "(d)     1")


f9 <- function(h,....){
  if(tail(svalue(r9),1) == ans9[1]){
    gmessage(msg="Correct")
  }
  if(tail(svalue(r9),1)== ans9[2]){
    gmessage(msg="Incorrect", icon = "error")
  }
  if(tail(svalue(r9),1)== ans9[3]){
    gmessage(msg="Incorrect", icon = "error")
  }
  if(tail(svalue(r9),1)== ans9[4]){
    gmessage(msg="Incorrect", icon = "error")
  }
  svalue(r8) <- character(0)  
}

r9 <- gcheckboxgroup(ans9, container = gp9, checked = FALSE, where = "beginning", handler = f9)



#------------- Question 10 -----------#

gp10 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
gp10.1 <- ggroup(container = gp10, spacing = 2, pos = 0, horizontal = TRUE)
q <- glabel("10) ", container = gp10.1, horizontal = TRUE)
font(q) <- list(weight = "bold")
qq <- glabel("Which equation defines Bayes rule?", container = gp10.1, anchor = c(-1,1))
font(qq) <- list(family = "cambria", size = 11)

ans10 <- c("(a)     P(data|\u03B8) = P(\u03B8|data)P(\u03B8)/P(data).", 
          "(b)     P(\u03B8|data) = P(data|\u03B8)P(\u03B8)/P(data).",
          "(c)     P(\u03B8) = P(data|\u03B8)P(\u03B8|data)/P(data).",
          "(d)     P(data) = P(data|\u03B8)P(\u03B8|data)/P(\u03B8).")


f10 <- function(h,....){
  if(tail(svalue(r10),1) == ans10[1]){
    gmessage(msg="Incorrect",  icon = "error")
  }
  if(tail(svalue(r10),1)== ans10[2]){
    gmessage(msg="Correct")
  }
  if(tail(svalue(r10),1)== ans10[3]){
    gmessage(msg="Incorrect", icon = "error")
  }
  if(tail(svalue(r10),1)== ans10[4]){
    gmessage(msg="Incorrect", icon = "error")
  }
  svalue(r10) <- character(0)  
}

r10 <- gcheckboxgroup(ans10, container = gp10, checked = FALSE, where = "beginning", handler = f10)


}


