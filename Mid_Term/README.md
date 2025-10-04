# Module 3. Estimation Techniques

Estimation in statistics involves inferring the characteristics of a population based on a sample.
Various tools and techniques are employed to perform these estimations, each suited to different
types of data and estimation goals. Below is a detailed overview of the key tools and techniques
used for statistical estimation

## 1. Point Estimation

- Objective: Provide a single "best guess" value for a population

- parameter. Common Tools:

  - **Sample Mean ($\bar{x}$)**: Used to estimate the population mean.

  - **Sample Proportion ($\hat{p}$)**: Used to estimate the population proportion.
  - **Sample Variance ($s^2$)**: Used to estimate the population variance.
  - **Sample Standard Deviation ($\sigma$)**: Used to estimate the population standard deviation.

- Techniques:
  - **Method of Moments**: Estimates parameters by equating sample moments to population moments.
  - **Least Squares Estimation**: Often used in regression, it minimizes the sum of the squared differences between observed and predicted values.
  
Example:

Suppose you have the following sample data on the number of sales day for five
days: **50,55,60,65,70.**

**Sample Mean** ($\bar{x}$)**=
$\frac{50+55+60+65+70}{5}=60$

**Sample Proportion** ($\hat{p}$)**=
$\frac{(50-60)^2 + (55-60)^2 +(60-60)^2+(65-60)^2+(70-60)^2}{(5-1)}=62.5$

**critical value** =

$$
t_{\text{crit, two-tailed}} = t_{1 - \frac{\alpha}{2}, \, df}
$$

$$
t_{\text{crit, one-tailed}} = t_{1 - \alpha, \, df}
$$

$$
t_{\text{crit}} = t_{0.975, \, 4} \approx 2.776
$$

**R code**:

```r
# Sample data
data <- c(50, 55, 60, 65, 70)
# Sample mean
mean(data)
# Sample variance
var(data)
# Sample standard deviation
sd(data)
```

## 2. Interval Estimation

- Objective: Provide a range of values (interval) within which the population parameter islikely to lie, along with a confidence level.

**Common Tools:**

1. **Confidence Interval (CI)** - An interval estimate for a population parameter, e.g., a
95% CI for the population mean.
2. **Prediction Interval** - An interval estimate for a single future observation.
3. **Tolerance Interval** - An interval within which a specified proportion of the
population is expected to fall.

Techniques:

1. **Normal Distribution (Z-distribution)** - Used for large sample sizes or when the
population standard deviation is known.
2. **T-Distribution** - Used for small sample sizes when the population standard
deviation is unknown.
3. **Bootstrap Methods** - Non-parametric method that uses resampling with
replacement to estimate the sampling distribution of a statistic.

**Example:**

$$
\begin{aligned}
\bar{X} \pm t_{a/2, n-1} * \frac{s}{\sqrt{n}} \\
\text{Using } t_{0.025,4} = 2.776: CI \\
60 \pm 2.776 * \frac{8}{\sqrt{5}} \\
60 \pm 9.9 \\
\underline{[ 50.1, 69.9 ]}
\end{aligned}
$$

**Where**:

confidence level($a$) = $95\% = \frac{0.05}{2} = 0.025$

60 → mean

7.906 (≈ 8) → sample SD

0.025 → half of significance level ( 𝛼 / 2 )

4 → degrees of freedom (n-1)

2.776 → critical t value

**R code**:

```r
# Sample data
data <- c(50, 55, 60, 65, 70)
# Confidence interval for mean
t.test(data)$conf.int
```

**3. Maximum Likelihood Estimation (MLE)**:

- **Objective** - Estimate the parameters of a probability distribution by maximizing the
likelihood function.

**Common Tools**:

1. Likelihood Function- Represents the probability of observing the given sample
data as a function of the parameters.

2. Log-Likelihood- The natural logarithm of the likelihood function, often used
because it simplifies the math.

**Techniques:**

1. **Differentiation and Optimization** - The likelihood function is differentiated with
respect to the parameters, and the resulting equations are solved to find the
maximum likelihood estimates (MLEs).

2. **Numerical Methods** - Used when analytic solutions are difficult, such as the
Newton-Raphson method.

