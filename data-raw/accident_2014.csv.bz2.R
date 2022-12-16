## code to prepare `accident_2014.csv.bz2` dataset goes here
# Import data into R and use it
accident_2014_csv <- readr::read_csv("~/accident_2014.csv.bz2")
accident_2014.csv.bz2 <- accident_2014_csv
usethis::use_data(accident_2014.csv.bz2, overwrite = TRUE)
