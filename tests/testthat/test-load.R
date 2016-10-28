context("load")

test_that("level is sane", {
  expect_error(glwd_load(level = 4), "Level must be either 1, 2, or 3!")
})
