
data("ChickWeight")

# weight as the dependent variable and Time as the independent variable
model_chick <- lm(weight ~ Time, data = ChickWeight)

summary_model <- summary(model_chick)

print(summary_model)

# 1. Find the coefficient of determination for the simple linear regression model of the data set chickweight.
# Coefficient of determination (R-squared)
r_squared <- summary_model$r.squared
cat("coefficient of determination (R-squared):", r_squared, "\n")

# 2. Decide whether there is a significant relationship between the variables in the linear regression model of the data set chickweight at .05 significance level.

#view p-value for Time variable
p_value <- summary_model$coefficients["Time", "Pr(>|t|)"]
cat("P-value :", p_value, "\n")

# Decision on significance
if (p_value < 0.05) {
  cat("There is a significant relationship.\n")
} else {
  cat("There is no significant relationship.\n")
}
