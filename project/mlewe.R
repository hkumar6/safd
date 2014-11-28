mleweibull <- function(x, L) {
  beta <- 0.5
  theta <- 0.5
  n <- length(x)
  eps <- 10^-6
  while (abs(ldiffbeta(x, beta, theta))>eps & abs(ldifftheta(x, beta, theta))>eps) {
    theta <- (n/sum(x^beta))^(1/beta)
    beta <- -n/(n*log(theta) + sum(log(x)) - sum((theta*x)^beta * log(theta*x)))
  }
  mw <- sum(dweibull(x, shape = beta, scale = 1/theta)) + (L-n)*log(1 - pweibull(x[length(x)], shape = beta, scale = 1/theta))
  return(mw)
}

ldiffbeta <- function(x, b, t) length(x)/b + length(x)*log(t) + sum(log(x)) - sum((t*x)^b * log(t*x))

ldifftheta <- function(x, b, t) length(x)/t - t^(b-1) * sum(x^b)