\name{anm.ExpDesign}
\alias{anm.ExpDesign}
\alias{anm.ExpDesign.tck}
\alias{ExpDesign}
\title{Animated depiction of experimental designs}
\description{
Describes random treatment allocation for fifteen experimental designs.}
\usage{

anm.ExpDesign(method="all", titles =  TRUE, cex.text = 1, mp.col = NULL, lwda = 1, 
n = 10, EUcol = hcl.colors(n, palette = "Dark 3"), interval = 0.5, iter = 30)


ExpDesign(method="all", titles = TRUE, cex.text = 1, mp.col = NULL, lwda = 1, n = 10, 
EUcol = hcl.colors(n, palette = "Dark 3"),...)

anm.ExpDesign.tck()
}
\arguments{
  \item{method}{A character vector listing the experimental methods to be demonstrated (see \bold{Details} below).}  
  \item{titles}{A logical argument specifying whether or not plots should have \code{main} titles.}
  \item{interval}{Time length spent on each frame in animation (in seconds).}
  \item{iter}{Number of random iterations in animation.}
  \item{cex.text}{Text character expansion plots.}
  \item{mp.col}{Arrow colors in \code{"matched"} plot.  Either a vector of length 3 or a single color.}
  \item{lwda}{Arrow line widths.}
  \item{n}{Sample size (number of experimental units).  Currently only implemented for \code{method = "CRD"}}
  \item{EUcol}{Color of text identifying experimental units (or in some designs, treatments).  Currently only implemented for \code{method = "CRD"},  \code{method = "factorial2by2"}, \code{method = "RCBD"},  and \code{method = "nested"}}
  \item{\dots}{Additional arguments from \code{\link{plot}}.}
}
\details{
The function returns a plot or series of plots illustrating the workings of experimental designs. Random apportionment of treatments of experimental units (EUs) is illustrated for each of twelve experimental designs.  A character string can be specified in the \code{method} argument using a subset of any of the following: \cr
 \code{"CRD"}: a one-way completely randomized design,\cr
 \code{"factorial2by2"}: a 2 x 2 design with four EUs,\cr
 \code{"factorial2by2by2"}: a 2 x 2 x 2 factorial designs with 8 EUs,\cr 
 \code{"nested"}: a nested design with two levels of nesting,\cr
 \code{"RCBD"} a randomized complete block design with two blocks, two treatments and four EUs,\cr
 \code{"RIBD"}: a randomized incomplete block design with three blocks, three treatments, and six EUs,\cr
 \code{"split"}: a split plot design with a whole plot (factor A) and a split plot (factor B),\cr
 \code{"split.split"}: a split split-split plot design, \cr
 \code{"SPRB"}: split plots in randomized blocks,\cr
 \code{"strip.split"}: strip-split plot design,\cr
 \code{"latin"}: a Latin squares design with \emph{r} = 3, and \cr 
 \code{"pairs"}: a matched pairs design.\cr  
 The function \code{anm.ExpDesign.tck} provides an interactive GUI. Details on these designs are given below. 
}

 \section{Completely randomized design (CRD)}{
 In a \bold{completely randomized design} experimental units are each randomly assigned to factor levels without constraints like blocking.  This approach can (and should) be implemented in one way ANOVAs, and in more complex formats like factorial and hierarchical designs.  
 }
 \section{Factorial design}{
 Treatments can be derived by combining factor levels from the multiple factors.  This is called a \bold{factorial design}.  In a fully crossed factorial design with two factors, A and B, every level in factor A is contained in every level of factor B.
 }
 \section{Randomized block design (RBD)}{
 In a \bold{randomized block design} a researcher randomly assigns experimental units to treatments separately within units called blocks.  If all treatments are assigned exactly once within each block this is known as a \bold{randomized complete block design (RCBD)} 
 }
 \section{Latin squares}{
 \bold{Latin squares designs} are useful when there are two potential blocking variables.  These can figuratively or literally be represented by rows and columns.  All treatments are assigned to each row and to each column, and for each row and column treatment assignments differ.  Of course this stipulation limits the number of ways one can allocate treatments.  
 }                             
 \section{Nested design}{
 In a \bold{nested design} factor levels from one factor will be contained entirely in one factor level from another factor.  Consider a design with two factors A and B.  When every level of factor A appears with every level of factor B, and vice versa, then we have a fully crossed factorial design (see above).  Conversely, when levels of B only occur within a single level of A, then B is nested in A.
 }  
 \section{Split plot design}{
 A \bold{split plot} design contains two nested levels of randomization.  At the highest level are whole plots which are randomly assigned factor levels from one factor.  At a second nested level whole plots are split to form split plots.  The split plots are randomly assigned factor levels from a second factor.  Split plot designs are replicated in units called blocks. \bold{Split-split plot} design will have two levels of split plot nesting: C (split-split plots) are split plots within B (split plots), and B are split plots within A (whole plots).  We can see obvious and confusing similarities here to nested designs. A \bold{split plot randomized block} (\bold{SPRB}) design will have whole plots randomly assigned within blocks, and split plots randomly assigned within the whole plots.  Thus, levels of A (whole plot) are assigned randomly to a block, and split plots containing levels of B (split plot) are assigned within a level of A. 
 }
 \section{Strip plot design}{
 Closely related to split plot designs are strip plots. \bold{Strip plots} can be used address situations when relatively large experimental units are required for each of two factors in an experiment. A strip plot will have a row and column structure.  Let the number of columns equal to the number of levels in factor A, and let the number of rows be equal to the number of levels in factor B.  Levels in A are randomly assigned to columns only (across all rows) in a RBD format, and levels in B are assigned to rows only (across all columns). Interestingly, the levels in A serve as split plots in B and vice versa.  However, unlike a split plot design assignment of treatments at this level is not entirely random since rows are assigned single levels in A, while columns are assigned single levels in B.  Compared to a factorial design strip plots allow for greater precision in the measurement of interaction effects while sacrificing precision in the measurement of main effects.  Split-block design discussed by Littell et al. (2006), are indistinguishable from strip plots, described earlier, except that they are placed in the context of blocks.  They are also indistinguishable from SPRBs except that the design has an explicit row/column structure (one level of A for each column, one level of B for each row), resulting in larger experimental units for A and B. Conversely, in a SPRB, different levels of A and B can be assigned within columns and rows respectively.  A final type of split/strip plot design is known as a \bold{strip-split plot}.  Strip-split plots are three way designs (cf. Hoshmand 2006, Milliken and Johnson 2009).  In these models a conventional two factor strip plot is created (factors A and B) and split plots are placed in the resulting cells (levels in factor C). The design is indistinguishable from a split-split plot design except for the fact that "columns" always constitute the same levels in A, while "rows" always constitute the same levels in B, allowing larger experimental units for A and B, and reflecting the strip plot relationship of A and B.  Other, even more complex variants of split and strip plots are possible are possible.  For instance, Littell et al. (2006) discuss a case study they describe as strip-split-split plot design!  
}
\section{Matched pairs}{
In a \bold{matched pairs} design treatments are compared by using the same (or highly similar) experimental units.  If treatments are assigned at particular time segments it is assumed that outcomes within an experimental unit are independent, i.e., there is no "carryover" effect from the previous treatment.  Violation of this assumption may result in ashpericity and prevent conventional approaches.
}
\references{
Hoshmand, A. R. (2006) \emph{Design of Experiments for Agriculture and the Natural Sciences 2nd Edition}. CRC Press. 

Littell, R. C., Stroup, W. W., and R. J. Fruend  (2002)  \emph{SAS for linear models}. Wiley, New York.  

Milliken, G. A., and D. E. Johnson  (2009) \emph{Analysis of messy data: Vol. I. Designed 	experiments, 2nd edition}. CRC. 
}
\author{Ken Aho}
\seealso{
\code{\link{samp.design}}
}
\examples{
ExpDesign()
\dontrun{anm.ExpDesign()}
}
\keyword{design}
\keyword{graphs}


