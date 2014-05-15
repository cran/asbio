\name{lm.select}
\alias{lm.select}

\title{
AIC, AICc, BIC, Mallow's Cp, and PRESS evaluation of linear models
}
\description{
The function provide model selection summaries using \emph{AIC}, \emph{AICc}, \emph{BIC}, Mallow's \eqn{C_p}, and \emph{PRESS} for a list of objects of class \code{lm} 
}
\usage{

lm.select(lms, deltaAIC = FALSE)
}
\arguments{

 \item{lms}{
A list containing linear models.}
 \item{deltaAIC}{Logical; Should a \eqn{\Delta} \emph{AIC} summary be given with relative likelihoods and Akaike weights?}
}
\note{Mallow's \eqn{C_p} assumes that all models are nested within the first model in the argument \code{lms}.  Non-nesting will produce a warning message.}

\author{
Ken Aho
}

\seealso{
\code{\link{AIC}}, \code{\link{press}}
}
\examples{
Y <- rnorm(100)
X1 <- rnorm(100)
X2 <- rnorm(100)

lms <- list(lm(Y ~ X1), lm(Y ~ X1 + X2))
lm.select(lms)

}
\keyword{univar}
