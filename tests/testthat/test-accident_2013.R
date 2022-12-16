test_that("number of columns", {
  expect_equal(ncol(accident_2013.csv.bz2), as.integer(50))
})

test_that("number of rows", {
  expect_equal(nrow(accident_2013.csv.bz2), as.integer(30202))
})
