# Shortcuts:
# ctrl + shift + c : Comment
# Tab inside function : Parameters check.
# ctrl + c : Cancel command
# args(round) : check aarguments in function.

#####################################################################

# What's an object? Just a name that you can use to call up stored data.

#  > 100:130
# [1] 100 101 102 103 104 105 106 107 108 109 110 111 112
# [14] 113 114 115 116 117 118 119 120 121 122 123 124 125
# [25] 126 127 128 129 130

# R is a dynamic programming language, which means R automatically interprets your code as you run it.
# Assignment :  a <- 1 , die <- 1:6
# You can see which object names you have already used with the function ls: ls()

# > die - 1
## 0 1 2 3 4 5

# > die / 2
## 0.5 1.0 1.5 2.0 2.5 3.0

# > die * die
## 1 4 9 16 25 36

# Vector recycling: If you give R two vectors of unequal lengths, R will repeat the shorter vector until it is
# as long as the longer vector, and then do the math. This isn't a
# permanent change-the shorter vector will be its original size after R does the math. If
# the length of the short vector does not divide evenly into the length of the long vector,
# R will return a warning message.

die <- 1:6
print(die + 1:2)
# 2 4 4 6 6 8

print(die + 1:4)
# 2 4 6 8 6 8
# Warning message:
# In die + 1:4 :
# longer object length is not a multiple of shorter object length

# Traditional matrix multiplication.
# You can do inner multiplication with the %*% operator and outer multiplication with the %o% operator
print(die %*% die)
# [1,] 91

print(die %o% die)
# [,1] [,2] [,3] [,4] [,5] [,6]
# [1,] 1 2 3 4 5 6

#  Random sampling, round function, or calculate its factorial

round(3.1415)
## 3
factorial(3)
## 6
mean(1:6)
## 3.5
mean(die)
## 3.5
round(mean(die))
## 4

sample(x = 1:4, size = 2)
## 3 2
sample(x = die, size = 1)
## 2
sample(x = die, size = 1)
## 1
sample(x = die, size = 1)
## 6

args(round)
## function (x, digits = 0)
## NULL

round(3.1415, digits = 2)
## 3.14

sample(die, 1)
## 2

sample(size = 1, x = die)
## 2

# With replacement sampling
sample(die, size = 2, replace = TRUE)
## 5 5

dice <- sample(die, size = 2, replace = TRUE)
dice
## 2 4
sum(dice)
## 6

# The Function Constructor:

roll <- function() {
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE)
  sum(dice)
}

roll()
# 9

roll2 <- function(bones) {
  dice <- sample(bones, size = 2, replace = TRUE)
  sum(dice)
}

roll2(bones = 1:4)
## 3
roll2(bones = 1:6)
## 10
roll2(1:20)
## 31

roll2()
## Error in sample(bones, size = 2, replace = TRUE) :
## argument "bones" is missing, with no default

roll2 <- function(bones = 1:6) {
  dice <- sample(bones, size = 2, replace = TRUE)
  sum(dice)
}

roll2()
## 9






