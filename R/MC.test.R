MC.test <- function (Y, X, perm = 1000, alternative = "not.equal", paired = FALSE) 
{
    
    X <- factor(X)
    levelsX <- levels(X)
    if(length(levelsX) != 2) stop("Number of levels in X must = 2")
    if((paired) & (summary(X)[1] != summary(X)[2])) stop("In paired tests, no. obs. in levels must be equal")   
    
    init <- function(Y, X, random = FALSE){
        if(random){ Y <- sample(Y, replace = TRUE)}
        namesY <- paste("Y", levelsX, sep = ".")
        dat <- list(X1 = Y[X == levelsX[1]], X2 = Y[X == levelsX[2]])
        names(dat) <- namesY
        dat
    }
    
    data.i <- init(X = X, Y = Y)
 
     initial <- t.test(data.i[[1]], data.i[[2]], var.equal = TRUE, paired = paired)$statistic
       
perm.results <- matrix(ncol = 1, nrow = perm)
    
for (i in 1:perm) {
    data.r <- init(Y = Y, X = X, random = TRUE)
        perm.results[i] <- t.test(data.r[[1]], data.r[[2]], var.equal = TRUE, paired = paired)$statistic
}

    if (alternative == "less") {
        num <- length(perm.results[perm.results <= initial]) + 
            1
    }
    if (alternative == "greater") {
        num <- length(perm.results[perm.results >= initial]) + 
            1
    }
    if (alternative == "not.equal") {
        pos.init <- abs(initial)
        num <- length(perm.results[perm.results >= pos.init] + 
            1)
    }
    p.value <- num/perm
    num <- num - 1
    
    head <- paste("Monte Carlo t-test \n\nPaired = ", as.character(paired), ", No. perms = ", as.character(perm), "\nAlternative: ", as.character(levelsX[1]), " ", as.character(alternative), " ",  as.character(levelsX[2]), sep = "")  

    ends <- c("Obs. test stat", "  Perms > |test stat|", "P-val")
    res <- list(results = c(initial, num, p.value), ends = ends, 
                head = head)
 
out <-  function (x, digits = max(3, getOption("digits")), ...) {
        cat("\n")
        cat(x$head, "\n\n")
        rq <- structure(x$results, names = x$ends)
        print(rq, digits = digits)
        cat("\n")
        invisible(x)
}

out(res)
       
}
