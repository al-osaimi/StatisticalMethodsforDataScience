# Load necessary libraries
library(ggplot2)
library(caret)

# Load the dataset
data <- read.csv(".\\misc\\file_processing_results.csv")

# Descriptive Analysis
summary_stats <- summary(data[c("File_Size", "Time_Taken")])
print(summary_stats)

# Scatterplot to visualize relationship between File_Size and Time_Taken
ggplot(data, aes(x = File_Size, y = Time_Taken)) +
  geom_point(color = "blue", alpha = 0.7) +
  geom_smooth(method = "lm", color = "red", se = FALSE) +
  labs(title = "Scatterplot of File Size vs Time Taken",
       x = "File Size (bytes)",
       y = "Time Taken (seconds)") +
  theme_minimal()

file_type_counts <- table(data$File_Type)
file_type_df <- as.data.frame(file_type_counts)

ggplot(file_type_df, aes(x = "", y = Freq, fill = Var1)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  labs(title = "File Type Distribution",
       fill = "File Type") +
  theme_void()

ggplot(data, aes(x = File_Type, y = File_Size, fill = File_Type)) +
  geom_bar(stat = "identity") +
  labs(title = "File Size vs File Type",
       x = "File Type",
       y = "File Size (bytes)") +
  theme_minimal() +
  theme(legend.position = "none")


# Correlation between File_Size and Time_Taken
correlation <- cor(data$File_Size, data$Time_Taken)
cat("Correlation between File Size and Time Taken:", correlation, "\n")

# Split data into training and testing sets
set.seed(42)
trainIndex <- createDataPartition(data$Time_Taken, p = 0.7, list = FALSE)
train_data <- data[trainIndex, ]
test_data <- data[-trainIndex, ]

# Build a linear regression model
model <- lm(Time_Taken ~ File_Size, data = train_data)
summary(model)

# Make predictions on the test set
predictions <- predict(model, test_data)

# Evaluate the model
r2 <- summary(model)$r.squared
cat("R-squared (R²):", r2, "\n")

# Visualization of actual vs predicted values
ggplot(test_data, aes(x = Time_Taken, y = predictions)) +
  geom_point(color = "green", alpha = 0.7) +
  geom_abline(intercept = 0, slope = 1, color = "red", linetype = "dashed") +
  labs(title = "Actual vs Predicted Values",
       x = "Actual Time Taken",
       y = "Predicted Time Taken") +
  theme_minimal()

file_size_1GB <- data.frame(File_Size = 1073741824) # 1 GB in bytes
predicted_time_1GB <- predict(model, file_size_1GB)

cat("Predicted Time Taken for a 1 GB file:", predicted_time_1GB, "seconds\n")
