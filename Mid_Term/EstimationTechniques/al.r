# 1.
data <- c(10.8, 11.1, 12.0, 10.5, 11.8, 10.9, 11.2)
mean(data)
var(data)

#2. 
mu <- 11
mean((data - mu)^2)

# 3.
library(stats4)

# Log-likelihood with positive sigma ensured
logL <- function(data, m, s2) {
  -length(data)/2 * log(2*pi*s2) -sum((data - m)^2)/(2*s2)
}

logL(data, mean(data), var(data))

#4. 
x1 <- c(5.1, 4.9, 4.7, 5.0, 5.4, 4.6, 5.6)
x2 <- c(3.5, 3.0, 3.2, 3.6, 3.9, 3.4, 3.4)

datae <- cbind(x1, x2)

mle_mean <- colMeans(datae)
mle_covariance <- cov(datae)
mle_mean
mle_covariance







xx1 <- c(5.2, 5.1, 4.8)
xx2 <- c(3.5, 3.8, 3.0)
dataee <- cbind(xx1, xx2)
mle_mean <- colMeans(dataee)
mle_covariance <- cov(dataee)
mle_mean
mle_covariance