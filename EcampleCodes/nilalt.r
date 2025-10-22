pre_score <- c(15, 12, 18, 20, 14, 11, 19)
post_test <- c(10, 8, 14, 15, 12, 9, 16)

wilcox.test(pre_score, post_test, paired = TRUE, exact = FALSE, correct = TRUE)
# Reject lol
