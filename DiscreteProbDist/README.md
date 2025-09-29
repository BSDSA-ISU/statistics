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

- $
f(x) = \frac{1}{2^{k - 2}\Gamma(k / 2)}^{x^{k/2 -1}\ell^{-x / 2}} for x > 0, \\
0 for x <= 0.
$

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

- ### $P(X = 3) = \frac{15}2 (10)^3 (1- 10)^{15-3}$
