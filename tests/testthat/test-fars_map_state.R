test_that("invalid state number", {
  expect_error(fars_map_state(100, 2015))
})

test_that("no file", {
  expect_error(fars_map_state(c(10, 2050)))
})
