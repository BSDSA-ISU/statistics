# prior param

alpha_prior <- 2
beta_prior <- 2

n <- 10
k <- 8

# posteriori parameters
alpha_post <- alpha_prior + k
beta_post <- beta_prior + (n - k)

# posteriori mean()
post_mean <- alpha_post / (alpha_post + beta_post)
cat("posteriori mean: ", round(post_mean, 3), "\n")

# as % credible interval P
ci <- qbeta(c(0.025, 0.975), alpha_post, beta_post)
cat("95% Credible Interval", round(ci, 3), "\n")
