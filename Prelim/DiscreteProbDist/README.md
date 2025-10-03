# Lecture 2: Discrete Probability Distributions

## Binomial Distribution

- **Key Concepts:**
  - A binomial distribution arises when there are a fixed number of independent trials, each with two possible outcomes (success or failure).

- **Properties:**
  - Fixed number of trials (n)
  - Probability of success (p) remains constant across trials
  - The variable of interest is the number of successes (x)

**PDF:**

- ## $P(x) =(\frac{n}{x}) p^x q^x = \frac{n!}{(n - x)!} p^x q^{n-x} .$

Where:

- n is the number of trials
- p is the probability of success
- is the binomial coefficient

**CDF:** The cumulative probability up to a certain number of successes can be calculated using software tools like R, Python, or statistical tables.

### Poisson Distribution

- **Key Concepts:**

  - Describes the probability of a given number of events occurring in a fixed interval of time or space, assuming the events occur independently.

- **PDF**

  - ## $P(x) = \frac{\lambda^x \ell^{-\lambda}} {x!}$

Where:

- λ is the average number of occurrences
- x is the number of occurrences

**CDF:** Can be computed for various values of xxx, using statistical software or tables.

## Lecture 3: Continuous Probability Distributions

### Normal Distribution

**Key Concepts:**

- The most commonly used distribution in statistics, often used to model real-world
phenomena like test scores, heights, etc.

**Properties:**

- Symmetrical, bell-shaped curve
- Mean (μ-mu) and standard deviation (σ-sigma) define the shape

**PDF:**

- ## $f(x) = \frac{1}{σ \sqrt{2\pi}} \ell^\frac{-(x - \mu)^2}{2σ^2}$

Where:

- μ is the mean
- σ is the standard deviation

**CDF:** The area under the curve up to a certain point, representing the probability that a value is
less than or equal to x.

## T distribution

### Key concept

- Similar to the normal distribution but with heavier tails, used when the sample size is
small and the population standard deviation is unknown.

Properties:

- Symmetrical, centered around zero
- The shape depends on degrees of freedom (df)

**PDF:**

- ## $f(t) = \frac{\Gamma(\frac{v + 1}2) }{\sqrt{v\pi}  \Gamma} (1 + \frac{t^2}{v})^\frac{v + 1}{2}$

Where ν is the degree of freedom.

**CDF:** The cumulative probability function is available through statistical software.

## Chi-square Distribution

### key concept

- Used primarily in hypothesis testing, especially for tests of independence and goodness
of fit.

**Properties:**

- Skewed distribution
- Non-negative values, with the shape depending on the degrees of freedom (df)

**PDF:**

$$
f(x) =
\begin{cases}
\dfrac{1}{2^{k - 2}\,\Gamma(k / 2)} \, x^{k/2 - 1} \, e^{-x/2}, & x > 0 \\
0, & x \leq 0
\end{cases}
$$

Where:

- k is the degree of freedom.

**CDF:** This can be obtained using R

## Discussion

- Probability Density Function (PDF): A function that describes the likelihood of a random variable taking on a particular value.
- For continuous distributions, the area under
the curve of the PDF represents probabilities.
- Cumulative Distribution Function (CDF): A function that gives the probability that a
random variable is less than or equal to a certain value.
Key Takeaways:
- For discrete distributions, the sum of the probabilities from the PDF gives the CDF.
- For continuous distributions, the integral of the PDF gives the CDF.

### Assessment

1. Solve problems involving Binomial and Poisson distributions.
2. Compute probabilities using PDFs and CDFs for Normal, t, and Chi-square distributions.

**References:**

- "Introduction to Probability and Statistics" by Mendenhall, Beaver, and Beaver

- "Probability and Statistics for Engineers and Scientists" by Walpole, Myers, and Myers.

## Exercise 1: Binomial Distribution

**Problem:** Suppose a factory produces 10% defective items. If a sample of 15 items is taken,
what is the probability that exactly 3 items will be defective?

**Solution:** We will use the binomial distribution formula or R's dbinom() function for calculating

**the probability.**

- n=15 (number of trials)
- p=0.10 (probability of success)
- x=3 (number of defective items)

**FORMULA:**

- ### $P(\bar{X} = 3) = \frac{15}2 (10)^3 (1- 10)^{15-3}$

**Code:**

