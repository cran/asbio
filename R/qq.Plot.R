qq.Plot <- function(y, x = NULL, col = 1, pch = 1, main = "", R = 5000, fit.lty = 1, env.lty = 2, conf = 0.95, type = "point", ylim = NULL, xlab = "Normal quantiles", ylab = "Studentized observed quantiles", ...){
boot <- NA; rm(boot)
envelope <- NA; rm(envelope)
require(boot)

boot.envel<- function(y){
z <- (y - mean(y))/sqrt(var(y))
gen <- function(dat, mle) rnorm(length(dat))
qqboot <- boot(z, sort, R = 999, sim = "parametric", ran.gen = gen)
qq <- qqnorm(z, plot.it = FALSE)
qq <- lapply(qq, sort)
env <- envelope(qqboot, level = conf)
res <- list()
res$x <- qq$x
res$y <- qq$y
if(type == "overall"){
res$ub <- env$overall[1,] 
res$lb <- env$overall[2,]
} 
if(type == "point"){
res$ub <- env$point[1,] 
res$lb <- env$point[2,]
} 
res
}

if(is.null(x)){
br <- boot.envel(y)
l <- lm(br$y ~ br$x)
if(!is.null(ylim))  ylim <-  c(min(br$lb), max(br$ub))
plot(br$x, br$y, ylim = , ylab = ylab,  xlab = xlab, ...)
abline(coef(l)[1],coef(l)[2], lty = fit.lty, col = col)
lines(br$x, br$lb, col = col, lty = env.lty)
lines(br$x, br$ub, col = col, lty = env.lty)
} 
else{
x <- factor(x)
nlev <- nlevels(x)
levels <- levels(x)

if(length(col) == 1 & length(pch) == 1){
col <- 1:nlev
pch <- 1:nlev
}

y1 <- y[x == levels[1]]
br <- boot.envel(y1)
l <- lm(br$y ~ br$x)
if(!is.null(ylim))  ylim <-  c(min(br$lb), max(br$ub))
plot(br$x, br$y, ylim =  ylim, ylab = ylab,  xlab = xlab, pch = pch[1], ...)
abline(coef(l)[1],coef(l)[2], lty = fit.lty, col = col[1])
lines(br$x, br$lb, col = col[1], lty = env.lty)
lines(br$x, br$ub, col = col[1], lty = env.lty)

for(i in 2 : nlev){
y.temp <- y[x == levels[i]]
br <- boot.envel(y.temp)
l <- lm(br$y ~ br$x)
abline(coef(l)[1],coef(l)[2], lty = fit.lty, col = col[i])
points(br$x, br$y, col = col[i], pch = pch[i])
lines(br$x, br$lb, col = col[i], lty = env.lty)
lines(br$x, br$ub, col = col[i], lty = env.lty)
}
legend("topleft", pch = pch, col = col, legend = levels, bg = "white")
}
}


