# Sample data
x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 5, 4, 5)

# Linear regression model
model <- lm(y ~ x)

# Show summary (coefficients, R-squared, etc.)
summary(model)

# Predict new Y values
predicted_y <- predict(model, data.frame(x = x))
print(predicted_y)
