# Sample Problem Solving in Central Limit Theorem (CLT)

## Problem 1

- A population has a mean (μ) of 70 and a standard deviation (σ) of 15. A sample of size 50 is
taken from this population.**
  - a) What is the expected mean and standard deviation of the sampling distribution of the sample mean?
  - b) What is the probability that the sample mean is greater than 74? Assume the
sample means are normally distributed.

- **Solution:**
Part (a): Expected Mean and Standard Deviation of the Sampling Distribution
- **Expected Mean of the Sampling Distribution:**
According to the Central Limit Theorem, the expected mean ( μx̄) of the sampling
distribution of the sample mean is equal to the mean of the population (μ):

- **Standard Deviation of the Sampling Distribution (Standard Error):** The standard
deviation of the sampling distribution of the sample mean, also known as the
standard error μx̄ , is given by:

- ## $σ_{\bar{x}} = \frac{σ}{\sqrt{n}}$

- Where:
  - **σ** is the population standard deviation.
  - **n** is the sample size.

- **Plugging in the values:**
  - $\sigma_{\bar{x}} = \frac{15}{\sqrt{50}} \approx 2.12$

- So, the standard deviation (standard error) of the sampling distribution is:
- approximately **2.12.**
  - Part (b): Probability that the Sample Mean is Greater than **74**

    - **Step 1. Find the Z-score**
The Z-score for the sample mean can be calculated using the formula:

      - ## $Z = \frac{x = \mu_{\bar{x}}}{σ_{\bar{x}}}$

  - Where:
    - **$\bar{x}$** is the sample mean (74 in this case).
    - **$\bar{\mu}_{\bar{x}}$** is the mean of the sampling distribution (70).
    - **$\sigma$** is the standard deviation of the sampling distribution (2.12).

  - Plugging in the values:
  
    - $Z = \frac{74 - 70}{2.12} \approx \frac{4}{2.12} \approx 1.89$

  - **Step 2. Find the Probability**
    - The probability that the sample mean is greater than **74** is the area under the standard normal curve to the right of the **Z-score 1.89.**
      - Using a standard normal distribution table or a calculator, the probability
corresponding to a **Z-score of 1.89 is approximately 0.9706.**
    - Therefore, the probability to the right of this Z-score is:
    - $P( > 74) = 1 - 0.9706 = 0.294 \ or \ 2.94 \% .$

- Conclusion:
  - **The probability that the sample mean is greater than 74 is approximately 0.0294 or
2.94%**

---

## Problem 2

- A population has a mean (μ) of 120 and a standard deviation (σ) of 25. A random sample of size 64 is drawn from this population.

  - a. What is the mean and standard deviation of the sampling distribution of the sample
mean?
  - b. What is the probability that the sample mean will be between 115 and 125?
Solution:

- **Part (a):** Mean and Standard Deviation of the Sampling Distribution
  - Mean of the Sampling Distribution:
**μx̄ =μ=120**
  - **Standard Deviation of the Sampling Distribution (Standard Error):**
- **Part (b):** Probability that the Sample Mean is Between **115** and **125**

- **Step 1**. Calculate the **Z-scores for 115 and 125.**

- For x̄ 115:

  - ## $Z = \frac{115 - 120}{3.125} = \frac{-5}{3.125} \approx -1.6$

- For x̄ 125:

  - ## $Z = \frac{125 - 120}{3.125} = \frac{5}{3.125} \approx 1.6$

- **Step 2.** Find the probabilities corresponding to these Z-scores.
Using a standard normal distribution table or calculator:

  - The probability corresponding to **Z=−1.6** is approximately **0.0548.**

  - The probability corresponding to **Z=1.6** is approximately **0.9452.**

- **Step 3**. Find the probability that the sample mean is between **115 and 125**.

  - $P(115 < \bar{X} < 125) = P(Z < 1.6) - P(Z < -1.6) = 0.9452 - 0.0548 = 0.8904$

- Conclusion:
  - The probability that the sample mean will be between **115 and 125** is **0.8904** or **89.04%**

---

## Problem 3

- The average score on a national exam is **500** with a **standard deviation of 100**. A random **sample of 36 students** is selected.

  - a) What is the probability that the **sample mean score** is more than **520**?
  - b) What is the probability that the sample mean score is **less than 480?**

- **Solution:**

- Part (a): Probability that the Sample Mean is More Than **520**
  - **Step 1**. Find the mean and standard deviation of the sampling distribution.

    - $\mu_{\bar{x}} = 500, \sigma_{\bar{x}} = \frac{100}{\sqrt{36}} = \frac{100}{6} \approx 16.67$

  - **Step 2**. Calculate the Z-score for **x̄=520**.

    - $Z = \frac{520 - 500}{16.67} \approx \frac{20}{16.67} \approx 1.2$

  - **Step 3. Find the probability that the sample mean is **more than 520**.

- Using a standard normal distribution table:

  - The probability corresponding to **Z=1.2** is approximately **0.8849.**
  - So, the probability to the right **(more than 520)** is:

    - $P(\bar{X} > 520) = 1 - 0.8849 = 0.1151$

- Conclusion:
  - The probability that the sample mean score is more than **520** is **0.1151** or **11.51%.**

- Part (b): Probability that the Sample Mean is Less than **480**

  - **Step 1**. Calculate the Z-score for **x̄ =480**.

    - $Z = \frac{480 - 500}{16.67} \approx \frac{-20}{16.67} \approx -1.2$

  - **Step 2**. Find the probability that the sample mean is less than **480**.

- Using the standard normal distribution table:
  - The probability corresponding to **Z=− 1.2** is approximately **0.1151.**

- Conclusion:
  - The probability that the sample mean score is less than 480 is **0.1151** or **11.51%.**
