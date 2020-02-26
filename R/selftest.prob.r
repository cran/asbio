selftest.prob.tck <- function(){
options(guiToolkit="tcltk")
w <- gwindow(title = "Probability")
size(w) <- c(700, 600)
g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
q1 <- gexpandgroup("Question 1", container=g, anchor=c(-1,1))
q2 <- gexpandgroup("Question 2", container=g, anchor=c(-1,1))
q3 <- gexpandgroup("Question 3", container=g, anchor=c(-1,1))
q4 <- gexpandgroup("Question 4", container=g, anchor=c(-1,1))
q5 <- gexpandgroup("Question 5", container=g, anchor=c(-1,1))
q6 <- gexpandgroup("Question 6", container=g, anchor=c(-1,1))
q7 <- gexpandgroup("Question 7", container=g, anchor=c(-1,1))
q8 <- gexpandgroup("Question 8", container=g, anchor=c(-1,1))

visible(q2) <- FALSE

#------------- Question 1 -----------#
gp1 <- ggroup(container = q1, spacing = 2, pos = 0, horizontal = TRUE)
glabel("If P(A) = 0.2, P(B) = 0.4, P(A\u2229B) = 0.08, then A and B are disjoint.", container = q1, anchor=c(-1,1))
ans1 <- c("True", 
       "False")
addSpace(gp1, .5, horizontal=FALSE)
r1 <- gcheckboxgroup(ans1, container = gp1, checked = FALSE, where = "beginning")


addhandlerclicked(r1, handler = function(h,....){
    if(tail(svalue(r1),1) == ans1[1]){
        gmessage(message = "Incorrect. The probability of the intersection of A and B does not = 0.", icon = "error")
        }
    if(tail(svalue(r1),1)== ans1[2]){gmessage(message="Correct")
        }
    svalue(r1) <- character(0)  
        })

#------------- Question 2 -----------#

gp2 <- ggroup(container = q2, spacing = 2, pos = 0, horizontal = TRUE)
glabel("If P(A) = 0.2, P(B) = 0.4, P(A\u2229B) = 0.08, then A and B are independent.", container = q2, anchor=c(-1,1))
ans2 <- c("True", 
          "False")
addSpace(gp2, .5, horizontal=FALSE)
r2 <- gcheckboxgroup(ans2, container = gp2, checked = FALSE, where = "beginning")


addhandlerclicked(r2, handler = function(h,....){
    if(tail(svalue(r2),1) == ans2[1]){
        gmessage(message="Correct. The probability of the intersection of A and B = P(A)P(B).")
    }
    if(tail(svalue(r2),1)== ans2[2]){ gmessage(message="Inorrect.  A and B are independent because the probability of the union of A and B  = P(A)P(B).", icon = "error")
    }
    svalue(r2) <- character(0)  
})

#------------- Question 3 -----------#

gp3 <- ggroup(container = q3, spacing = 2, pos = 0, horizontal = FALSE)
glabel("If P(A) = 0.2, P(B) = 0.4, P(A|B) = 0.2, then A and B are independent.", container = q3, anchor=c(-1,1))
ans3 <- c("True", 
          "False")
addSpace(gp3, .5, horizontal=FALSE)
r3 <- gcheckboxgroup(ans3, container = gp3, checked = FALSE, where = "beginning")


addhandlerclicked(r3, handler = function(h,....){
    if(tail(svalue(r3),1) == ans3[1]){
        gmessage(message="Correct. P(A|B) = P(A).")
    }
    if(tail(svalue(r3),1)== ans3[2]){
        gmessage(message="Inorrect.  A and B are independent because P(A|B) = P(A)", icon = "error")
    }
    svalue(r3) <- character(0)  
})

#------------- Question 4 -----------#

gp4 <- ggroup(container = q4, spacing = 2, pos = 0, horizontal = FALSE)
glabel("You would use the Bonferroni inequality to:", container = gp4, anchor = c(-1,1))
addSpace(gp4, .5, horizontal=FALSE)
ans4 <- c("(a)  Establish the upper bound to the probability of a union of events.", 
          "(b)  Establish the lower bound to the probability of a union of events.",
          "(c)  Establish the lower bound to the probability of an intersection of events.",
          "(d)  Establish the average probability of events.")

r4 <- gcheckboxgroup(ans4, container = gp4, checked = FALSE, where = "beginning")


addhandlerclicked(r4, handler = function(h,....){
    if(tail(svalue(r4),1) == ans4[1]){
        gmessage(message="Incorrect.  This describes Boole's inequality.", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[2]){
        gmessage(message="Inorrect", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[3]){
        gmessage(message="Correct")
    }
    if(tail(svalue(r4),1)== ans4[4]){
        gmessage(message="Inorrect", icon = "error")
    }
    svalue(r4) <- character(0)  
})


#------------- Question 5 -----------#

gp5 <- ggroup(container = q5, spacing = 2, pos = 0, horizontal = FALSE)
glabel("If P(A) > 0.5, then", container = gp5, anchor = c(-1,1))
addSpace(gp5, .5, horizontal=FALSE)
ans5 <- c("(a)    -1 \u2264 \u2126(A) < 0", 
          "(b)    1 < \u2126(A) < \u221E",
          "(c)    0 > \u2126(A) > 1",
          "(d)    0 \u2264 \u2126(A) < \u221E")

r5 <- gcheckboxgroup(ans5, container = gp5, checked = FALSE, where = "beginning")


addhandlerclicked(r5, handler = function(h,....){
    if(tail(svalue(r5),1) == ans5[1]){
        gmessage(message="Incorrect.  Odds must be greater than 0.", icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[2]){
        gmessage(message="Correct")
    }
    if(tail(svalue(r5),1)== ans5[3]){
        gmessage(message="Incorrect.  These are discontinuous intervals.", icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[4]){
        gmessage(message="Inorrect.  This encompasses all possible outcomes for the odds of A, not P(A) > 0.5.", icon = "error")
    }
    svalue(r5) <- character(0)  
})


#------------- Question 6 -----------#

gp6 <- ggroup(container = q6, spacing = 2, pos = 0, horizontal = FALSE)
glabel("The binomial coefficeint, i.e., n choose r, is equivelent to:", container = gp6, anchor = c(-1,1))
addSpace(gp6, .5, horizontal=FALSE)
ans6 <- c("(a)     n!/(n-r)!", 
          "(b)     r!/n!(n-r)!",
          "(c)     n!/r!(n-r)!",
          "(d)     n!/r!")

r6 <- gcheckboxgroup(ans6, container = gp6, checked = FALSE, where = "beginning")


addhandlerclicked(r6, handler = function(h,....){
    if(tail(svalue(r6),1) == ans6[1]){
        gmessage(message="Incorrect.  This describes Boole's inequality.", icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[2]){
        gmessage(message="Inorrect", icon = "error")
    }
    if(tail(svalue(r6),1)== ans6[3]){
        gmessage(message="Correct")
    }
    if(tail(svalue(r6),1)== ans6[4]){
        gmessage(message="Inorrect", icon = "error")
    }
    svalue(r6) <- character(0)  
})

#------------- Question 7 -----------#

gp7 <- ggroup(container = q7, spacing = 2, pos = 0, horizontal = FALSE)
glabel("How many ''permutations'' are possible for five distinguishible objects?", container = gp7, anchor = c(-1,1))
addSpace(gp7, .5, horizontal=FALSE)
ans7 <- c("(a)     120", 
          "(b)     150",
          "(c)     10",
          "(d)     5")

r7 <- gcheckboxgroup(ans7, container = gp7, checked = FALSE, where = "beginning")


addhandlerclicked(r7, handler = function(h,....){
    if(tail(svalue(r7),1) == ans7[1]){
        gmessage(message="Correct.  This is is equivelmnt to 5!.")
    }
    if(tail(svalue(r7),1)== ans7[2]){
        gmessage(message="Inorrect", icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[3]){
        gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[4]){
        gmessage(message="Inorrect", icon = "error")
    }
    svalue(r7) <- character(0)  
})

#------------- Question 8 -----------#

gp8 <- ggroup(container = q8, spacing = 2, pos = 0, horizontal = FALSE)
glabel("Which equation defines Bayes rule?", container = gp8, anchor = c(-1,1))
addSpace(gp8, .5, horizontal=FALSE)
ans8 <- c("(a)     P(data|\u03B8) = P(\u03B8|data)P(\u03B8)/P(data).", 
          "(b)     P(\u03B8|data) = P(data|\u03B8)P(\u03B8)/P(data).",
          "(c)     P(\u03B8) = P(data|\u03B8)P(\u03B8|data)/P(data).",
          "(d)     P(data) = P(data|\u03B8)P(\u03B8|data)/P(\u03B8).")

r8 <- gcheckboxgroup(ans8, container = gp8, checked = FALSE, where = "beginning")


addhandlerclicked(r8, handler = function(h,....){
    if(tail(svalue(r8),1) == ans8[1]){
        gmessage(message="Incorrect",  icon = "error")
    }
    if(tail(svalue(r8),1)== ans8[2]){
        gmessage(message="Correct")
    }
    if(tail(svalue(r8),1)== ans8[3]){
        gmessage(message="Incorrect", icon = "error")
    }
    if(tail(svalue(r8),1)== ans8[4]){
        gmessage(message="Inorrect", icon = "error")
    }
    svalue(r8) <- character(0)  
})
}


