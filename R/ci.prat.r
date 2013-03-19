ci.prat <- function(x, m, y, n, conf = 0.95, method = "log", bonf = FALSE){

r <- length(x)
if(any(c(length(m),length(y),length(n))!=r)) stop("x, m, y, and n vectors must have equal length")


if(bonf == TRUE){
    z.star <- qnorm(1 - (1 - conf)/(2 * r))
    x2 <- qchisq(1- ((1- conf)/r), 1) 
    }
else { 
    z.star <- qnorm(1 - (1 - conf)/2)
    x2 <- qchisq(conf, 1)
    }
     
ci.prat1 <- function(x, m, y, n, conf = 0.95, method = "log", bonf = FALSE){

if((x > m)|(y > n)) stop("Use correct parameterization for x, y, n, and m")
if(method == "log"){
    if((x == 0 & y == 0)|(x == 0 & y != 0)|(x != 0 & y == 0)|(x == m & y == n)){
    if(x == 0 & y == 0) {CIL <- 0;  CIU <- Inf; rat = 0}
    if(x == 0 & y != 0) {CIL <- 0;  x <- 0.5
    rat <- (x/m)/(y/n); varhat <- (1/x) - (1/m) + (1/y) - (1/n)
    CIU <- rat * exp(z.star * sqrt(varhat))}
    if(x != 0 & y == 0) {CIU <- Inf;  y <- 0.5
    rat <- (x/m)/(y/n); varhat <- (1/x) - (1/m) + (1/y) - (1/n)
    CIL <- rat * exp(-1 * z.star * sqrt(varhat))}
    if(x == m & y == n) {
       rat <- (x/m)/(y/n); x <- m - 0.5; y <- n - 0.5; nrat <- (x/m)/(y/n); varhat <- (1/x) - (1/m) + (1/y) - (1/n); CIL <- nrat * exp(-1 * z.star * sqrt(varhat))
       x <- m - 0.5; y <- n - 0.5; nrat <- (x/m)/(y/n); varhat <- (1/x) - (1/m) + (1/y) - (1/n); CIU <- nrat * exp(z.star * sqrt(varhat))
       }
    }
    else
    {rat <- (x/m)/(y/n); varhat <- (1/x) - (1/m) + (1/y) - (1/n)
     CIL <- rat * exp(-1 * z.star * sqrt(varhat)); CIU <- rat * exp(z.star * sqrt(varhat))}
CI <- c(rat, CIL, CIU)
}

if(method == "chisq"){
    if((x == 0 & y == 0)|(x == 0 & y != 0)|(x != 0 & y == 0)){
    if(x == 0 & y == 0) {CIL <- 0;  CIU <- Inf; rat = 0}
    if(x == 0 & y != 0) {CIL <- 0;  x <- 0.5
    rat <- (x/m)/(y/n); varhat <- (1/x) - (1/m) + (1/y) - (1/n)
    CIU <- rat * exp(z.star * sqrt(varhat))}
    if(x != 0 & y == 0) {CIU <- Inf;  y <- 0.5
    rat <- (x/m)/(y/n); varhat <- (1/x) - (1/m) + (1/y) - (1/n)
    CIL <- rat * exp(-1 * z.star * sqrt(varhat))}

      }
     else
     {
        rat <- (x/m)/(y/n); varhat <- (1/x) - (1/m) + (1/y) - (1/n)
        theta.0 <- seq(rat * exp(-1 * z.star * sqrt(varhat)) * 0.5, rat * exp(z.star * sqrt(varhat)) * 2, by = .0001)

        p.hatf <- function(theta.0, m, y, x, n){
        (theta.0 * (m + y) + x + n - ((theta.0 * (m + y) + x + n)^2 - 4 * theta.0 * (m + n) * (x + y))^0.5)/(2 * (m + n))
        }

        U <- function(theta.0, p.hat, m, n, x){
        if(x == m & y == n){
            lt <- theta.0[theta.0 <= 1];  ut <- theta.0[theta.0 >= 1]
            c((m * (1 - lt)/lt), n*(ut - 1))
        }
        else {
        (((x - m * p.hat)^2)/(m * p.hat * (1 - p.hat)))*(1 + (m * (theta.0 - p.hat))/(n * (1 - p.hat)))
        }
        }
        p.0 <- p.hatf(theta.0, m, y, x, n)
        U.0 <- U(theta.0, p.0, m, n, x)
        
        int <- theta.0[U.0 < x2]
        CIL <- min(int); CIU <- max(int)
    }
CI <- c(rat, CIL, CIU)
}
res <- list(CI = CI, varhat = varhat)
res
}

CI <- matrix(ncol = 3, nrow = r)
vh <- seq(1:r)

for(i in 1:r){
temp <- ci.prat1(x = x[i], m = m[i], y = y[i], n = n[i], conf = conf, method = method, bonf = bonf)
CI[i,] <- temp$CI
vh[i] <- temp$varhat
}

CI <- data.frame(CI)
if(r == 1) row.names(CI) <- ""
head <- paste(paste(as.character(conf*100),"%",sep=""), c("Confidence interval for ratio of binomial proportions"))
if(method == "log")head <- paste(head,"(method=log)")
if(method == "chisq")head <- paste(head,"(method=chi-squared)")
if(bonf == TRUE)head <- paste(head, "\n Bonferroni simultaneous intervals, r = ", bquote(.(r)), sep = "") 

ends <- c("Estimate",paste(as.character(c((1-conf)/2,1-((1-conf)/2))*100),"%", sep=""))
res <- list(varhat = vh, ci = CI, ends = ends, head = head)
class(res) <- "ci"
res
}