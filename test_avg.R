library(testthat)
source("avg.R")

test_that("AVG Function Test-Normal", {
  expect_equal(avg(c(1L, 2L, 3L)), 2)
  expect_equal(avg(c(-1, -2, -3)), -2)
  expect_equal(avg(c(-1, 0, 1)), 0)
  expect_equal(avg(c(0, 0.5, 1)), 0.5)
  expect_equal(avg(c(0.1, 0.5, 0.3)), 0.3, tolerance = 1e-8)
})
test_that("AVG Function Test-NA Input", {
  expect_error(avg(c("p", "q", "r", "s")))
  expect_error(avg(c(NA, NA, NA)))
})
test_that("AVG Function Test-Abnormal Input", {
  expect_warning(avg(c("1", 2L, 3L)))
  expect_warning(avg(c("0", "-1", "1")))
  expect_equal(avg(c(1, 2, NA)), NA_real_)
})
