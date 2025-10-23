stress_bef <- c(15, 18, 11, 16, 19, 13, 17, 12)
stress_aft <- c(12, 14, 10, 15, 18, 12, 15, 11)

wilcox.test(stress_bef, stress_aft, paired = TRUE, exact = FALSE, correct = TRUE)

# Reject the null hypothesis.
# There is significant evidence that the stress reduction program
# decreased the median stress level of the participants.

## only two. reject(if < 0.05) and failed to reject(if > 0.05)

# p = 0.01 → reject (significant result)

# p = 0.04 → reject (still significant)

# p = 0.05 → right on the border; most people say “fail to reject” unless you like living dangerously

# p = 0.10 → fail to reject (not significant)