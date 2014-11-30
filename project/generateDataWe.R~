source('mlewe.R')
source('mleln.R')

n_sim <- 10000
p <- seq(from = 0.3, to = 0.9, by = 0.1)
n <- c(20, 40, 60, 80, 100, 200)
pcs <- matrix(0, nrow=length(p), ncol=length(n))
for(iter_n in 1:length(n)) {
  for(iter_p in 1:length(p)) {
    for(i in 1:n_sim) {
      dataset <- rweibull(n[iter_n], shape = 0.8, scale = 1)
      censored <- dataset[1:n[iter_n]*p[iter_p]]
      pcs[iter_p, iter_n] <- pcs[iter_p, iter_n] + sign( mleweibull(censored, n[iter_n]) - mlelnormal(censored, n[iter_n]))
    }
    pcs[iter_p, iter_n] <- (n_sim + pcs[iter_p, iter_n])/(2*n_sim)
  }
}

colnames(o) <- n
rownames(o) <- p
pcs <- as.table(pcs)