x2 <- c(6.5, 7.2, 5.8, 6.9, 7.5, 6.3, 8.0, 7.8, 5.9, 6.7, 6.4, 7.1, 6.6, 7.3, 6.8)


mean_sample2 <- mean(x = x2)
sd_sample2 <- sd(x = x2)
n2 <- length(x2)

alpha2 <- 0.05
df2 <- n2 - 1

t_critical2 <- qt(1 - alpha2 / 2, df = df2)
margin_error2 <- t_critical2 * (sd_sample2 / sqrt(n2))

lower_bound2 <- mean_sample2 - margin_error2
upper_bound2 <- mean_sample2 + margin_error2


