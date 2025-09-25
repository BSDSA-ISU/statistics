observer <- c(4, 6, 9, 7, 8, 6); Expected <- rep(40 / 6, 6); chisq_test <- chisq.test(observer, p = Expected/sum(Expected)); chisq_test
