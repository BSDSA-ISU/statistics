mean_sample <- 85
sd_sample <- 5
n <- 12
alpha <- 0.05
df <- n - 1

t_critical <- qt(1 - alpha / 2, df = df)
margin_error <- t_critical * (sd_sample / sqrt(n))

lower_bound <- mean_sample - margin_error
upper_bound <- mean_sample + margin_error

x <- c(lower_bound, upper_bound)

x

print("************************************************")

mean_sample2 <- 14500
sd_sample2 <- 1200
n2 <- 30
alpha2 <- 0.01
df2 <- n2 - 1

t_critical2 <- qt(1 - alpha2 / 2, df = df2)
margin_error2 <- t_critical2 * (sd_sample2 / sqrt(n2))

lower_bound2 <- mean_sample2 - margin_error2
upper_bound2 <- mean_sample2 + margin_error2

c(lower_bound2, upper_bound2)
