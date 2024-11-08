
data("women")

# simple linear regression with weight and height
model_women <- lm(weight ~ height, data = women)

# predicted weights for all heights in the dataset
women$predicted_weight <- predict(model_women, newdata = women)

print(women$weight)

print(women$predicted_weight)

# Plot original and predicted weights
plot(women$height, women$weight, 
     main = "Original vs Predicted Weight",
     xlab = "Height", 
     ylab = "Weight",
     col = "blue", 
     pch = 16)

lines(women$height, women$predicted_weight, 
      col = "red", 
      lwd = 2)

legend("topleft", legend = c("Original Weight", "Predicted Weight"),
       col = c("blue", "red"), pch = c(16, NA), lty = c(NA, 1), lwd = c(NA, 2))



