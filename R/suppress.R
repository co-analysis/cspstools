

suppress <- function(x, p, n = 10) {

  next_min <- min(x[x >= n], na.rm = TRUE)

  if (length(x[x < n]) == 1) {
    l <- (x < n | x == next_min)
  } else {
    l <- x < n
  }

  p[l] <- NA_real_

  return(p)

}
