source('vandermonde.R')

polyreg <- function(x, y, n) {
  z <- vandermonde(x, n);
  if (ncol(y) != 1)
    y <- t(y);
  a <- ginv(t(z) %*% z) %*% t(z) %*% y;
  fit <- z %*% a;
  return (list(a, fit))
}