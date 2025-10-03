# A population has a mean (μ) of 120 and a standard deviation (σ) of 25.
# A random sample of size 64 is drawn from this population.

# a. What is the mean and standard deviation of the
# sampling distribution of the sample mean?

# b. What is the probability that the sample mean
# will be between 115 and 125? Solution:
x1 <- 115
x2 <- 125
mu <- 120
sd <- 25
sample_size <- 64

# Sampling distribution
sampling_distribution_o <- sd / sqrt(sample_size)

# Calculate z scores
z1 <- (x1 - mu) / sampling_distribution_o

z2 <- (x2 - mu) / sampling_distribution_o

# set their value according to z normal dist table and R makes that easy
z1 <- pnorm(z1)
z2 <- pnorm(z2)

if (z1 > z2) {
  final_value <- z1 - z2
}
if (z1 < z2) {
  final_value <- z2 - z1
}

# Convert final value to decimal
final_valued <- final_value * 100

sprintf("The probability that the sample mean will be between 115
 and 125 is: %f", final_valued)
