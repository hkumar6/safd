library('MASS')
FRWRD <- read.table("~/Codes/safd/lab8/FRWRD.txt", quote="")
FRWRD <- t(t(FRWRD))
len <- length(FRWRD)

degree = 9

#### test set method ####
trainingData <- sort(sample(1:len, replace=FALSE, size=len*0.7))
testData <- sort(setdiff(1:len, trainingData))
output <- polyreg(t(trainingData), t(FRWRD[trainingData]), degree)
yfit <- output[[2]]
a <- output[[1]]
plot(trainingData, yfit, type='l', ylim=c(0,4), xlim=c(0,len))
par(new=TRUE)
plot(testData, FRWRD[testData], type='p', col="red", ylim=c(0,4), xlim=c(0,len))

mse <- sum(((vandermonde(t(testData), degree) %*% a) - FRWRD[testData])^2)/length(testData)
print(mse)

#### leave-one-out cross validation ####