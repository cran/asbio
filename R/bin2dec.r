bin2dec <- function(digits, sign.bit = FALSE){
  digits <- as.numeric(digits)
  if(digits < 0) stop("digits must be >= 0")
  x <- as.character(digits)
  h <- unlist(strsplit(x, ""))
  if(!all(h == "1" | h == "0" | h == ".")) stop("digits must be binary")

  if(any(h == ".")){
    w <- which(h == ".")
    len <- length(h)
    mkappa <- w - len; Mkappa <- w - 2
    kappa <- seq(Mkappa, mkappa)
    noradix <- paste(gsub(x = h,".","", fixed = TRUE), collapse = "")
    mantissa <- as.numeric(unlist(strsplit(noradix, "")))
  } else {
    mkappa <- 0; Mkappa <- length(h) - 1
    kappa <- seq(Mkappa, mkappa)
    mantissa <- as.numeric(h)
  }
  if(sign.bit){
    mantissa[1] <- -mantissa[1]
  }
  sum(mantissa * 2^kappa)
}
