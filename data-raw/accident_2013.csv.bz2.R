## code to prepare `accident_2013.csv.bz2` dataset goes here
# Import data into R and use it
accident_2013_csv <- readr::read_csv("~/accident_2013.csv.bz2")
accident_2013.csv.bz2 <- accident_2013_csv
usethis::use_data(accident_2013.csv.bz2, overwrite = TRUE)
