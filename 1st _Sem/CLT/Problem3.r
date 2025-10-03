#"average score on a national exam is 500 with a standard deviation of 100.
# A random sample of 36 students is selected."

#"a) What is the probability that the sample mean score is more than 520?"

#"b) What is the probability that the sample mean score is less than 480?"

sd <- 100
x1 <- 520
x2 <- 480
mu <- 500
sample_size <- 36

# performing Sampling Distribution formula
sdf <- sd / sqrt(sample_size)

# Doing the z score
z1 <- (x1 - mu) / sdf
z2 <- (x2 - mu) / sdf

# find their z score value on the table
z1 <- pnorm(z1)
z2 <- pnorm(z2)

# for a.
answer_a <- 1 - z1

# Converting it to percentage
answer_a_d <- answer_a * 100

# a conclusion
sprintf("The probability that the sample mean score
 is more than 520 is %f percent.", answer_a_d)

# For part b.


# No need for 1 – here, because the table directly gives left-tail
# probabilities. so skipping it

# The answer is already done via pnorm(z2)
answerba_dz <- z2 * 100

sprintf("The probability that the sample mean score is less than
 480 is %f percent", answerba_dz)