mlelnormal <- function(x) {
  mu <- sum(log(x))/length(x)
  sigma <- sqrt(sum((log(x) - mu)^2)/length(x))
  return(c(mu, sigma))
}