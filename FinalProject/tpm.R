# Load necessary libraries
library(ggplot2)
library(caret)
library(dplyr)

# Load the dataset
data <- read.csv("C:/Users/Abdulrahman Alosaimi/Documents/StatisticalMethodsforDataScience/FinalProject/misc/file_processing_results.csv")

# Descriptive Analysis
summary_stats <- summary(data[c("File_Size", "Time_Taken")])
print(summary_stats)


file_type_counts <- table(data$File_Type)


data$File_Size_KB <- data$File_Size / 1024

ggplot(data, aes(x = File_Size_KB)) +
  geom_histogram(binwidth = 80, fill = "blue", color = "black", alpha = 0.2) +
  scale_x_continuous(
    breaks = seq(0, max(data$File_Size_KB), by = 200), 
    labels = function(x) paste0(x, " KB")
  ) +
  labs(
    title = "Distribution of File Sizes (KB)",
    x = "File Size (KB)",
    y = "Frequency"
  ) +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 0, hjust = 1) # Align labels to the left
  )

ggplot(data = as.data.frame(file_type_counts), aes(x = Var1, y = Freq)) +
  geom_bar(stat = "identity") +
  scale_fill_manual(values = colors) +
  labs(title = "File Type Frequency", x = "File Type", y = "Frequency") +
  theme_minimal()


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
