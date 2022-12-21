## code to prepare `accident_2015.csv.bz2` dataset goes here
# Import data into R and use it
accident_2015_csv <- readr::read_csv("~/.My_R_files/accident_2015.csv.bz2")
readr::write_csv(accident_2015_csv, "inst/extdata/accident_2015.csv.bz2")
