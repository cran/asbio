dec2bin <- function(num, max.bits = 10, max.rep0 = 6){ 
  frac <- NULL
  numc <- as.character(num)
  
  if(grepl("\\.", numc)){
    ss <- unlist(strsplit(numc, "\\."))
    whole <- ss[1]; frac <- paste0("0.",ss[2])
  }

  fnd2c <- function(num){
    if(num/2 < 1) out <- as.character(num %% 2)
    else {
      m <- 1; iq <- num; out <- ""
      repeat{
        temp <- iq
        iq <- iq %/% 2
        m <- temp %% 2
        out <- paste0(out, m)
        if(iq == 1) break
      }
    out.1 <- rev(unlist(strsplit(out,"")))
    out <- paste0("1", paste0(out.1, collapse = ""))
    }
    out
  }
  
  fnd2cf <- function(num, max.bit = max.bits){
    i <- 0; iq <- num; out <- "0."
      for(i in 1:max.bits){
        iq <- iq * 2
        m <- ifelse(iq < 1, 0, 1)
        iq <- (iq) %% 1
        out <- paste0(out,m)
        if(max.bits <= i) break
      }
    out
    }

  
if(!is.null(frac)) {
  if(whole == "0"){out <- fnd2cf(as.numeric(frac))}
  else {
    wn <- fnd2c(as.numeric(whole))
    fn <- fnd2cf(as.numeric(frac))
    ss <- unlist(strsplit(fn, "\\."))
    out <- paste(wn, ".", ss[2], sep = "")
  }
} else{out <- fnd2c(num)}
  if(!is.null(max.rep0)){
      u <- unlist(strsplit(out, NULL))
      runs <- rle(u)
      ss <- subset(u, u %in% runs$values[runs$lengths >= max.rep0])
      if(length(ss > 0) && all(tail(u) == tail(ss))){ 
        w <- which(runs$values == "0" & runs$length >= max.rep0)
        id <- paste(rep("0", runs$length[w]), collapse="")
        out <- unlist(strsplit(x = out, id))
        }
    }
noquote(out)
}

