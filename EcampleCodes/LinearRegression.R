x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 5, 4, 5)
model <- lm(y ~ x)
summary(model)

"\n\n\n"

# gambler w/l
x <- c(1,2,3,4,5,6,7,8)
y <- c(-5,-2,0,3,1,4,6,5)
model <- lm(y ~ x)
summary(model)