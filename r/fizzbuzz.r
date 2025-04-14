range <- 1:100
fizzbuzz <- 1:100
fizzbuzz[range %% 3 == 0] <- "fizz" 
fizzbuzz[range %% 5 == 0] <- "buzz"
fizzbuzz[range %% 15 == 0] <- "fizzbuzz"
fizzbuzz