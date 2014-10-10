logr <- log(1+d.csp0108[,2:3])[1:50,]

k4 <- function(u) exp(-u*u/2)/sqrt(2*pi)
n <- 100
n <- n+1
xfit <- seq(from=-1, to=1, length.out=n)

# Citigroup data
yfit1 <- vector(length=0)
h <- sd(logr[,1])*(n)^(-1/5)
for(i in xfit) {
  t <- 0
  for(d in logr[,1]) t <- t + k4((d-i)/h)
  yfit1 <- c(yfit1, t/(n*h))
}
plot(x = xfit, y = yfit1, type = 'l', main='Density estimate of Citigroup data using Gaussian kernel', xlab='', ylab='')

# S&P 500 data
yfit2 <- vector(length=0)
h <- sd(logr[,2])*(n)^(-1/5)
for(i in xfit) {
  t <- 0
  for(d in logr[,2]) t <- t + k4((d-i)/h)
  yfit2 <- c(yfit2, t/(n*h))
}
plot(x = xfit, y = yfit2, type = 'l', main='Density estimate of S&P500 data using Gaussian kernel', xlab='', ylab='')


# Plot of bootstrap distribution of means of Citigroup
boot1 <- vector(length=0)
for(i in 1:nsamples) {
  boot1 <- c(boot1, mean(sample(logr[,1], replace=T, size=samplesize)))
}
hist(boot1, freq=F, breaks=99, main = 'Bootstrap distribution of Mean of Citigroup Data')


# Plot of bootstrap distribution of means of S&P 500
boot2 <- vector(length=0)
for(i in 1:nsamples) {
  boot2 <- c(boot2, mean(sample(logr[,2], replace=T, size=samplesize)))
}
hist(boot2, freq=F, breaks=99, main = 'Bootstrap distribution of Mean of S&P500 Data')