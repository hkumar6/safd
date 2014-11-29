mlelnormal <- function(x, L) {
  mu <- sum(log(x))/length(x)
  sigma <- sqrt(sum((log(x) - mu)^2)/length(x))
  mw <- sum(log(dlnorm(x, meanlog = mu, sdlog = sigma))) + (L-length(x))*log(1 - plnorm(x[length(x)], meanlog = mu, sdlog = sigma))
  return(mw)
}