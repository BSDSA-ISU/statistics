# Data
drug_a <- c(7, 9, 8, 7, 6, 9, 8, 7, 9, 6)
drug_b <- c(5, 7, 6, 5, 8, 6, 7, 5, 6, 4)
drug_c <- c(3, 4, 2, 3, 5, 4, 3, 2, 4, 3)

# Combine into one vector
Score <- c(drug_a, drug_b, drug_c)

# Group labels
Group <- factor(rep(c("Drug_A", "Drug_B", "Drug_C"), each = 10))

# Data frame
pain_dih <- data.frame(Score, Group)

# Kruskal-Wallis test
kruskal.test(Score ~ Group, data = pain_dih)
