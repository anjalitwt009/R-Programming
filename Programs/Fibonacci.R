var = readline("Enter any number : ")
n = as.integer(var)
Fibonacci <- numeric(n)  #List declaration
Fibonacci[1] <- Fibonacci[2] <- 1 #Assigning 1st and 2nd element
for (i in 3:n) Fibonacci[i] <- Fibonacci[i - 2] + Fibonacci[i - 1]
sprintf("First %d Fibonacci numbers:",n)
print(Fibonacci)
