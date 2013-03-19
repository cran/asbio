\name{see.mixedII}
\alias{see.mixedII}

\title{
Depiction of the effect of random level selection on inferences concerning fixed effects
}
\description{
The levels for a fixed factor are shown in rows, while the columns are levels for a random factor.  Thus, the table depicts a mixed model.  Assume that the values in the table are population means.  For instance, the true mean of random level R1 for the fixed level F1 is 1.  Using information from all random factor levels, the null hypothesis for the fixed factor is true.  That is, \eqn{\mu_{F1} = \mu_{F2} = \mu_{F3}}.  However when we select a subset of random levels, this is obscured.  In fact, for any subset of random factor levels it appears as if there is evidence against H0, i.e. there appears to be variability among the fixed factor level means.  Thus, to avoid inflation of type I error (rejection of a true null hypothesis) we must consider the interaction of the random and fixed factors when considering inference for the fixed factor level populations.   
}
\usage{

see.mixedII()
}
\references{
Maxwell, S. E., and H. D. Delaney (2003) \emph{Designing Experiments and Analyzing Data: A Model Comparison Perspective, 2nd edition}. Routledge Academic.
}
\author{
Ken Aho, thanks to Ernest Keeley 
}
\keyword{graphs}
