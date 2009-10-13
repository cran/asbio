\name{Venn}
\alias{Venn}
\title{Venn probability diagrams for an event with two outcomes}
\description{
The user specifies the probabilities of two outcomes, and if applicable, their intersection.  A Venn diagram is returned. The universe, S, will generally not have unit area, but in many applications will be a good approximation.     
}
\usage{
Venn(A, B, AandB = 0, labA = "A", labB = "B")
}

\arguments{
  \item{A}{probability of event A}
  \item{B}{probability of event B}
  \item{AandB}{probability of the intersection of A and B}
  \item{labA}{Label assigned to event A in the diagram}
  \item{labB}{Label assigned to event B in the diagram}
}
\value{
A Venn diagram is returned.  
}
\references{Bain, L. J., and M. Engelhardt (1992)  \emph{Introduction to probability and mathematical 
statistics}.  Duxbury press.  Belmont, CA, USA.
}
\author{K. Aho}
\examples{
Venn(A=.3,B=.2,AandB=.06)
}


