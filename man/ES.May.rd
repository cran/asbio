\name{ES.May}
\alias{ES.May}
\title{May's effective specialization index}
\description{
May and Beverton (1990) created the effective specialization index to quantify the degree of 
specialization of insects with potential host plants.
}
\usage{
ES.May(mat, digs = 3)
}
\arguments{
  \item{mat}{A symmetric matrix with potential specialist hosts in rows and 
  and the number species specializing on each of the host species in columns 
  (see details below).}
  \item{digs}{The number of significant digits in output.}
}
\details{
  The structure of the object \code{mat} is nonintuitive.  In the rows of the matrix are
  species which can be selected by potential specialists (i.e. hosts).  May and Beverton (1990) 
  used four oak species.  The columns indicate the degree of specialization of 
  potential specialists.  May and Beverton (1990) were interested in the specialization 
  of beetles.  The first element (row 1, column 1) in their 4 x 4 matrix contained 
  only beetle species found on host 1.  The second element (row 1, column 2) contained 
  the number of beetle species found on host 1 and one other host. The third element 
  (row 1, column 3) contained the number of beetle species found on host 1 and two 
  other hosts.  The fourth element (row 1, column 4) contained the number of beetle 
  species occurring on all four hosts.     
}
\value{
Output is a list 
  \item{E.S_coefficients}{}
  \item{Nk}{The number of distinct specialists.}
  \item{Pki.matrix}{The proportion of potential specialists on the \emph{k}th host}
  \item{N.matrix}{The raw data.}
  \item{fk.matrix}{}
  \item{fk.vector}{For the \emph{k}th host, the proportion of species which are effectively specialized.}
  \item{Nk.vector}{The number of species which are effectively specialized on the \emph{k}th host.}
}
\references{May, R. M. and Beverton, R. J. H. (1990)  How many species [and discussion].  
\emph{Philosophical Transactions: Biological Sciences}.  330 (1257) 293-304.}
\author{Ken Aho and Jessica Fultz}
\examples{
#data from May and Beverton (1990)
beetle<-matrix(ncol=4,nrow=4,data=c(5,8,7,8,20,10,9,8,14,15,11,8,15,15,12,8), 
byrow=TRUE)
ES.May(beetle)
}
