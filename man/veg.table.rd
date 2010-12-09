\name{veg.table}
\alias{veg.table}

\title{Summarized constancy/cover vegetation tables (not vegetables)}
\description{
Calculates vegetation cover and constancy within groups (factor) for species at a defined minimum constancy,then converts constancy and cover to codes.  Three different cover classes systems can be specified.  A method developed by Aho (2006), Daubenmire cover classes, and Braun-Blanquet cover classes.
}
\usage{

veg.table(Y, cat, min.const = 0.3, method = "aho", cover.only = FALSE)
}

\arguments{

  \item{Y}{A site x species (n x p) community matrix.}
  \item{cat}{An n x 1 vector of categorical assignments.  Must be a factor.}
  \item{min.const}{A constancy cutoff.  To help distill information data will be subset into two components species with >= \code{min.const} in at least one group, and < \code{min.const} across all groups.  \code{min.const}=0}.
  \item{method}{The type of cover codes to use.  The choices are possible \code{aho}, \code{daub}, and \code{braun}}
  \item{cover.only}{Logical.  If only cover output is desired then stipulate \code{cover.only = TRUE}}
}
\details{
The function assumes that responses in the community matrix are percent cover, i.e. responses are generally in the range 0 - 100 (although responses greater than 100 are allowed).  For constancy: 0 percent = ".", 0-10  = +, 10-20 = 1, 20-30 = 2, 30-40 = 3, 40-50 = 4, 50-60 = 5, 60-70 = 6,70-80 = 7, 80-90 = 8, 90-100 = 9.  

Three different cover class systems can be specified.  

Aho, i.e. method = \code{aho} cover classes use the following codes: 
0 percent = ".", 0-0.01  = +, 0.01-1  = A, 1-2  = B, 2-5  = C, 5-25  = D, >25 = E.  

Daubenmire,i.e. \code{daub} cover classes are as follows: 0 percent = ".", 0-5 percent = 1, 5-25 = 2, 25-50 = 3, 50-75 = 4, 75-95 = 5, >95 = 6.  

Braun-Blanquet, i.e. \code{braun} cover classes are as follows: 0 percent = ".", 0-0.1 = "r", 0.1-1 = "+", 1-5 = 1, 5-25 = 2, 25-50 = 3, 50-75 = 4, >75 = 5. 

The argument  \code{min.const} allows creation of two summary cover and constancy matrices.  The first contains species which have >= \code{min.const} within at least one of the categories/clusters.  The second contains cover and constancy summaries for all other species 
}
\value{
A list with two of three possible components is returned.  The components will change depending what is specified in \code{cover.only}
  \item{const.cover}{A matrix with constancy and cover ciphers containing species with >= 30 percent constancy in at least one group}
  \item{const.cover_less.than.min.const}{A matrix with constancy and cover ciphers containing species which do not have  >= 30 percent constancy in at least one group}
  \item{cover}{A matrix with constancy and cover ciphers containing species with >= 30 percent constancy in at least one group}
  
}
\references{
Aho, K. (2006)  \emph{Alpine ecology and subalpine cliff ecology in the Northern Rocky 
Mountains}.  Doctoral dissertation, Montana State University, 458 pgs.

Gurevitch, J., Scheiner, S. M., and Fox, G. A. (2006)  \emph{The ecology of Plants}.  Sinauer.}
\author{Ken Aho; Tad Weaver contributed many of the ideas for cover/constancy ciphers and code ranges.}
\seealso{\code{\link{const}}}
\examples{
data(dune)
data(dune.env)
veg.table(Y=dune,cat=dune.env[,3])
}
\keyword{multivariate}
