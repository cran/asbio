\name{bin2dec}
\alias{bin2dec}
\alias{dec2bin}

\title{
Conversion between binary digits and decimal numbers 
}
\description{
The function \code{bin2dec} Converts binary representations to digital numbers (e.g., 10101011 = 171).  Fractions, (e.g., 0.11101) will be evaluated to the number of bits provided. The function will not handle codification of whole numbers with fractional parts. The function \code{dec2bin} Converts decimal representations to binary and can handle whole numbers, fractional, and numbers with both whole and fractional parts.   
}
\usage{
bin2dec(digits, round = 4)

dec2bin(num, max.bits = 10, max.rep0 = 6)
}

\arguments{

  \item{digits}{
A string of binary digits.
}
  \item{round}{
Rounding for fractional results, defaults to 4.
}
  \item{num}{
A decimal number.
}
  \item{max.bits}{
The maximum number of bits to be used to approximate fractional numbers.
}
  \item{max.rep0}{
A handler for meaningless repeating zeroes at the end of some binary representations of decimal numbers, e.g., 0.25. Can be turned off by letting \code{max.rep0 = NULL}.
}
}
\details{
If a decimal number with fractional, or both whole and fractional parts is provided to \code{dec2bin}, a vector with seperate binary expressions for each of these components is returned. 
}
\author{
Ken Aho
}
\examples{
bin2dec(1011001101) #=717
dec2bin(717)
}
