group_a <- c(22, 25, 30, 32, 35, 38)
group_b <- c(18, 20, 24, 26, 28, 30, 40)

# Ho (no difference)
# Syntaxes

wilcox.test(group_a, group_b, exact = FALSE, correct = TRUE)
# P-value is less than 0.05 = False so failed to reject null