```r
# Parameters

n <- 15 # number of trials
p <- 0.10 # probability of success
x <- 3 # number of successes

# Binomial probability
binom_prob <- dbinom(x, size = n, prob = p)
binom_prob
```

**Output:**

- 0.1306859

- Interpretation: The probability that exactly 3 items out of 15 are defective is approximately 13.07%.

### Exercise 2: Poisson Distribution

- Problem 1: A call center receives an average of 5 calls per hour. What is the probability that the center will receive exactly 8 calls in the next hour?
- Problem 2. A website gets an average of 10 visitors per hour. What is the probability
that exactly 8 visitors will visit the website in the next hour.

- Solution Problem 1: We will use the Poisson distribution formula or R's dpois() function.
  - λ=5 (average rate of occurrences)
  - x=8 (number of calls)

Seatwork-Solution for Problem 2

R Code for Problem 1

```r
# Parameters
lambda <- 5 # average number of calls
x <- 8 # number of calls
# Poisson probability
pois_prob <- dpois(x, lambda = lambda)
pois_prob
```

Output:

- [1] 0.065306

- Interpretation: The probability of receiving exactly 8 calls in an hour is about 6.53%.

### Exercise 3: Normal Distribution

- Problem: The IQ scores of a population are normally distributed with a mean of 100 and a
standard deviation of 15. What is the probability that a randomly selected individual has an IQ between 85 and 115?

- Solution: We will use the normal distribution's CDF to find the probability that the IQ lies
between 85 and 115.

  - μ=100 (mean)
  - σ=15 (standard deviation)
  - We need P(85<X<115).

R Code:

```r
# Parameters
mean <- 100 # mean
sd <- 15 # standard deviation

# CDF for 85 and 115
prob_85 <- pnorm(85, mean = mean, sd = sd)
prob_115 <- pnorm(115, mean = mean, sd = sd)

# Probability between 85 and 115
prob_between <- prob_115 - prob_85
prob_between
```

Output:

- [1] 0.6826895

- Interpretation: The probability that a randomly selected individual has an IQ between 85 and 115 is approximately 68.27%, which aligns with the empirical rule.

### Exercise 4: t-Distribution

- Problem: A sample of 12 students has a mean test score of 85 with a standard deviation of 5. What is the 95% confidence interval for the population mean test score?
- Solution: We will use the t-distribution because the sample size is small and the population standard deviation is unknown.

  - Sample size n=12
  - Sample mean xˉ=85
  - Sample standard deviation s=5
  - Degrees of freedom df=n−1
  - 95% confidence level

R Code:

```r
# Parameters
mean_sample <- 85 # sample mean
sd_sample <- 5 # sample standard deviation
n <- 12 # sample size
alpha <- 0.05 # 95% confidence level
df <- n - 1 # degrees of freedom

# t-critical value
t_critical <- qt(1 - alpha/2, df = df)
# Margin of error
margin_error <- t_critical * (sd_sample / sqrt(n))

# Confidence interval
lower_bound <- mean_sample - margin_error
upper_bound <- mean_sample + margin_error
c(lower_bound, upper_bound)
```

***Output:**

```txt
csharp
Copy code
[1] 81.68171 88.31829
```

**Interpretation: The 95% confidence interval for the population mean test score is between 81.68 and 88.32.**

81.68 and 88.32.
Exercise 5: Chi-square Distribution
Problem: A study investigates whether a six-sided die is fair. The observed frequencies for the
faces are: 4, 6, 9, 7, 8, 6. Test the null hypothesis that the die is fair using a Chi-square goodness
of-fit test at a 5% significance level.
Solution: The expected frequency for each face of a fair die is 406≈6.67\frac{40}{6} \approx
6.67640≈6.67, where 40 is the total number of observations.
• Observed: O=[4,6,9,7,8,6]
• Expected: E=[6.67,6.67,6.67,6.67,6.67,6.67]
R Code:

```r
# Observed and expected frequencies
observed <- c(4, 6, 9, 7, 8, 6)
expected <- rep(40 / 6, 6) # fair die expected frequencies

# Chi-square test
chisq_test <- chisq.test(observed, p = expected/sum(expected))
chisq_test
```

**Output:**

```txt
Chi-squared test for given probabilities
data: observed
X-squared = 1.9333, df = 5, p-value = 0.8572
```

**Interpretation: Since the p-value (0.8572) is greater than 0.05, we fail to reject the null
hypothesis. The data does not provide enough evidence to conclude that the die is
unfair.**