Example 1. For a dataset of coin flips with heads(H) occurring 40 times out of
100 flips, the likelihood function for the probability p of heads is: L(p)=p40 x (1-
p)60 Maximizing the likelihood: log L(p)=40 log p + 60 log (1-p) Differentiating
and solving: $\hat{p} = \frac{40}{100} = 0.4$

**R Code**:

```r
# Coin flip data (40 heads out of 100 flips)
library(stats4)

coin_likelihood <- function(p) {
return(-(40 * log(p) + 60 * log(1 - p))) # Negative Log Likelihood
}

mle(coin_likelihood, start = list(p = 0.5))
```

**Example 1: Estimating the Mean of a Normal Distribution (Known Variance)**:

**Problem**:

Given the data: $X_1, X_2,....,X_n = \prod^n_{i=1} \frac{1}{\sqrt{2 \pi \sigma^2}} \ exp -\frac{(X_i - \mu)^2}{2 \sigma^2}$

The likelihood function is: $Log \ L(\mu) = -\frac{n}{2} log(2\pi \sigma^2) - \frac{1}{2\sigma^2} \sum^n_{i=1} (X_i - \mu)^2$

Differentiating with respect $\mu$ and setting it to 0: $\frac{d}{du} \ log \ L(\mu) = -\frac{n}{2} log(2\pi \sigma^2) - \frac{1}{\sigma^2} \sum^n_{i=1} (X_i - \mu)$

**or just**:

### $\hat{\mu} = \frac{\sum^n_{i=1} X_i}{n}$

**R code**:

```r
# sample data
data <- c(4.5, 5.1, 4.9, 5.2, 5.0)

# Mle for mean
mean(data)
```

**Example 2. Estimating Mean and Variance of a Normal Distribution**:

**problem**:

Given the data $X_1,X_2......,X_n ~ N(\mu, \sigma)^2$ estimate both the population mean $\mu$ and variance $\sigma$

**Paper and pen solution**:

Given the data: $L(\mu, \sigma^2; X_1, X_2,....,X_n) = \prod^n_{i=1} \frac{1}{\sqrt{2 \pi \sigma^2}} \ exp -\frac{(X_i - \mu)^2}{2 \sigma^2}$

The likelihood function is: $Log \ L(\mu, \sigma^2) = -\frac{n}{2} log(2\pi \sigma^2) - \frac{1}{2\sigma^2} \sum^n_{i=1} (X_i - \mu)^2$

maximizing the respect to $\mu$: $\hat{\mu}= \frac{1}{n} \sum^n_{i=1} X_i$

Maximixing the respect of $\sigma^2$: $\sigma^2 = \frac{1}{n} \sum^n_{i=1} (X_i - \hat{\mu})^2$

or just: $\sigma^2 = \frac{1}{n} \sum^n_{i=1} (X_i - \hat{\mu})^2.$

**R code**:

```r
# Sample data
data <- c(4.5, 5.1, 4.9, 5.2, 5.0)

# MLE for mean
mle_mean <- mean(data)

# MLE for variance (divide by n instead of n-1)
mle_variance <- var(data)  * (length(data)-1)/length(data)

# print out the result
mle_mean
mle_variance
```

**In latex/paper**:

$$
\begin{align} \\
\text{data: [4.5, 5.1, 4.9, 5.2, 5.0]} \\
\\
\text{First step is to get the mean:} \\
\hat{\mu} = \frac{4.5 + 5.1 + 4.9 + 5.2 + 5.0}{5} \\
\hat{\mu} = \frac{24.7}{5} \\
\underline{\hat{\mu} = 4.94} \\ 
\\
\text{now for } \sigma^2:\\
\sigma^2 = \frac{(4.5 - 4.94)^2 (5.1 - 4.94)^2 (4.9 - 4.94)^2 (5.2 - 4.94)^2 (5.0 - 4.94)^2}{5} \\
\sigma^2 = \frac{ 0.1936 + 0.0256 + 0.0016 + 0.0676 + 0.0036​}{5}\\
\sigma^2 = \frac{0.292}{5}\\
\sigma^2 = 0.0584
\end{align}
$$
