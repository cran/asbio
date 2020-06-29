selftest.regdiag.tck1 <-function(){
  options(guiToolkit="tcltk")
  w <- gwindow(title = "Regression assumptions and diagnostics")
  size(w) <- c(700, 650)
  g <- ggroup(container=w, horizontal=FALSE, use.scrollwindow = TRUE)
 
  
  #------------- Question 1 -----------#
  
  gp1 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp1.1 <- ggroup(container = gp1, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("1) ", container = gp1.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("For general linear regression models, we assume...", container = gp1.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  # addSpace(gp1, .5, horizontal=FALSE)
  
  ans1 <- c("(a) Y\u1d62 ~ N(\u03bc, \u03c3\u00b2).",
            "(b) X\u1d62 ~ N(\u03bc, \u03c3\u00b2), for all predictors.",
            "(c) \u03b5\u1d62 ~ N(\u03bc, \u03c3\u00b2).",
            "(d) All of the above.")
  
  f1 <- function(h,....){
    if(tail(svalue(r1),1) == ans1[1]){
      gmessage(msg="Incorrect",  icon = "error")
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
  qq <- glabel("The diagnostic plot below indicates problems with...", container = gp2.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  
  # addSpace(gp2, .1, horizontal=FALSE)
  Fits <- rep(1:20,2)
  Residuals <- rnorm(40, 0, sd=Fits)
  gp2.1 <- getWidget(gp2)
  img <- tkrplot(gp2.1, function(){ 
    par(bg = "white", mar = c(4.5,4.1,1,1))
    plot(Fits, Residuals, xlab = "Fitted value", ylab = "Residual",
         cex.lab =.9)
    abline(h = 0, lty = 2, col = 2)
  }
  )
  add(gp2, img, horizontal=TRUE)
  # addSpace(gp2, .1, horizontal=FALSE)
  ans2 <- c("(a) non-normality.",
            "(b) heteroscedasticy.",
            "(c) non-linearity.",
            "(d) non-independence.",
            "(e) outliers."
            )
  
  f2 <- function(h,....){
    if(tail(svalue(r2),1) == ans2[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[2]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r2),1)== ans2[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r2),1)== ans2[5]){
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
  qq <- glabel("The diagnostic plot below most strongly indicates problems with...", container = gp3.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  # addSpace(gp3, .1, horizontal=FALSE)
  x <- c(0.08, 0.92, 1.01, 1.1,  0.57, 0.11, 2.44, 0.88, 0.93, 1.21, 4.01, 2.78, 0.65, 2.45, 0.9,  2.58, 0.76, 0.05, 0.43, 0.42, 0.45, 0.56, 0.03, 0.83, 3.43, 0.06, 0.7,  0.02, 1.97, 0.37, 2.19, 2.8,  0.55, 1.02, 0.46, 0.37, 1.36, 1.14, 0.72, 0.01,
2.54, 1.88, 0.6,  1.12, 0.68, 0.66, 0.16, 0.28, 0.54, 0.41, 0.04, 0.37, 0.44, 0.54, 0.88, 0.43, 1.26, 0.86, 0.04, 2.29)
  gp3.1 <- getWidget(gp3)
  img <- tkrplot(gp3.1, function(){ 
    par(bg = "white", mar = c(4.5,4.1,1,1))
    qqnorm(x, cex.lab =.9, main = "")
    qqline(x, col = 2, lty = 2)
  }
  )
  add(gp3, img)
  # addSpace(gp3, .1, horizontal=FALSE)
  ans3 <- c("(a) non-normality.",
            "(b) heteroscedasticy.",
            "(c) non-linearity.",
            "(d) non-independence.",
            "(e) outliers.")
  
  f3 <- function(h,....){
    if(tail(svalue(r3),1) == ans3[1]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r3),1)== ans3[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r3),1)== ans3[5]){
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
  qq <- glabel("The plot below most strongly indicates problems with...", container = gp4.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  # addSpace(gp4, .1, horizontal=FALSE)
  x <- 1:20
  y <- 3*x +rnorm(20,sd = 2)
  y[17] <- 10; y[19] <- 8
  gp4.1 <- getWidget(gp4)
  img <- tkrplot(gp4.1, function(){ 
    par(bg = "white", mar = c(4.5,4.1,1,1))
    plot(x, y, xlab = expression(paste("Soil N", O[3], sep ="")),
         ylab = "Plant aboveground biomass (g)", pch = 19,
         cex.lab = .9)
  }
  )
  add(gp4, img)
  # addSpace(gp4, .1, horizontal=FALSE)
  ans4 <- c("(a) non-normality.",
            "(b) heteroscedasticy.",
            "(c) non-linearity.",
            "(d) non-independence.",
            "(e) outliers.")
  
  f4 <- function(h,....){
    if(tail(svalue(r4),1) == ans4[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r4),1)== ans4[5]){
      gmessage(msg="Correct")
    }
    svalue(r4) <- character(0)
  }
  
  r4 <- gcheckboxgroup(ans4, container = gp4, checked = FALSE, where = "beginning", handler = f4)
  

  
 
  #------------- Question 5 -----------#
  
  gp5 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp5.1 <- ggroup(container = gp5, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("5) ", container = gp5.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("The diagnostic plot below indicates problems with...", container = gp5.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  # addSpace(gp5, .1, horizontal=FALSE)
  Fits <- rep(1:20,2)
  Residuals <- rnorm(40, 0, sd=Fits)
  gp5.1 <- getWidget(gp5)
  img <- tkrplot(gp5.1, function(){ 
    par(bg = "white", mar = c(4.5,4.1,1,1))
    plot(Fits, Residuals, xlab = "Order that data were collected", ylab = "Residual",
         cex.lab =.9)
    abline(h = 0, lty = 2, col = 2)
  }
  )
  add(gp5, img, horizontal=TRUE)
  # addSpace(gp5, .1, horizontal=FALSE)
  ans5 <- c("(a) non-normality.",
            "(b) heteroscedasticy.",
            "(c) non-linearity.",
            "(d) non-independence.",
            "(e) outliers."
  )
  f5 <- function(h,....){
    if(tail(svalue(r5),1) == ans5[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[3]){
      gmessage(msg="Incorrect", icon = "error")
    }
    if(tail(svalue(r5),1)== ans5[4]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r5),1)== ans5[5]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r5) <- character(0)
  } 
  
  
  
  r5 <- gcheckboxgroup(ans5, container = gp5, checked = FALSE, where = "beginning", handler = f5)
  

  
  #------------- Question 6 -----------#
  
  gp6 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp6.1 <- ggroup(container = gp6, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("6) ", container = gp6.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("The plot of data below indicate potential problems with...", container = gp6.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  # addSpace(gp6, .1, horizontal=FALSE)
  substrate <- c(0.01, 2.50, 5.00,10.00,20.00,30.00,40.00,60.00,90.00,120.00)
  rate <-c(0.373633,7.033800,12.840830,18.355000,23.471830,31.429080,28.827680,34.361570,38.074800,38.166300)

  gp6.1 <- getWidget(gp6)
  img <- tkrplot(gp6.1, function(){ 
    par(bg = "white", mar = c(4.5,4.1,1,1))
    plot(substrate, rate, xlab = expression(paste("Substrate (", mu,"mols)", sep = "")),
                                                               , ylab = expression(paste("Lipid breakdown (nmol/mg enzyme)",sep = "")) ,cex.lab =.9)
  }
  )
  add(gp6, img, horizontal=TRUE)
  # addSpace(gp6, .1, horizontal=FALSE)
  ans6 <- c("(a) non-normality.",
            "(b) heteroscedasticy.",
            "(c) non-linearity.",
            "(d) non-independence.",
            "(e) outliers."
  )
  
  
  f6 <- function(h,....){
    if(tail(svalue(r6),1) == ans6[1]){
      gmessage(msg="Incorrect",  icon = "error")
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
    if(tail(svalue(r6),1)== ans6[5]){
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
  qq <- glabel("Cook's distance...", container = gp7.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  # addSpace(gp7, .5, horizontal=FALSE)
  
  ans7 <- c("(a) quantifies how unusual a point is in predictor space.",
            "(b) quantifies the influence of a point on the regression model.",
            "(c) quantifies multicollinearity among predictors.",
            "(d) quantifies the explanatory power of linear models.")
  
  f7 <- function(h,....){
    if(tail(svalue(r7),1) == ans7[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r7),1)== ans7[2]){
      gmessage(msg="Correct")
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
  qq <- glabel("Leverage...", container = gp8.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  # addSpace(gp8, .5, horizontal=FALSE)
  
  
  ans8 <-  c("(a) quantifies how unusual a point is in predictor space.",
             "(b) quantifies the influence of a point on the regression model.",
             "(c) quantifies multicollinearity among predictors.",
             "(d) quantifies the explanatory power of linear models.")
  
  
  f8 <- function(h,....){
    if(tail(svalue(r8),1) == ans8[1]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r8),1)== ans8[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r8),1)== ans8[3]){
      gmessage(msg="Incorrect", icon = "error")
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
  qq <- glabel("A Variance Inflation Factor (VIF)...", container = gp9.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  # addSpace(gp9, .5, horizontal=FALSE)
  ans9 <- c("(a) quantifies how unusual a point is in predictor space.",
            "(b) quantifies the influence of a point on the regression model.",
            "(c) quantifies multicollinearity among predictors.",
            "(d) quantifies the explanatory power of linear models.")
  

  f9 <- function(h,....){
    if(tail(svalue(r9),1) == ans9[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r9),1)== ans9[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r9),1)== ans9[3]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r9),1)== ans9[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r9) <- character(0)
  }
  
    
  r9 <- gcheckboxgroup(ans9, container = gp9, checked = FALSE, where = "beginning", handler = f9)
  
  

  
  #------------- Question 10 -----------#
  gp10 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp10.1 <- ggroup(container = gp10, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("10) ", container = gp10.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("We use the Box-Tidwell procedure to obtain optimal power transformation(s)...", container = gp10.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
  # addSpace(gp10, .5, horizontal=FALSE)
  ans10 <- c("(a) of predictor variables to correct non-linearity under homoscedasticity.",
            "(b) of the response variable to correct non-linearity under heteroscedasticity.",
            "(c) of residuals to correct non-linearity under homoscedasticity.",
            "(d) of residuals to correct non-linearity under heteroscedasticity.")
  
  
  f10 <- function(h,....){
    if(tail(svalue(r10),1) == ans10[1]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r10),1)== ans10[2]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r10),1)== ans10[3]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r10),1)== ans10[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r10) <- character(0)
  }
  
    r10 <- gcheckboxgroup(ans10, container = gp10, checked = FALSE, where = "beginning", handler = f10)
  
  
  
  #------------- Question 11 -----------#
  gp11 <- gframe(container = g, spacing = 2, pos = 0, horizontal = FALSE)
  gp11.1 <- ggroup(container = gp11, spacing = 2, pos = 0, horizontal = TRUE)
  q <- glabel("11) ", container = gp11.1, horizontal = TRUE)
  font(q) <- list(weight = "bold")
  qq <- glabel("We use the Box-Cox procedure to obtain optimal power transformation(s)...", container = gp11.1, anchor = c(-1,1))
  font(qq) <- list(family = "cambria", size = 11)
  
   # addSpace(gp11, .5, horizontal=FALSE)
  ans11 <- c("(a) of predictor variables to correct non-linearity under homoscedasticity.",
             "(b) of the response variable to correct non-linearity under heteroscedasticity.",
             "(c) of residuals to correct non-linearity under homoscedasticity.",
             "(d) of residuals to correct non-linearity under heteroscedasticity.")
  
  f11 <- function(h,....){
    if(tail(svalue(r11),1) == ans11[1]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r11),1)== ans11[2]){
      gmessage(msg="Correct")
    }
    if(tail(svalue(r11),1)== ans11[3]){
      gmessage(msg="Incorrect",  icon = "error")
    }
    if(tail(svalue(r11),1)== ans11[4]){
      gmessage(msg="Incorrect", icon = "error")
    }
    svalue(r11) <- character(0)
  }

  
    r11 <- gcheckboxgroup(ans11, container = gp11, checked = FALSE, where = "beginning", handler = f11)
  
  


   }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 