print("Sample Problem Solving in Central Limit Theorem (CLT)
Problem 1
A population has a mean (μ) of 70 and a standard deviation (σ) of 15. A sample of size 50 is
taken from this population.
1. a) What is the expected mean and standard deviation of the sampling distribution of
the sample mean?
2. b) What is the probability that the sample mean is greater than 74? Assume the
sample means are normally distributed.

")

sample2 <- 74
mean <- 70
o <- 15
sample <- 50

ox <- 15 / sqrt(sample)

Z <- (sample2 - mean) / ox

zscore <- pnorm(round(Z, 2))

Z

zscore

print(1 - zscore)
