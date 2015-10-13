qcflag <- function(qc, number) {
  mask <- 2^(number-1)
  return(bitwAnd(qc, mask) > 0)
}
