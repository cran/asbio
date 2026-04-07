dec2bin.twos <- function(num, ...) {
  abs <- abs(num)
  temp <- dec2bin(abs, ...)

    #1#
    out <- paste(0, temp, sep = "")
    if (num < 0) {
    #2#
    h <- unlist(strsplit(out, ""))
    step2.1 <- gsub("1", "0.1", x = h)
    step2.2 <- gsub("0", "1", x = step2.1)
    step2.3 <- gsub("1.1", "0", x = step2.2)
    #3#
    one <- 1 # if no fractional component
    if (any(step2.3 == ".")) {
    # find last fractional bit
      w <- which(step2.3 == ".")
      len <- length(step2.3)
      one <- bin2dec(10^(w - len))
    }
    step3.1 <- paste(step2.3, collapse = "")
    # add one to last bit
    step3.2 <- bin2dec(step3.1) + one
    out <- dec2bin(step3.2, ...)
  }
  out
}
