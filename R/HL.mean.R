HL.mean <- function (x) 
{
    d <- outer(x, x, "+")/2
    sus <- d[lower.tri(d, diag = FALSE)]
    median(sus)
}