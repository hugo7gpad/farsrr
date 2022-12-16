test_that("invalid year", {
  expect_error(fars_read("accident_20155.csv.bz2"))
})

test_that("incorrect file name", {
  expect_error(fars_read("acident_2014.csv.bz2"))
})

test_that("not a string", {
  expect_error(fars_read("accident_2013.csv.bz2" + 0))
})

test_that("missing argument", {
  expect_error(fars_read())
})
