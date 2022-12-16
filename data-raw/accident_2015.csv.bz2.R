## code to prepare `accident_2015.csv.bz2` dataset goes here
# Import data into R and use it
accident_2015_csv <- readr::read_csv("~/accident_2015.csv.bz2")
accident_2015.csv.bz2 <- accident_2015_csv
usethis::use_data(accident_2015.csv.bz2, overwrite = TRUE)
