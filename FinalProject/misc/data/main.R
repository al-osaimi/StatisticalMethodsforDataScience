# Source the four files containing functions

  while (TRUE) {
    cat('\014')
    cat('\014')
    var <- readline(prompt = "Enter the number of question (1 to 4): or 'q' to quit:")
    
    if (tolower(var) == "q") {
      cat("Exiting the application.\n")
      stop()
    }
    
    if (is.na(var) || var < 1 || var > 4) {
      print("Please enter a valid number between 1 and 4")
    }
    
    if(var == 1)
      {
        source("file1.R")
        # students_dataframe()
      }
    if(var == 2)
      {
        source("file2.R")
        # array_of_matrices(TRUE)
      }
    
    if(var == 3)
      {
        source("file3.R")
        # qualitative_measures()
        # quantitative_measures()
      }
    
    if(var == 4)
    {
      source("file4.R")
      # tiktok_google_reviews("md roni")
    }
  }
 

