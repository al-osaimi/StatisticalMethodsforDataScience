

x <- c(2, 6, 7, 9, 12)  
y <- c(90, 45, 30, 5, 2)

plot(x, y, main = "Call-to-Shock Time vs Survival Rate",
     xlab = "Mean Call-to-Shock Time (minutes)", ylab = "Survival Rate (%)",
     pch = 19, col = "blue")
grid()


model <- lm(y ~ x)

abline(model, col = "red", lwd = 2)

summary(model)

coef = coef(model)

slope <- coef[2]
intercept <- coef[1]


predicted_rate <- predict(model, data.frame(x = 10))
cat("Predicted rate ", round(predicted_rate, 2), "%\n")
