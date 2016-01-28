\name{MS.test}
\alias{MS.test}
\title{Mack-Skillings test}
\description{Runs a Mack-Skillings test for situations applicable to rank-based permutation procedures with blocking and more than one replicate for treatments in a block.
}
\usage{
MS.test(Y, X, reps)
}
\arguments{

  \item{Y}{A matrix of response data. The \code{MS.test} function requires that response data are organized in columns (see example below).}
  \item{X}{A vector of treatments.  The length of the vector should be equal to the number of rows in the response matrix.}
  \item{reps}{The number of replicates in each treatment (unbalanced designs cannot be analyzed).}
}
\details{
When we have more than one replication within a block, and the number of replications is equal for all treatments, we can use the Mack-Skillings test (Mack and Skillings 1980) as a rank based permutation procedure to test for main effect differences.  If ties occur the value of the significance level is only approximate.  Hollander and Wolfe (1996) provide a method for finding exact \emph{p}-values by deriving a test statistic distribution allowing ties.  
}
\value{Returns a dataframe summarizing the degrees of freedom, test statistic and \emph{p}-value.
}
\references{
Campbell, J. A., and O. Pelletier (1962)  Determination of niacin (niacinamide) in cereal 
products.  \emph{J. Assoc.  Offic. Anal.  Chem.}  45: 449-453. 

Hollander, M., and  D. A. Wolfe (1999) \emph{Nonparametric Statistical Methods}. New York: John Wiley & Sons. 

Mack, G. A., and J. H. Skillings (1980)  A Friedman-type rank test for main effects in a 
two-factor ANOVA.  \emph{Journal of the American Statistical Association}.  75: 947-951.
}
\author{Ken Aho}

\seealso{\code{\link{friedman.test}}}
\examples{
#data from Campbell and Pelletier (1962) 
Niacin0<-c(7.58,7.87,7.71,8.00,8.27,8,7.6,7.3,7.82,8.03,7.35,7.66)
Niacin4<-c(11.63,11.87,11.40,12.20,11.70,11.80,11.04,11.50,11.49,11.50,10.10,11.70)
Niacin8<-c(15.00,15.92,15.58,16.60,16.40,15.90,15.87,15.91,16.28,15.10,14.80,15.70)
Niacin<-cbind(Niacin0,Niacin4,Niacin8)
lab<-c(rep(1,3),rep(2,3),rep(3,3),rep(4,3))
MS.test(Niacin, lab, reps=3)
}

\keyword{htest}
\keyword{univar}
