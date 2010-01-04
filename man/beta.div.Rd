\name{beta.div}
\alias{beta.div}
\alias{W.beta.div}
\alias{beta.dbar}
\alias{beta.dbar.halfchange}
\title{Beta diversity functions}
\description{
Several methods for beta diversity calculation: Whittaker, average dissimilarity, i.e. \eqn{\bar{D}}, and half-change.

}
\usage{
W.beta.div(x)
beta.dbar(x,index="steinhaus")
beta.dbar.halfchange(x,index="steinhaus")
beta.div(x,method=c("whittaker","dbar","half.change"),index="steinhaus")
}
\arguments{

  \item{x}{A community matrix with sites in rows and species in columns.}
  \item{method}{One of three possible choices in beta.div: \code{"whittaker","dbar"},or \code{"half.change"}.}
  \item{index}{A dissimilarity or distance measure.  Any measure from \code{\link{get.dist}} is acceptable.}
}
\details{Beta diversity can unfortunately mean two related but different things.  First, it can refer to the relationship between the total number of species in landscape, (i.e.gamma-diversity), and the richness in individual plots.  As a result, this type of beta-diversity attempts to quantify community heterogeneity without consideration of spatial distance or an environmental gradient. Second, beta diversity can refer to a measure of the rate of change in species composition across a pre-defined spatial or environmental gradient (Velland 2001).  The second, more complex type of measure is often called species turnover.  
 
A simple formula for the first (non-gradient) type of beta-diversity is attributed to Whittaker (1960).  It is:
					
\deqn{\beta_W = \frac{\gamma}{\kappa} - 1,}{%
beta_W = gamma\kappa - 1,}

where \eqn{\gamma} is the total number of species in the landscape, i.e gama diversity, and \eqn{\kappa} is average plot richness. \eqn{\beta}\eqn{_W} attains it maximum value when no species are shared among plots.  It reaches its minimum value, 0, when species composition is identical among plots.  Multivariate resemblance measures are also conventionally used for measuring non-gradient beta diversity (e.g. Aho et al. 2008).  The simplest approach is to find the mean dissimilarity in a distance matrix, \eqn{\bar{D}}.  This approach addresses several of the problems implicit with Whittaker's function.  Specifically, that Whittaker's method is 1) strongly affected by rare species and 2) considers only presence/absence, not abundance.  A reccomended adjustment to the distance matrix mean has been made by McCune and Grace (2002):  

\deqn{\beta_{HC} = \frac{ln(1-\bar{D})}{ln(0.5)},}{%
beta_HC = ln(1-eqn{\barD})/ln(0.5),}

where \eqn{\bar{D}} is the average dissimilarity.  In this approach average distance is converted to a half change scale.


To measure the second type of beta-diversity (i.e. species turnover along a gradient) axes from Detrended Correspondence Analysis (DCA) have been used (Jongman et al. 1995).  This approach is suitable because DCA utilizes Hill scaling to create its (indirect gradient) ordination axes.  Complete turnover for a site in a species space occurs at a distance of about four axis units (four DCA standard deviations).  DCA expands and contracts axes so that the rate of species turnover is more or less constant.  Oksanen and Tonteri (1995) and others have contested this use of DCA axes and proposed more direct estimation of turnover along known (not indirect) ordination gradients.
}
\value{
Returns beta diveristy.
}
\references{
Aho, K., Roberts, D. W., and T. Weaver. (2008)  Using geometric and non-geometric 
internal evaluators to compare eight vegetation classification methods.  \emph{Journal of Vegetation Science}.  19: 549-562.


Oksanen, J.  and T. Tonteri. (1995)  Rate of compositional turnover along gradients and 
total gradient length.  \emph{Journal of Vegetation Science} 6: 815-824.  


Jongman, R. H. G., ter Braak, C. F. G., and O. F. R. van Tongern. (1995)  \emph{Data analysis 
In Community and landscape ecology}.  Cambridge University Press.  Cambridge, 
UK. 

}
\author{Ken Aho}
\seealso{\code{\link{get.dist}}, \code{\link{alpha.div}}}
\examples{
library(vegan)
data(varespec)
W.beta.div(varespec)
}

