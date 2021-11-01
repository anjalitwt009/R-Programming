# ?sample : Help
# ??sample : keyword help

# install.packages or http://cran.r-project.org
# 1. Open RStudio.
# 2. Make sure you are connected to the Internet.
# 3. Run install.packages("ggplot2") at the command line.

# to load it in your R session with the command library("ggplot2").
# qplot will use the first vector as a set of x values and the second vector as a set of y values. 

install.packages("ggplot2")
library("ggplot2")

x <- c(-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1)
## -1.0 -0.8 -0.6 -0.4 -0.2 0.0 0.2 0.4 0.6 0.8 1.0
y <- x^3
## -1.000 -0.512 -0.216 -0.064 -0.008 0.000 0.008
## 0.064 0.216 0.512 1.000
qplot(x, y)


# Histogram
x <- c(1, 2, 2, 2, 3, 3)
qplot(x, binwidth = 1)

x2 <- c(1, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 4)
qplot(x2, binwidth = 1)

# replicate provides an easy way to repeat an R
# command many times. To use it, first give replicate the number of times you wish to
# repeat an R command, and then give it the command you wish to repeat.

replicate(3, 1 + 1)
## 2 2 2

roll <- function() {
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE)
  sum(dice)
}

replicate(10, roll())
## 3 7 5 3 6 2 3 8 11 7

rolls <- replicate(10000, roll())
qplot(rolls, binwidth = 1)

# You will need to add a prob argument to the sample function inside of roll. This argument should tell sample to sample the numbers one through five with probability 1/8
# and the number 6 with probability 3/8.

roll <- function() {
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE,
                 prob = c(1/8, 1/8, 1/8, 1/8, 1/8, 3/8))
  sum(dice)
}

rolls <- replicate(10000, roll())
qplot(rolls, binwidth = 1)

# The dice are now clearly biased towards high numbers, since high sums occur much more often than low sums.



