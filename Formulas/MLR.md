# Multiple linear regressions

## TAble layout

| y | x1 | x2 | ($x_1)^2$ | $(x_2)^2$ | $x_1 y$ | $x_2 y$ |
| - | - | -| - | - | -| - |

## Supposed Goal

$$
\begin{aligned}
    y = \beta_0 + \beta_1 X1 + \beta_2 X2
\end{aligned}
$$

## Step 0.5

$$
\begin{aligned}
    \sum x_i y = \sum x_i y - \frac{(\sum x_i)(\sum y)}{n} \\
    \sum x_i^2 = \sum x_i^2 - \frac{(\sum x_i)^2}{n}
\end{aligned}
$$

## Step 1

$$
\beta_1 = \frac{(\sum x_i^2) (\sum x_1 y) - (\sum x_1 x_2)(\sum x_2 y)}{(\sum x_i^2)(\sum x_i^2) - \sum x_1 x_2}
$$

## Step 2

$$
\begin{matrix}
    \beta_2 = \frac{(\sum x_i^2)(\sum x_2 y) - (\sum x_1 x_2) (\sum x_1 y)}{(\sum x_1^2)(\sum x_2^2) - (\sum x_i x_2)^2}
\end{matrix}
$$

## step 3

$$
\begin{aligned}
    \beta_0 = \bar{y} - \beta_1 \bar{X1} - \beta_2 \bar{X2}
\end{aligned}
$$
