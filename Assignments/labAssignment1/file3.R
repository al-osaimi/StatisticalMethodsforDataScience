# file3.R
library(ggplot2)
library(dplyr)

qualitative_measures <- function() {
  
  data(HairEyeColor)
  
  hair_eye_df <- as.data.frame(HairEyeColor)
  
  relative_freq <- hair_eye_df %>%
    group_by(Hair) %>%
    summarise(Frequency = sum(Freq)) %>%
    mutate(RelativeFrequency = Frequency / sum(Frequency))
  
  print(relative_freq)
  
  # Bar Graph
  library(ggplot2)
  ggplot(relative_freq, aes(x = Hair, y = RelativeFrequency, fill = Hair)) +
    geom_bar(stat = "identity") +
    labs(title = "Bar Graph of Hair Color Relative Frequency", x = "Hair Color", y = "Relative Frequency") +
    theme_minimal()
  
  # Pie Chart
  pie(relative_freq$RelativeFrequency,
      labels = paste(relative_freq$Hair, "(", round(relative_freq$RelativeFrequency * 100, 1), "%)"),
      main = "Pie Chart of Hair Color Relative Frequency",
      col = rainbow(length(relative_freq$Hair)))
  
}

quantitative_measures <- function() {
  
  data("airquality")
  
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
