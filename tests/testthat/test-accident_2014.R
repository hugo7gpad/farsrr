test_that("number of columns", {
  expect_equal(ncol(accident_2014.csv.bz2), as.integer(50))
})

test_that("number of rows", {
  expect_equal(nrow(accident_2014.csv.bz2), as.integer(30056))
})
