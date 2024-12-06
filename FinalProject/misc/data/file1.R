
# file1.R
students_dataframe <- function() {
  
  # A. Create students data frame
  students <- data.frame(
    id = c(1, 2, 3, 4, 5),
    name = c("Ali", "Sara", "Sami", "Nora", "Aymen"),
    level = c("Primary", "secondary", "Bachelor", "Master", "PhD"),
    DoB = as.Date(c("2001-04-05", "2000-12-12", "1998-08-21", "1986-11-30", "1984-07-15"))
  )
  
  # B. Add a "GPA" column with random GPA 
  students$GPA <- round(runif(5, min = 0, max = 5), 2)
  
  # Display students data frame
  print(students)
  
  # Display the summary
  summary(students)

}

students_dataframe()
