test_that("exact name", {
  expect_equal(make_filename(1), "accident_1.csv.bz2")
})


test_that("number name", {
  expect_warning(make_filename("two"))
})

test_that("integer range", {
  expect_warning(make_filename(2147483648))
})

test_that("missing argument", {
  expect_error(make_filename())
})

test_that("too many argument", {
  expect_error(make_filename(2013, ))
})
