qcflag <- function(qc, number) {
  mask <- 2^(number-1)
  return(sapply(qc, function(x) {
    return(sum(bitwAnd(x, mask) > 0))
  }))
}
