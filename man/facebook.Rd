\name{facebook}
\alias{facebook}
\docType{data}
\title{
Facebook performance metrics for data mining and machine learning
}
\description{
These data concern posts published during the year 2014 on the Facebook page of a popular cosmetics brand.
   The data here are 500 of the 790 rows and part of the features analyzed by Moro et al. (2016). The remaining data points were 
   omitted due to confidentiality issues.
}
\usage{data(facebook)}
\format{
  A data frame with 500 observations on the following 19 variables.
  \describe{
    \item{\code{X1}}{Total number of likes of the page containing a post.}
    \item{\code{X2}}{Type of content; a factor with levels \code{Link}, \code{Photo}, \code{Status}, and \code{Video}.}

    \item{\code{X3}}{Manual content category; a factor with levels: \code{action} (special offers and contests), \code{product} (direct advertisement, explicit brand content), and \code{inspiration} (non-explicit brand related content).}
    \item{\code{X4}}{Month the post was posted.}
    \item{\code{X5}}{Weekday the post was published.}
    \item{\code{X6}}{Hour the post was posted}
    \item{\code{X7}}{An binary variable indicating if the company paid to Facebook for advertising.}
    \item{\code{Y1}}{Lifetime post total reach: the number of people who saw a page post.}
    \item{\code{Y2}}{Lifetime number of total impressions: the number of times a post from a page is displayed, whether the post is clicked or not.}
    \item{\code{Y3}}{Lifetime engaged users: the total number of people who clicked anywhere in a post (unique users).}
    \item{\code{Y4}}{Lifetime number of post consumers: the number of people who clicked anywhere in a post after purchasing something on the page.}
    \item{\code{Y5}}{Lifetime number of post consumptions: the number of clicks anywhere in a post by people after purchasing something on the page.}
    \item{\code{Y6}}{Lifetime number of post impressions by people who have liked the page.}
    \item{\code{Y7}}{Lifetime post reach by people who like the page.}
    \item{\code{Y8}}{Lifetime number of people who have liked the page and engaged with the post.}
    \item{\code{Y9}}{Number of "comments"" on the post.}
    \item{\code{Y10}}{Number of "likes" on the post.}
    \item{\code{Y11}}{Number of times the post was "shared.""}
    \item{\code{Y12}}{Total interactions: the sum of "likes," "comments," and "shares" of the post.}
  }
}

\source{
 Available at: \url{http://dx.doi.org/10.1016/j.jbusres.2016.02.010}
}
\references{
%%  ~~ possibly secondary sources and usages ~~
   This dataset is publicly available for research. The details are described in (Moro et al., 2016).
   Please include this citation if you plan to use this data: 

   S. Moro, P. Rita, Vala, B. (2016) Predicting social media performance metrics and evaluation of the impact on 
   brand building: A data mining approach. Journal of Business Research 69(9): 3341-3351. 
 
}

\keyword{datasets}

