p <- 0.9
n <- 10000
T <- vector(length = 0)
for(i in 1:5) {
  dataset <- rweibull(n, shape = 1, scale = 1)
  censored <- dataset[1:n*p]
  T <- c(T, mleweibull(censored, n) - mlelnormal(censored, n))
}