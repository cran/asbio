\name{cliff.env}
\alias{cliff.env}
\docType{data}
\title{Environmental data for the community dataset cliff.sp}
\description{
The data here are a subset of a dataset collected by Aho (2006) which describe the distribution of communities of lichens and vascular and avascular plant spcies on montane cliffs in Northeast Yellowstone National Park.  Of particular interest was whether substrate (limestone or andesitic conglomerate) or water supply influenced community composition.
}
\usage{data(cliff.env)}
\format{
This data frame contains the following columns:
  \describe{
    \item{sub}{
      a factor with 2 levels
      \code{"Andesite"} and \code{"Lime"} describing substrate type. 
    }
    \item{water}{
      a factor with 3 levels
      \code{"W"} 
      \code{"I"}
      \code{"D"}
      indicating wet, intermediate, or dry conditions. 
    }
  }
}
\details{
Two categorical environmental variables are described for 54 sites.  sub describes the substrate; there are two levels: \code{"Andesite"} and \code{"Lime"}.  water descibes distance of samples from waterfalls which drain the cliff faces; there are three levels \code{"W"} indicating wet, \code{"I"} indicating intermediante, and \code{"D"} indicating dry.
}
\source{
Aho, K.(2006)  \emph{Alpine ecology and subalpine cliff ecology in the Northern Rocky 
Mountains}.  Doctoral dissertation, Montana State University, 458 pgs.
}
\keyword{datasets}
