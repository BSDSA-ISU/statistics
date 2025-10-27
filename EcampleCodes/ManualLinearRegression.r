# Sample data
x <- c(1, 2, 3, 4, 8, 98)
y <- c(2, 4, 6, 8, 9, 99)

# Means
x_mean <- mean(x)
y_mean <- mean(y)

# Calculate coefficients
b1 <- sum((x - x_mean) * (y - y_mean)) / sum((x - x_mean)^2)
b0 <- y_mean - b1 * x_mean

# Predictions
y_pred <- b0 + b1 * x

# Results
cat("Intercept (b0):", b0, "\n")
cat("Slope (b1):", b1, "\n")

# Optional: compute R-squared manually
ss_total <- sum((y - y_mean)^2)
ss_res <- sum((y - y_pred)^2)
r_squared <- 1 - (ss_res / ss_total)
cat("R-squared:", r_squared, "\n")
