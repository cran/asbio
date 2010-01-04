\name{sortid}
\alias{sortid}
\title{Sorts releve table rows using a dot product approach.}
\description{
 Sorts species(rows) in a releve or summarized releve table assuming a relevant order of columns.  A dot product approach described below is used.
}
\usage{
sortid(Y, gradient = 1)
}
\arguments{

  \item{Y}{An site x species (\emph{n} x \emph{p}) community matrix.}
  \item{gradient}{A constant used to establish the dot product see discussion below.}
}
\details{
 A large number of ecologists have used sorted tables to describe patterns of data across gradients (Braun-Blanquet 1964, Hill 1973) .  Perhaps the most common method to order a data matrix is to: 1) arrange columns (sites) in an order representing positions along a gradient (e.g. dry to wet), then 2) sort the species according to their dominance within the arranged columns. Hand sorting tables becomes burdensome for large complex datasets, and a large degree of subjectivity will be introduced (i.e. where does one put multimodal, randomly, or uniformly distributed species?).  As a result, a number of methods have been developed to automatically sort the order of rows (species) with respect to the gradient represented by the order of columns (e.g. Tichy 2002).  One method is to use weighted averaging so that species abundances are weighted by responses of the environmental variable determining the order of columns (Ter Braak and Looman 1986).  While this method often produces good results, it is hampered by the distribution shape of the gradient (Jongman 1995).  To address this problem I propose using a dot product algorithm (Stewart 2003, pg. 807) to find the order of rows.  Consider an \emph{n} x \emph{s} matrix \bold{M}, where \emph{s} = the number of species, \emph{n} = the number of sites, and \emph{c} is a constant. 

1. Create a vector, \bold{v}, of length \emph{n} with uniformly spaced intervals from \emph{-c} to \emph{+c}.  Thus, if\emph{n} = 5, and \emph{c} = 1, then \bold{v} = (-1.0, -0.5, 0.0, 0.5, 1.0). 
 
2. Take the dot product of \bold{v} and the vector of abundances of spp 1 from sites 1 through \emph{n}.

3. Create the vector, \bold{d}, by calculating its elements \eqn{d_1, d_2,...,d_s}, using step 2 above.

4. Sort the rows in \bold{M} with the respect to descending values of \bold{d}.

	
Note that \bold{v} need not be uniformly distributed (see step 1 in the algorithm description above). To account for distribution shape in the gradient, any distribution (e.g. normal, lognormal) may be used.
}
\value{
A sorted table is returned.
}
\references{
Braun-Blanquet, J. (1964)  \emph{Pflanzenoziologia. Grunduge der Vegetationskunde. 3}.  Aufl. Berlin. Wien. Springer Verlag, New York, USA.

Hill, M. O. (1979)  \emph{TWINSPAN-A FORTRAN program for arranging multivariate data 
in an ordered two-way table by classification of the individuals and attributes}. Ecology and Systematics.  Cornell University, Ithaca, NY, US.
                                                                                
Jongman, R. H. G., ter Braak, C. F. G., and O. F. R.  van Tongern. (1995)  \emph{Data analysis 
In Community and landscape ecology}.  Cambridge University Press.  Cambridge, 
UK. 

Stewart, J. (2003)  \emph{Calculus: early transcendentals}.  Thompson Learning Inc.

ter Braak, C. J. F., and C. W. N. Looman. (1986) Weighted averaging, logistic regression 
and the Gaussian response model.  \emph{Vegetatio}.  65: 3-11.

Tichy, L. (2002)  JUICE, software for vegetation classification.  \emph{Journal of Vegetation 
Science}.  13: 451-453.

}
\author{Ken Aho}
\seealso{\code{\link{veg.table}}}
\examples{
data(dune)
sortid(t(dune))
}
\keyword{multivariate}

