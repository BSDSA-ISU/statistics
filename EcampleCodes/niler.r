# company develops 2 differents ui for a new mobile app
# Recruits 10 independent users for its interface witha set of task use
# is for (out of 50) recorded for each user
# The researchers suspects that the user didn't follow.
#  so a null paraametric is solved

# Is there a signifficant difference in the median
# usability between the two user interface

ui_a <- c(35, 41, 29, 38, 45, 33, 31, 37, 42)
ui_b <- c(28, 30, 25, 34, 39, 32, 27, 36, 26, 30)

wilcox.test(ui_a, ui_b, exact = FALSE, correct = TRUE)
# accept the null hypothesis
