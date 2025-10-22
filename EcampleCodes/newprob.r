# fk this pussy

drug_a <- c(7, 9, 8, 7, 6, 9, 8, 7, 9, 6)
drug_b <- c(5, 7, 6, 5, 8, 6, 7, 5, 6, 4)
drug_c <- c(3, 4, 2, 3, 5, 4, 3, 2, 4, 3)

all_data <- factor(rep(c(drug_a, drug_b, drug_c), each = 10))
pain_dih <- data.frame(Score = all_data, Group = c(drug_a, drug_b, drug_c))

kruskal.test(Score - Group, data = pain_dih)