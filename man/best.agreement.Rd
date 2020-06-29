\name{best.agreement}
\alias{best.agreement}

\title{
Determine agreement of two classifications
}
\description{
Distinct classifications will have class labels that may prevent straightforward comparisons.  This algorithm considers all possible permutations of class labels to find a configuration that maximizes agreement on the diagonal of a contingency table comparing two classifications.  Classifications need not have the same number of classes.
}
\usage{

best.agreement(class1, class2, test = FALSE, rperm = 100)
}
\arguments{

  \item{class1}{A vector containing class assignments to observations, e.g., a result from \code{\link{cutree}}}
  \item{class2}{A vector containing class assignments for a second classification}
  \item{test}{Logical.  Indicates whether or not the null hypothesis, that agreement between \code{class1} and \code{class2} is no better than random, will be run. }
  \item{rperm}{If \code{test = TRUE}, the number of random permutations used in null hypothesis testing.}
}
\details{
Class assignments are fixed in \code{class1}, all possible permutations of class labels in \code{class2} are considered to find a configuration that maximizes agreement in the two classifications.  If \code{test=TRUE}, a permutation test is run for the null hypothesis that maximum agreement between classifications is no better than random.  This is done by sampling without replacement \code{rperm} times from \code{class2}, finding maximum agreement between \code{class1} and the randomly permuted classifications, and dividing one plus the number of times that maximum agreement between the random classifications and \code{class1} was greater than the maximum agreement observed for \code{class1} and \code{class2}.  Testing can be slow because it will be based on nested loops with \eqn{p x c!} steps, where \emph{p} is \code{nperm} and \emph{c!} is the number of combinatorial permutations possible for categories in \code{class2}. 
}
\value{

\item{n.possible.perms}{Number of permutations considered}
\item{n.max.solutions}{Number of configurations in which classification agreement is maximized.  The first configuration identified is reported in \code{max.class.names1} and \code{max.class.names2}.}
\item{max.agree}{Proportion of observations assigned to the same cluster}
\item{max.class.names1}{Class labels in the first classification that allow maximum agreement.}
\item{max.class.names2}{Class labels in the second classification that allow maximum agreement.}
\item{p.val}{If \code{test = TRUE}, the \emph{p}-value for the null hypothesis test described in Details above.}
}
\author{Ken Aho}

\seealso{
 \code{\link{cutree}}, \code{\link{hclust}}
}
\examples{

# Example comparing a 7 cluster average-linkage solution 
# and a 6 cluster Ward-linakage solution 

avg <- hclust(dist(USArrests), "ave")
avg.7 <- as.matrix(cutree(avg, k = 7))
war <- hclust(dist(USArrests), "ward.D")
war.6 <- as.matrix(cutree(war, k = 6))

best.agreement(avg.7, war.6)
}

