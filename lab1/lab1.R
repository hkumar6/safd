d.csp0108 <- read.table("~/Codes/safd/lab1/d-csp0108.txt", header=TRUE, quote="\"")
plot(d.csp0108[,1], d.csp0108[,2], main = "Scatter plot for Column 1", xlab = "Dates", ylab = "Values")
plot(d.csp0108[,1], d.csp0108[,3], main = "Scatter plot for Column 2", xlab = "Dates", ylab = "Values")
