\name{bin2dec}
\alias{bin2dec}
\alias{dec2bin}
\alias{dec2bin.twos}

\title{
Conversion between binary digits and decimal numbers
}
\description{
Here are simple functions for converting binary expressions to digital numbers, and vice versa, under simple and (bit signed) two's complement formatting.
}

\usage{
bin2dec(digits, sign.bit = FALSE)

dec2bin(num, max.bits = 10, max.rep0 = 6)

dec2bin.twos(num, ...)
}

\arguments{
  \item{digits}{
A character string or sequence of binary digits.
}
  \item{sign.bit}{
Logical, indicating whether the leading bit a sign bit.
}
  \item{num}{
A decimal number greater than or equal to 0.
}
  \item{max.bits}{
The maximum number of bits to be used to approximate fractional numbers.
}
  \item{max.rep0}{
A handler for meaningless repeating zeroes at the end of some binary representations of decimal numbers, e.g., 0.25. Can be turned off by letting \code{max.rep0 = NULL}.
}
\item{...}{
Additional arguments from \code{dec2bin}.
}
}

\details{
The function \code{dec2bin} converts positive decimal representations to binary.
Use of a negative binary number (for instance, using \code{num = -10}) will produce the warning: "num must be >= 0. You can obtain binary expressions for negative decimal numbers with two's complement formatting using dec2bin.twos()."

The function \code{dec2bin.twos} converts positive decimal representations to binary under two's complement formatting. Thus (unlike \code{dec2bin}) it can handle positive and negative values for its \code{num} argument.

The function \code{bin2dec} converts binary representations of digital numbers (e.g., 10101011 = 171). Fractions, (e.g., \code{0.11101}) will be evaluated to the number of bits provided. Use of \code{sign.bit = TRUE} converts the first binary bit into a sign bit \code{0} = positive, \code{1} = negative, to allow binary formats like two's complement.
}

\author{
Ken Aho
}
\examples{
bin2dec(10110011.01) # = 179.25
dec2bin(179.25) # = 10110011.01

# Negative decimals
dec2bin.twos(-179.25) # = 101001101.1 (twos complement)
bin2dec(101001100.11, sign.bit = TRUE) # = -179.25
}
