d.csp0108 <- read.table("~/Codes/safd/lab7/d-csp0108.txt", header=TRUE, quote="")
print('Citigroup')
qnorm(0.001)*sd(d.csp0108[,2]) + mean(d.csp0108[,2])
sort(d.csp0108[,2])[2011*0.001]
qnorm(0.01)*sd(d.csp0108[,2]) + mean(d.csp0108[,2])
sort(d.csp0108[,2])[2011*0.01]
qnorm(0.05)*sd(d.csp0108[,2]) + mean(d.csp0108[,2])
sort(d.csp0108[,2])[2011*0.05]
qnorm(0.1)*sd(d.csp0108[,2]) + mean(d.csp0108[,2])
sort(d.csp0108[,2])[2011*0.1]
print('S&P 500')
qnorm(0.001)*sd(d.csp0108[,3]) + mean(d.csp0108[,3])
sort(d.csp0108[,3])[2011*0.001]
qnorm(0.01)*sd(d.csp0108[,3]) + mean(d.csp0108[,3])
sort(d.csp0108[,3])[2011*0.01]
qnorm(0.05)*sd(d.csp0108[,3]) + mean(d.csp0108[,3])
sort(d.csp0108[,3])[2011*0.05]
qnorm(0.1)*sd(d.csp0108[,3]) + mean(d.csp0108[,3])
sort(d.csp0108[,3])[2011*0.1]
