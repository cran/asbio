\name{G.stat}
\alias{G.stat}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
G-tests
}
\description{
Performs \emph{G}-tests for contingency table analyses.
}
\usage{

G.stat(y)
}

\arguments{

  \item{y}{
A matrix containing a contingency table.
}
}
\details{
In two-way tables the data are arranged so that the \emph{c} factor levels from the explanatory variable are in columns and the \emph{r} response variable categories are in rows.  Experimental unit responses are counts within the contingency table.  }
\value{
\item{G}{The \emph{G} test statistic (i.e. 2*the likelihood ratio).}
\item{lik.ratio.p.value}{P-value for the test.}
}
\references{
Zar, J. H.  (1999)  \emph{Biostatistical Analysis, 4th ed}.  Prentice-Hall.
}
\author{
Ken Aho
}

\examples{
jugularis<-matrix(nrow=2,ncol=2,data=c(20,0,29,21),byrow=TRUE)
G.stat(jugularis)
}
\keyword{htest}
