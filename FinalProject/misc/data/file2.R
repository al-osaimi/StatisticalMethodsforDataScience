# file2.R

array_of_matrices <- function(matrix = FALSE)
  {
  
  if(matrix)
    {
        print("Create using matrix")
        # Create a matrix
        matrix1 <- matrix(c(1, 5, 12, 3, 10, 13, 4, 11, 14), nrow = 3, ncol = 3)
        matrix2 <- matrix(c(15, 4, 11, 1, 5, 12, 3, 10, 13), nrow = 3, ncol = 3)
        
        # Create the array of two 3x3 matrices
        array_3d <- array(c(matrix1 , matrix2), dim = c(3, 3, 2))
    }
  
  else
    {
      print("Create using vectors")
      # Define the two vectors
      vector1 <- c(1, 5, 12, 3, 10, 13, 4, 11, 14)
      vector2 <- c(15, 4, 11, 1, 5, 12, 3, 10, 13)
      
      # Create the array of two 3x3 matrices
      array_3d <- array(c(vector1, vector2), dim = c(3, 3, 2))
    }
      
    # Print the array 
    cat("Array of two 3x3 matrices:\n")
    print(array_3d)
    
    # Print the second row of the second matrix
    cat("\nSecond row of the second matrix:\n")
    print(array_3d[2, , 2])
    
    # Print the element in the 3rd row and 3rd column of the 1st matrix
    cat("\nElement in the 3rd row and 3rd column of the 1st matrix:\n")
    print(array_3d[3, 3, 1])

}

array_of_matrices()