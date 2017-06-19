\name{rmvm}
\alias{rmvm}
\docType{data}
\title{
A multivariate normal dataset for data mining
}
\description{
Contains a \emph{Y} variable constrained to be a random function of fifteen \emph{X} variables, which, in turn, are generated from a multivariate normal distribution with no correlation between dimensions.   
}

\usage{data("rmvm")}
\format{
  A data frame with 500 observations on the following 16 variables.
  \describe{
    \item{\code{Y}}{A response vector defined to be: \eqn{Y =  X_1 + X_2 + X_3 + X_4 + X_5 + X_6 + X_7 +
X_8 + X_9 + X_{10} + X_{11} + X_{12} + X_{13} + X_{14} + X_{15} + \epsilon} where \eqn{\epsilon \sim N(0, 1)}.}
    \item{\code{X1}}{A random predictor}
    \item{\code{X2}}{A random predictor}
    \item{\code{X3}}{A random predictor}
    \item{\code{X4}}{A random predictor}
    \item{\code{X5}}{A random predictor}
    \item{\code{X6}}{A random predictor}
    \item{\code{X7}}{A random predictor}
    \item{\code{X8}}{A random predictor}
    \item{\code{X9}}{A random predictor}
    \item{\code{X10}}{A random predictor}
    \item{\code{X11}}{A random predictor}
    \item{\code{X12}}{A random predictor}
    \item{\code{X13}}{A random predictor}
    \item{\code{X14}}{A random predictor}
    \item{\code{X15}}{A random predictor}
  }
}
\details{
Data used by Derryberry et al. (in review) to consider high dimensional model selection applications.  
}

\references{
Derryberry, D., Aho, K., Peterson, T., Edwards, J.  (In review).  Finding the "best" second order regression model in a polynomial number of steps.  \emph{American Statistician}.
}
\examples{
## Code used to create data
\dontrun{
sigma <- matrix(nrow = 15, ncol = 15, 0)
diag(sigma) = 1
mvn <- rmvnorm(n=500, mean=rnorm(15), sigma=sigma)
Y <- mvn[,1] + mvn[,2] + mvn[,3] + mvn[,4] + mvn[,4] + mvn[,5] + mvn[,6] + mvn[,7] +
mvn[,8] + mvn[,9] + mvn[,10] + mvn[,11] + mvn[,12] + mvn[,13] + mvn[,14] + mvn[15] + rnorm(500)
rmvm <- data.frame(cbind(Y, mvn))
names(rmvm) <- c("Y", paste("X", 1:15, sep = ""))
}
}
\keyword{datasets}

