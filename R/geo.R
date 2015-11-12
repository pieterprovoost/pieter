rad <- function(degrees) {
  return(degrees * (pi / 180))
}

distance <- function(lon1, lat1, lon2, lat2) {
  r <- 6371000
  dlat <- rad(lat2 - lat1)
  dlon <- rad(lon2 - lon1)
  a <-
    sin(dlat / 2) * sin(dlat / 2) +
    cos(rad(lat1)) * cos(rad(lat2)) *
    sin(dlon / 2) * sin(dlon / 2)
  c <- 2 * atan2(sqrt(a), sqrt(1 - a))
  d <- r * c
  return(d)
}
