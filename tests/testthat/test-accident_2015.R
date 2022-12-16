test_that("number of columns", {
  expect_equal(ncol(accident_2015.csv.bz2), as.integer(52))
})

test_that("number of rows", {
  expect_equal(nrow(accident_2015.csv.bz2), as.integer(32166))
})
