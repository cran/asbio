ci.prat.ak <- function(y1, n1 , pi2 = NULL, method = "fixed", conf = .95, bonf = TRUE){
r <- length(y1)
alpha = 1 - conf
z.star <- qnorm(1-(alpha/2))

indices <- c("ac", "wald", "fixed")
    method <- match.arg(method, indices)

   if (any(c(length(y1), length(n1)) != r)) stop("y1 and n1 must have equal length")
   if(any(n1 - y1 < 0)) stop("n1 cannot be less than y1")
   if (bonf == TRUE) z.star <- qnorm(1 - (alpha/(2 * r)))

ci.prat.ak1 <- function(y1, n1, pi2 = NULL, method = "fixed", conf = .95, bonf = TRUE){

#--------------- Manly/Wald ---------------#

   if(method == "wald"){
    if((y1 == 0 & pi2 == 0)|(y1 == 0 & pi2 != 0)|(y1 != 0 & pi2 == 0)|(y1 == n1)){
    if(y1 == 0 & pi2 == 0) {CIL <- 0;  CIU <- Inf; rat = 0; varhat = NA}
    if(y1 == 0 & pi2 != 0) {CIL <- 0;  rat <- (y1/n1)/pi2
	yn1 <- 0.5; pihn1 <- yn1/n1; nrat <- (yn1/n1)/pi2
    	varhat <- (pihn1 * (1 - pihn1))/(n1 * pi2^2)
    	CIU <- nrat + (z.star * sqrt(varhat))}
    if(pi2 == 0 & y1 != 0) {CIU <- Inf;  pih1 <- y1/n1; rat <- pih1/pi2; pin2 <- 0.5*(1/n1); nrat <- (y1/n1)/pin2;
    	varhat <- (pih1 * (1 - pih1))/(n1 * pin2^2);
    	CIL <- nrat - (z.star * sqrt(varhat))}
    if(pi2 == 1 & y1 == n1) {
     rat <- 1; yn1 <- n1 - 0.5; pin2 =(.95*n1)/n1; pihn1 <- yn1/n1; nrat <- pihn1/pin2; varhat <- (pihn1 * (1 - pihn1))/(n1 * pin2^2); CIL <- nrat - (z.star * sqrt(varhat)); CIU <- nrat + (z.star * sqrt(varhat))
       }
    } else
	{pih1 <- y1/n1
	rat <- pih1/pi2
	varhat <- (pih1 * (1 - pih1))/(n1 * pi2^2)
	CIL <- rat - (z.star*sqrt(varhat))
	CIU <- rat + (z.star*sqrt(varhat))
	}
	CIL <- ifelse(CIL < 0, 0, CIL)
	CI <- c(rat, CIL, CIU)
	}

#------------------fixed-log--------------------# For testing consideration only

   if(method == "fixed"){
    if((y1 == 0 & pi2 == 0)|(y1 == 0 & pi2 != 0)|(y1 != 0 & pi2 == 0)|(y1 == n1)){
    if(y1 == 0 & pi2 == 0) {CIL <- 0;  CIU <- Inf; rat = 0; varhat = NA}
    if(y1 == 0 & pi2 != 0) {CIL <- 0;  rat <- (y1/n1)/pi2
	yn1 <- 0.5; pihn1 <- yn1/n1; nrat <- (yn1/n1)/pi2
    	varhat <- ((1 - pihn1))/(n1 * pi2)
    	CIU <- nrat * exp(z.star * sqrt(varhat))}
    if(pi2 == 0 & y1 != 0) {CIU <- Inf;  pih1 <- y1/n1; rat <- pih1/pi2; pin2 <- 0.5*(1/n1); nrat <- (y1/n1)/pin2;
    	varhat <- varhat <- ((1 - pih1))/(n1 * pin2);
    	CIL <- nrat * exp(-z.star * sqrt(varhat))}
    if(pi2 == 1 & y1 == n1) {
     rat <- 1; yn1 <- n1 - 0.5; pin2 =(.95*n1)/n1; pihn1 <- yn1/n1; nrat <- pihn1/pin2; varhat <- ((1 - pihn1))/(n1 * pin2); CIL <- nrat *exp(- z.star * sqrt(varhat)); CIU <- nrat * exp(z.star * sqrt(varhat))
       }
    } else
     {pih1 <- y1/n1
	rat <- pih1/pi2
	varhat <- (1 - pih1)/(n1 * pih1)
	CIL <- rat * exp(-z.star*sqrt(varhat))
	CIU <- rat * exp(z.star*sqrt(varhat))
	}
	CIL <- ifelse(CIL < 0, 0, CIL)
	CI <- c(rat, CIL, CIU)
	}

#------------------Agresti-Coull--------------------#

   if(method == "ac"){
	y1 <- y1 + 2; n1 <- n1 + 4
	if((pi2 == 0)|(pi2 == 1 & y1 == n1)){
      if(pi2 == 0) {CIU <- Inf;  pih1 <- y1/n1; rat <- pih1/pi2; pin2 <- 0.5*(1/n1); nrat <- (y1/n1)/pin2
    	   varhat <- (pih1 * (1 - pih1))/((n1) *  pin2^2);
    	   CIL <- nrat - (z.star * sqrt(varhat))}
      if(pi2 == 1 & y1 == n1) {
        rat <- 1; yn1 <- n1 - 0.5; pin2 =(.95*n1)/n1; pihn1 <- yn1/n1; nrat <- pihn1/pin2; varhat <- (pihn1 * (1 - pihn1))/((n1) * pin2^2); CIL <- nrat - (z.star * sqrt(varhat)); CIU <- nrat + (z.star * sqrt(varhat))
       }
	} else
	{pih1 <- y1/n1
	rat <- pih1/pi2
	varhat <- pih1 *(1 - pih1)/((n1) * pi2^2)
	CIL <- rat - (z.star*sqrt(varhat))
	CIU <- rat + (z.star*sqrt(varhat))
	}
	CIL <- ifelse(CIL < 0, 0, CIL)
	CI <- c(rat, CIL, CIU)
	}
res <- list(CI = CI, varhat = varhat)
res
}
    CI <- matrix(ncol = 3, nrow = r)
    vh <- rep(NA, r)
    for (i in 1:r) {
       temp <- ci.prat.ak1(y1 = y1[i], n1 = n1[i], pi2 = pi2[i], conf = conf, method = method, bonf = bonf)
       CI[i,] <- temp$CI
       vh[i] <- temp$varhat
	}

CI <- data.frame(CI)

   if (r == 1){
	row.names(CI) <- ""
	}

head <- paste(paste(as.character(conf * 100), "%", sep = ""), c("Confidence interval for ratio of binomial proportions"))

   if (method == "fixed")  head <- paste(head, "(method=fixed-log)")
   if (method == "wald") head <- paste(head, "(method=Wald-adjusted)")
   if(method == "ac") head <- paste(head, "(method=AC-adjusted)")
   if (bonf == TRUE) head <- paste(head, "\n Bonferroni simultaneous intervals, r = ", bquote(.(r)), sep = "")

ends <- c("Estimate", paste(as.character(c((1 - conf)/2, 1 - ((1 - conf)/2)) * 100), "%", sep = ""))
res <- list(varhat = vh, ci = CI, ends = ends, head = head)
class(res) <- "ci"
res
}
