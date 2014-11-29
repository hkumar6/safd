library(MASS)

mleweibull <- function(x, L) {
  f <- fitdistr(x, densfun="weibull")
  t <- unlist(f, use.names = FALSE)
  beta <- t[1]
  theta <- t[2]
  mw <- sum(log(dweibull(x, shape = beta, scale = theta))) + (L-length(x))*log(1 - pweibull(x[length(x)], shape = beta, scale = theta))
  return(mw)
}

ldiffbeta <- function(x, b, t) length(x)/b + length(x)*log(t) + sum(log(x)) - sum((t*x)^b * log(t*x))

ldifftheta <- function(x, b, t) length(x)/t - t^(b-1) * sum(x^b)