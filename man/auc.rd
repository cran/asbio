\name{auc}
\alias{auc}

\title{
Area under a reciever operating characterisitic (ROC) curve
}
\description{
A simple algortihm for calculating \emph{AUC}.
}
\usage{

auc(obs, fit, plot = FALSE)
}

\arguments{

  \item{obs}{
Dichotomous {0, 1} outcomes (i.e. response values for binomial GLM).
}
  \item{fit}{
Fitted probabilities from some model.
}
  \item{plot}{
Logical, indicating whether or not ROC curve plot should be created.}
}
\references{
Agresti, A.  (2012) \emph{Categorical Data Analysis, 3rd edition}.  New York.  Wiley. 
}
\author{
Ken Aho
}
\examples{
obs <-rbinom(30, 1, 0.5)
fit <- rbeta(30, 1, 2)

auc(obs, fit)
}
