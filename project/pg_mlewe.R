
MLE_Weibull <- function(x){
  e <- 10^-6
  r <- length(x)
  beta <- 0.6
  theta <- 0.6
  while(abs(LWeibullBeta(beta, theta, x)) > e && abs(LWeibullTheta(beta, theta, x)) > e){
    
    theta <- ( r / ( sum(x^beta) ) )^(1/beta)
    #denom <- r*log(theta) + sum(log(x))
    #for(i in 1:r){
    #  denom <- denom + (-(theta * x[i])^beta) * (log(theta*x[i]))
    #}
    
    beta <- -r/(r*log(theta) + sum(log(x)) - sum((theta*x)^beta + log(theta*x)))
  }
  estimator <- c(theta, beta)
  return(estimator)
  
}

LWeibullBeta <- function(beta, theta, x){
  r <- length(x)
  BETA <- r/beta + r*log(theta) + sum(log(x)) - sum((theta*x)^beta * log(theta*x))
  #for(i in 1:r){
  #  BETA <- BETA + (-(theta * x[i])^beta) * (log(theta*x[i]))
  #}
  return(BETA)
}

LWeibullTheta <- function(beta, theta, x){
  r <- length(x);
  return ( (r*beta)/theta - (sum(x^beta))*beta*(theta^(beta-1))  )
}