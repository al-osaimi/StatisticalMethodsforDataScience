# file3.R

qualitative_measures <- function() {
  
  data(HairEyeColor)
  
  # Convert the dataset to a dataframe
  df <- as.data.frame(HairEyeColor)
  
  #calculate relative frequency table for 'Hair' column
  rel_freq <- table(df$Hair)/length(df$Hair)
  
  # Display the relative frequency
  print(rel_freq)
  
  # Bar Graph
  barplot(rel_freq*100, main = "Bar Plot of Hair Color", col = rainbow(length(rel_freq)) , xlab = "Hair Color", ylab = "Relative Frequency %")
  
  # Pie Chart
  pie(rel_freq, main = "Pie Chart of Hair Color", col = rainbow(length(rel_freq)))
  
}

quantitative_measures <- function() {
  
  data(airquality)
  
  # cumulative frequency for the Temp column
  cumulative_freq <- cumsum(table(airquality$Temp))
  plot(cumulative_freq, type="s", main="Cumulative Frequency of Temperature", xlab="Temperature", ylab="Cumulative Frequency")
  
  # Cumulative relative frequency of Temp
  cumulative_rel_freq <- cumsum(prop.table(table(airquality$Temp)))
  plot(cumulative_rel_freq, type="s", main="Cumulative Relative Frequency of Temperature", xlab="Temperature", ylab="Cumulative Relative Frequency")
  
  # Scatter plot between Temp and Wind
  plot(airquality$Temp, airquality$Wind, main="Scatter Plot of Temperature vs Wind", xlab="Temperature (F)", ylab="Wind Speed", col= 'gray', pch=19)
  
}

qualitative_measures()

quantitative_measures()
