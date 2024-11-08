# file4.R

tiktok_google_reviews <- function(user_name = "md roni") {
  
  #A. Read the CSV.
  tiktok_reviews <- read.csv(".\\data\\tiktok_google_play_reviews.csv")
  
  print("B. Print out the summary of the dataset.")
  summary(tiktok_reviews)
  
  print("C. Identify the structure of the dataset (types of variables).")
  str(tiktok_reviews)

  print("D. Print out the first 10 records.")
  head(tiktok_reviews,10)
 
   print("D. Print out the first 10 records (printing issue may accurs with some terminal).")
   for (i in 1:10) {
      print(tiktok_reviews[i,])
   }
  
  print("E. Print out the content (review) and score for given user name which is (md roni).")
  md_roni_data <- subset(tiktok_reviews, userName == "md roni")
  
  # Print content (review) and score
  md_roni_data[, c("content", "score")]

  print(md_roni_data)
}

tiktok_google_reviews()

 