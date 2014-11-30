library(MASS)
source('mlewe.R')
source('mleln.R')

n_sim <- 10000
p <- seq(from = 0.3, to = 0.9, by = 0.1)
n <- c(20, 40, 60, 80, 100, 200)
pcsW <- matrix(0, nrow=length(p), ncol=length(n))
for(iter_n in 1:length(n)) {
  for(iter_p in 1:length(p)) {
    for(i in 1:n_sim) {
      dataset <- rweibull(n[iter_n], shape = 1, scale = 1)
      censored <- dataset[1:n[iter_n]*p[iter_p]]
      pcsW[iter_p, iter_n] <- pcsW[iter_p, iter_n] + sign( mleweibull(censored, n[iter_n]) - mlelnormal(censored, n[iter_n]))
    }
    pcsW[iter_p, iter_n] <- (n_sim + pcsW[iter_p, iter_n])/(2*n_sim)
  }
}
<<<<<<< HEAD

colnames(o) <- n
rownames(o) <- p
pcs <- as.table(pcs)
=======
>>>>>>> 74767c3642ac7b07a41da0622421f396e3754c76
