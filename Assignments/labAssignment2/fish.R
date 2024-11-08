library(ggplot2)

fish_data <- read.csv("./Fish.csv")  

 
# Convert Species to a factor (categorical variable)
fish_data$Species <- as.factor(fish_data$Species)

# Apply multiple linear regression model
model <- lm(Weight ~ Species + Length1 + Length2 + Length3 + Height + Width, data = fish_data)

summary(model)


# Define new values
input_values <- data.frame(
  Length1 = c(28.5, 28.4),
  Length2 = c(30.7, 31),
  Length3 = c(30.7, 31),
  Height = c(36.2, 36.2),
  Width = c(14.2266, 14.2628)
)

# Init a vector to store predictions
predictions <- c()


# Loop over each species
for (species in unique(fish_data$Species)) {
   new_data <- data.frame(
    Species = factor(rep(species, nrow(input_values)), levels = levels(fish_data$Species)),
    Length1 = input_values$Length1,
    Length2 = input_values$Length2,
    Length3 = input_values$Length3,
    Height = input_values$Height,
    Width = input_values$Width
  )
  
   predicted_weights <- predict(model, newdata = new_data)
  
   predictions <- rbind(predictions, data.frame(Species = species, Predicted_Weight = predicted_weights))
}

print(predictions)

# changing row names of data frame 
rownames(predictions) <- c("Row1","Row2","Row3","Row4") 

ggplot(predictions, aes(x = Species, y = Predicted_Weight, fill = as.factor(row.names(predictions)))) +
  geom_bar(stat = "identity", position = position_dodge(width = 0.8), width = 0.7) +
  labs(title = "Predicted Weights by Species",
       x = "Species",
       y = "Predicted Weight (grams)",
       fill = "Prediction Set") +
  theme_minimal()
