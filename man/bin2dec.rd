\name{bin2dec}
\alias{bin2dec}

\title{
Conversion of binary digits to decimal numbers
}
\description{
Converts binary representations to digital numbers (e.g., 10101011 = 171).  Fractions, (e.g., 0.11101) will be evaluated to the number of bits provided. The function will handle whole number and fractions, but not whole numbers with fractional parts, (e.g., 111.100110).
}
\usage{
bin2dec(digits, round = 4)
}

\arguments{

  \item{digits}{
A string of binary digits.
}
  \item{round}{
Rounding for fractional results, defaults to 4.
}
}
\author{
Ken Aho
}
\examples{
bin2dec(1011001101) #=717
}
