nsamples <- 1000
samplesize <- 10000
boot <- vector(length = nsamples)
# Citigroup data
est <- vector(length = 0)
for(n in conf) {
  for(i in 1:nsamples) boot[i] <- sort(sample(d.csp0108[,2], replace = T, size = samplesize))[samplesize*n]
  est <- c(est, mean(boot))
}

# S&P 500 data
est2 <- vector(length = 0)
for(n in conf) {
  for(i in 1:nsamples) boot[i] <- sort(sample(d.csp0108[,3], replace = T, size = samplesize))[samplesize*n]
  est2 <- c(est2, mean(boot))
}