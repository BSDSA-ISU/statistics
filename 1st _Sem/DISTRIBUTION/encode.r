# A teacher wants to test whether the distribution of grades is her class follows the expected pattern. she categorizes the grades into 4 groups A B C D

# the expected proportion are:

# A=20%, B=30%, C=30%, D=20%

# In a sample of 60 students the observerd frequency are :
# A=8, B=20, C=22, D=10

# at a 5% significance level, tets whether the observed distrivution of grades differs signnificantly from the expected distribution using chi-squre goodness-of-fit test

observer <- c(8, 20, 22, 10)
expected <- c(.20, .30, .30, .20)
chisq_test <- chisq.test(observer, p = expected / sum(expected))
chisq_test
