data <- data.frame(
  x = c(2, 2, 2.5, 3, 4, 5, 5, 5),
  y = c(90, 83, 125, 150, 144, 200, 250, 300)
)

model = lm(y ~ x, data = data)

plot(data$x, data$y, main = "Prices", xlab = "Rooms", ylab = "Price")
abline(model, col = "red")

hist(data$y, main = "Prices", col = "green")
