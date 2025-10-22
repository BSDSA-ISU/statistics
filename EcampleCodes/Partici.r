stress_bef <- c(15, 18, 11, 16, 19, 13, 17, 12)
stress_aft <- c(12, 14, 10, 15, 18, 12, 15, 11)

wilcox.test(stress_bef, paired = TRUE, stress_aft, exact = FALSE, correct = TRUE)
# reject the null hypothesis. no.
# the stress reduction program didn't decreases the
# median stress level of the participants