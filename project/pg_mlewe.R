x <- -n*-0.0448/sqrt(n*0.0737)
MLE_Weibull <- function(x){
  e <- 0.0000001
  r <- length(x)
  beta <- 1
  theta <- 1
  while(LWeibullBeta(beta, theta, x) > e && LWeibullTheta(beta, theta, x) > e){
    
    theta <- ( r / ( sum(x^beta) ) )^(1/beta)
    denom <- r*log(theta) + sum(log(x))
    for(i in 1:r){
      denom <- denom + (-(theta * x[i])^beta) * (log(theta*x[i]))
    }
    
    beta <- -(r / denom )
  }
  estimator <- c(theta, beta)
  return(estimator)
  
}

LWeibullBeta <- function(beta, theta, x){
  r <- length(x)
  BETA <- r/beta + r*log(theta) + sum(log(x))
  
  for(i in 1:r){
    BETA <- BETA + (-(theta * x[i])^beta) * (log(theta*x[i]))
  }
  
  return(BETA)
}

LWeibullTheta <- function(beta, theta, x){
  r <- length(x);
  
  return ( (r*beta)/theta - (sum(x^beta))*beta*(theta^(beta-1))  )
}