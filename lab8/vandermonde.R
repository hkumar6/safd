vandermonde <- function(x, n) {
  if (ncol(x) != 1)
    x <- t(x);
  z <- cbind(1, x);
  for (i in 2:n) {
    z <- cbind(z, x^i);
  }
  return (z);
}